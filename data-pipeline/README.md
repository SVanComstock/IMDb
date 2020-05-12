## Setup

1. [Configure your GitHub account to use SSH](https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh)
2. Install Docker (if necessary)
3. Clone the LegalShield/data-engineering GitHub repo:
    
    ```
    ubuntu@ls-drone-0:/home/ubuntu/code
    ->> git clone git@github.com:LegalShield/data-engineering.git
    Cloning into 'data-engineering'...
    remote: Enumerating objects: 7, done.
    remote: Counting objects: 100% (7/7), done.
    remote: Compressing objects: 100% (6/6), done.
    remote: Total 7 (delta 0), reused 7 (delta 0), pack-reused 0
    Receiving objects: 100% (7/7), done.
    ```

4. Navigate to the repo on your local machine and compose the docker image. This will spin up all the docker containers necessary for to run your local development environment. The file `docker-compose.yml` defines the services, networks, and volumes you are spinnig up:
    
    ```
    ubuntu@ls-drone-0:/home/ubuntu/code
    ->> cd data-engineering/data-pipeline/

    ubuntu@ls-drone-0:/home/ubuntu/code/data-engineering/data-pipeline (master)
    ->> docker-compose up
    ....
    lots of output here
    ```
   This initiates your local development environment. Once the messages indicate "NiFi has started. The UI is available at the following URLs" you can visit the URL in your browser and begin developing. The default URL is `http://localhost:8080/nifi/`. To shut down the docker containers when you are finished developing, simply enter `ctrl + c` in the command line terminal that is running docker-compose.

5. While all that is downloading go read about [Flow-based programming](https://en.wikipedia.org/wiki/Flow-based_programming)
and skim these [NiFi resources](https://github.com/jfrazee/awesome-nifi)

6. Once that's up and running we need to get some sample data. In another terminal:
    
    ```
    git clone git@github.com:LegalShield/adonis.git

    psql -h 127.0.0.1 -p 15432 -U admin adonis_development < adonis/db/structure.sql 

    pg_dump -Fc --no-acl --no-owner -n public -h adonis-sandbox-us.cluster-cgj12mc2lenh.us-east-2.rds.amazonaws.com -p 15432 -U adonis -T sales_org_geneology_temp -T event_notifications -T publication_events -T publication_routes -T broadcast_events -T ar_internal_metadata -T events -T phone_verification_codes -T publication_routes_webhook_events -T publication_routes_subjects -T schema_migrations -T webhook_events -T notifications adonis_sandbox_us > adonis_sandbox_us.dump

    pg_restore -c --verbose --no-acl --no-owner -n public -h localhost -p 15432 -U admin -d adonis_development adonis_sandbox_us.dump
    ```

   Your local password is "password" for the `psql` and `pg_restore` commands.  For the `pg_dump` command, ask a co-worker who has done this for the Sandbox password.

## Working with your first flow

Drag a Process Group into your workspace
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030300.jpg)
Name it 'sample' and click the import button
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030309.jpg)
Import will connect to the registry.  The registy is a central hub for versions of flows.

Select the first version of the 'sample' flow in the 'prototype' bucket
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030337.jpg)
You now have a local copy of the flow.  The green check in the upper left indicates your version matches the upstream version in the registry

Click into the flow
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030350.jpg)
This is the Basic flow.  The triangular symbols on the processors indicate there's some kind of misconfiguration
Let's fix that...
Click the hamburger menu in the upper right
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030366.jpg)
and select parameter contexts
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030374.jpg)
The prototype parameter context already exists
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030384.jpg)
But sensitive values like passwords and keys are not stored in the registry
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030393.jpg)
Click the edit icon and change the `ADONIS_PG_PASSWORD` to 'password'
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030407.jpg)
get an AWS Key pair for yourself from DevOps in #devops on slack
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030490.jpg)
and apply the changes
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030501.jpg)
PutS3 object is now ready to go (but stopped hence, the red square)

