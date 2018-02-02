# Simple AWS webservice creation README 

Intro section

## Table of Contents

1. [Dependencies](#dependencies)
1. [Implementation](#implementation)
1. [Usage](#usage)
1. [Testing](#Testing)
1. [LoadBalance](#LoadBalance)

## Dependencies

Need to have a AWS account (if not you need to create one).
This account needs to have at least one EC2 KeyPair in order to be able to create a new stack.

**[Back to top](#table-of-contents)**

## Installation

Login to your AWS account and go to the CloudFormation section.
Services > on Management Tool section, CloudFormation

Download the template (Template.json file) provided here.
Click on Create Stack and on section "Chose a template"  select "Upload a template for Amazon S3" and chose the template file downloaded above then click next.

Give a name to the stack (Ex: Myfirststack)
Connection location will allow to define what ip or class is able to access the server over 22 and 80 ports, by default is set for everybody.
ImageId is the OS image that will be used, is predifined to a specific one.
Select the key name that will be used to allow access to the server over ssh.
Select the operatig system type to be used, default is set to redhat.
SecurityGroupPortSSH is port that will be set have access on SSH.
SecurityGroupPortHTTP is port that will be set have access on HTTP.

After click on Next we need to define a name key.
Enter Name into the Key field  and a name (ex: FirstServer) into the Value field.
And click Next to create the stack.

**[Back to top](#table-of-contents)**

## Usage

In order to create the webservice (using nginx) we need to conect to the server and install/configure the same.
Because I have used the default OS in teh option I have prepared the script for RedHat Linux. (config.sh  file)

 ssh -i {key_name.pem} ec2-user@{instance_name}

 vi config.sh

 Paste the content of the file and save.

 chmod 700 config.sh

 ./config.sh

Once the update and instalation of nginx is done the webserver will be available every time after the server is restarted.

**[Back to top](#table-of-contents)**

## Testing

To test the access to webserver we go to Instances section and select the server we have just created.
take the Public DNS (IPv4) name and use the same on the browser to check if the version file is available.

http://{Public DNS (IPv4)}/version.txt


## LoadBalance

**[Back to top](#table-of-contents)**

## Demo


**[Back to top](#table-of-contents)**
