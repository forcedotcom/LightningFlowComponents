Different installation approaches can be used:

## Installing with SFDX

Starting in the root of one of the SFDX projects (either the screen component one or the actions component one, and not the same as the root of the Github parent project):

- if you want to push to a scratch org, run:
  ```
  sfdx force:source:push
  ```
- if you want to deploy to a regular org:
  1. create a metadata version of the project:

     1. make a tempdir to hold the metadata:
        ```
        mkdir mdapioutput
        ```
     2. convert the source to metadata:
        ```
        sfdx force:source:convert -d mdapioutput/
        ```

  2. deploy to your org:
      ```
      sfdx force:mdapi:deploy -d mdapioutput/ -u MyOrgAlias -w 100
      ```

Note: if you only want to try deploying a subset of the components, create a package.xml specifying the specific ones to use.
Note: for great tutorials on all of this, see (https://trailhead.salesforce.com/trails/sfdx_get_started)

## Using Developer Console
1. Select a component from either the Flow Screen Components page or the Flow Action Components page.
2. Drill down into its aura folder and make a note of the various subcomponents involved.
2. In Developer Console, create copies of the subcomponents.

## Copy/Paste Install for Non-Developers
Click-installable packages are maintained by the community at this [location](https://unofficialsf.com/flow-resources/). Note that community content is not provided by or supported by Salesforce.