right-click ExecuteSQLRecord and click configure
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030521.jpg)
Database Connection Pooling Service is your connection to the DB
This allows many processors to share the same DB connection
Adonis PG is the name of this connection and it is currently configured to point to the local docker instance of PG
Click the arrow to the left
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030528.jpg)
This shows both of the Controllers
The Adonsi DB Connection Pool and the CSV Writer (in our flow DB records are converted to CSV)
Click the lightning-bolt icon for both to enable
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030539.jpg)

![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030548.jpg)
Now both processors are ready to go
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030571.jpg)
Right click in the workspace and then click start
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030590.jpg)
The green arrows mean the processes have started
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030596.jpg)
The UI only updates every 30 seconds so you'll have to wait to see something
The red square is an error notification
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030604.jpg)
Hover over it to get details
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030621.jpg)
First let's take a look at how this is all getting kicked off
right click ExecuteSQLRecord and click configure
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030663.jpg)
Under the scheduling tab you can see that this processor is set to run every 600 seconds
Click OK
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030680.jpg)
Now we can look at the PutS3Object 
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030706.jpg)
it's timer is set to 0 so it'll pull work off the incoming success connection as fast as it happens
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030714.jpg)
If we click over to properties we can see the threshold for multi-part uploads is 5GB
Since the error messages we saw were related to multi-part permissions, let's make our CSV records smaller
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030780.jpg)
Go back to configuring ExecuteSQLRecord
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030799.jpg)
Stop & Configure is convenience from here (upper right)
you could also stop the processor from the top level workspace before hitting configure
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030813.jpg)
Max Rows Per Flow File is set to 0
hovering over the information icon gives us the documentation
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030859.jpg)
we just click the 0 to change
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030878.jpg)
Let's just say 100
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030886.jpg)
Click Apply
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588030895.jpg)
We can empty out all the previously failed flow files by right-clicking the failed connection
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588031229.jpg)
restart it all again
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588031290.jpg)
We think that has fixed the issue or at least one issue
We click NifiFlow in the lower left corner to take us up a level
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588031310.jpg)
The Grey Splat on our Sample flow means we are out of sync with the Registry
Right click and click version
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588031322.jpg)
Let's commit our changes
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588031334.jpg)
Add a descriptive commit message
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588031432.jpg)
And the Green Check means we are now up to date with the Registry
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588031445.jpg)

## On Testing

First I want to say that I'm currently approaching this heavily influenced by

### Design by Contract
- https://en.wikipedia.org/wiki/Design_by_contract
- https://www.eiffel.org/

### Generative testing

- https://en.wikipedia.org/wiki/QuickCheck
- https://medium.com/geckoboard-under-the-hood/how-generative-testing-changed-the-way-we-qa-geckoboard-b4a48a193449
- https://techbeacon.com/app-dev-testing/how-make-your-code-bulletproof-property-testing
 
Now what I'm about to display is nowhere close to those ideals but, I want you 
to get where this is intending to go

An overview
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588886604.jpg)
This is the real generator it's listening for events from github, storing them in S3 and calling the logic
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588886161.jpg)
This is the Test Generator I grabbed these examples directly from S3 and can now
inject them into the flow at will
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588886630.jpg)
It's important to set the frequency at a managable level otherwise GenerateFlowFile
will fill your pipeline as fast as it can overwhelming your other processors
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588886643.jpg)
I add an indicator property 'shoulda' with either a true or false value.
This indicates that this is a test record *and* where it should end up.
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588886719.jpg)
This is our processor logic.  We're looking for only commits to develop that
mention structure.sql.  I hesitate to call this a `precondition` group but that's
where the inspiration comes from
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588886686.jpg)
Failures are bucketed into
- expected to fail
- exected not to fail
- unexpected (not test data)
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588886749.jpg)
Successes are similarly bucketed but non-test data is setup to route to an output
![](https://general-adonis-development.s3.us-east-2.amazonaws.com/screenshots/screenshot-1588886762.jpg)

Notice that in all these cases my ProcessorGroups are using the same success/failure
conventions you see in most native Processors.
