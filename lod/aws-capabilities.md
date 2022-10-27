---
title: "Amazon Web Services API Capabilities"
description: "A list of supported Amazon Web Services (AWS) APIs. Each service name has a link to the AWS API implementation documentation. Below the table is a brief description for each service name."
isPublished: true
---

# Skillable Studio AWS API Capabilities 

Below is a list of Amazon Web Services (AWS) APIs. Each service name has a link to the AWS API implementation documentation.

If you need support for an AWS service that is not listed as supported, please submit a detailed request [here](https://feedback.skillable.com/).

|Service Name|Service Prefix|supported|Considerations|
|:---|:---|:---|:---|
|[Alexa for Business](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_alexaforbusiness.html)|A4B|supported||
|[Amazon API Gateway](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonapigateway.html)|execute-api|supported||
|[Amazon Athena](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonathena.html)|athena|supported||
|[Amazon Cloud Directory](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_alexaforbusiness.html)|clouddirectory|supported||
|[Amazon CloudSearch](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudsearch.html)|cloudsearch|supported||
|[Amazon CloudWatch](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatch.html)|cloudwatch|supported||
|[Amazon CloudWatch Events](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchevents.html)|events|supported||
|[Amazon CloudWatch Logs](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchlogs.html)|logs|supported||
|[Amazon CloudFront](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudfront.html)|cloudfront|supported||
|[Amazon CloudShell](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awscloudshell.html)|cloudshell|supported||
|[Amazon Cognito User Pools](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitouserpools.html)|cognito-idp|supported||
|[Amazon Data Lifecycle Manager](https://docs.aws.amazon.com/dlm/latest/APIReference/Welcome.html)|N/A|supported|
|[Amazon DynamoDB](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodb.html)|dynamodb|supported||
|[Amazon DynamoDB Accelerator (DAX)](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazondynamodbacceleratordax.html)|dax|supported||
[Amazon EC2](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_identityandaccessmanagement.html)|ec2|supported|Whenever a running lab profile is saved from the hamburger menu, the EC2 resources in AWS are suspended and do not continue to be billed. When the lab is resumed, billing will resume, the **EC2 instance will reboot** and then the EC2 resource will be available for use in the lab. |
|[Amazon EC2 Container Registry](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2containerregistry.html)|ecr|supported||
|[Amazon EC2 Container Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2containerservice.html)|ecs|supported||
[Amazon Elastic Container Service for Kubernetes](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonelasticcontainerserviceforkubernetes.html)|eks|supported||
|[Amazon Elastic File System](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonelasticfilesystem.html)|elasticfilesystem|supported||
|[Amazon Kinesis](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesis.html)|kinesis|supported||
|[Amazon Kinesis Analytics](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesisanalytics.html)|kinesisanalytics|supported||
|[Amazon Kinesis Firehose](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesisfirehose.html)|firehose|supported||
|[Amazon Kinesis Video Streams](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonkinesisvideostreams.html)|kinesisvideo|supported||
|[Amazon Machine Learning](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonmachinelearning.html)|machinelearning|supported||
|[Amazon RDS](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonrds.html)|rds|supported||
|[Amazon Redshift](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonredshift.html)|redshift|supported||
|[Amazon Route 53](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonroute53.html)|route53|supported||
|[Amazon SimpleDB](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsimpledb.html)|sdb|supported||
|[Amazon SNS](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsns.html)|sns|supported|If a lab user creates an SNS subscription, but fails to verify it, the SNS subscription will be left in a pending state. Pending SNS subscriptions cannot be removed from an AWS account, thus may appear as residue in subsequent lab instances. Pending SNS subscriptions are automatically removed after 3 days.||
|[Amazon Simple Systems Manager](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)|ssm|supported||
|[Amazon SQS](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsqs.html)|sqs|supported||
|[AWS AppSync](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsappsync.html)|appsync|supported||
|[AWS Backup](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsbackup.html)|backup|supported||
|[AWS Cloud9](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscloud9.html)|N/A|supported||
|[AWS CloudFormation](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscloudformation.html)|cloudformation|supported||
|[AWS CloudTrail](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscloudtrail.html)|cloudtrail|supported||
|[AWS Config](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsconfig.html)|config|supported||
|[AWS IoT Analytics](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsiotanalytics.html)|iotanalytics|supported||
|[AWS Lambda](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html)|lambda|supported||
|[AWS Key Management Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awskeymanagementservice.html)|N/A|supported||
|[AWS OpsWorks](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsopsworks.html)|opsworks-cm|supported||
|[AWS OpsWorks Configuration Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsopsworksconfigurationmanagement.html)|N/A|supported||
|[AWS Resource Groups](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsresourcegroups.html)|resource-groups|supported||
[AWS Resource Group Tagging](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonresourcegrouptaggingapi.html)|tag|supported||
[Amazon S3](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html)|s3|supported||
[Amazon S3 Access points](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html#amazons3-actions-as-permissions)|s3|supported||
|[AWS Secrets Manager](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awssecretsmanager.html)|secretsmanager|supported||
|[AWS Step Functions](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsstepfunctions.html)|states|supported||
|[AWS WAF Classic](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awswaf.html)|waf|supported||
|[AWS WAF v2](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awswafv2.html)|wafv2|supported||
|[AWS WAF Regional](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awswafregional.html)|waf-regional|supported||
|[Auto Scaling Plans](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsbatch.html)|autoscaling-plans|supported||
|[Elastic Load Balancing](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_elasticloadbalancing.html)|elasticloadbalancing|supported||
|[Elastic Load Balancing V2](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_elasticloadbalancingv2.html)|elasticloadbalancing|supported||
|[EventBridge](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridge.html)|events|supported||
|[EventBridge Schema](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazoneventbridgeschemas.html)|schemas|supported||
|[Identity And Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_identityandaccessmanagement.html)|iam|supported||
|[Manage Amazon API Gateway](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_manageamazonapigateway.html)|apigateway|supported||
|[Target Groups](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html)|N/A|supported||
|[Tag Editor](https://docs.aws.amazon.com/ARG/latest/userguide/tag-editor.html)|N/A|supported||
|[Virtual Private Cloud](https://aws.amazon.com/vpc/?hp=tile&so-exp=below)|ec2|supported||
|[Amazon AppStream 2.0](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonappstream2.0.html)|appstream|No customer requests||
|[Amazon Chime](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonchime.html)|chime|No customer requests||
|[Amazon Cognito Identity](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitoidentity.html)|cognito-identity|No customer requests||
|[Amazon Cognito Sync](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncognitosync.html)|cognito-sync|No customer requests||
|[Amazon Comprehend](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncomprehend.html)|comprehend|No customer requests||
|[Amazon Connect](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonconnect.html)|connect|No customer requests||
|[Amazon Elastic MapReduce](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonelasticmapreduce.html)|elasticmapreduce|No customer requests||
|[Amazon Elastic Transcoder](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonelastictranscoder.html)|elastictranscoder|No customer requests||
|[Amazon ElastiCache](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonelastictranscoder.html)|elasticache|No customer requests||
|[Amazon Elasticsearch Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonelasticsearchservice.html)|es|No customer requests||
|[Amazon FreeRTOS](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonfreertos.html)|freertos|No customer requests||
|[Amazon GameLift](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazongamelift.html)|gamelift|No customer requests||
|[Amazon Glacier](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonglacier.html)|glacier|No customer requests||
|[Amazon GuardDuty](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonguardduty.html)|guardduty|No customer requests||
|[Amazon Inspector](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoninspector.html)|inspector|No customer requests||
|[Amazon MQ](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonmq.html)|mq|No customer requests||
|[Amazon Neptune](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonneptune.html)|neptune-db|No customer requests||
|[Amazon Pinpoint](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonpinpoint.html)|mobiletargeting|No customer requests||
|[Amazon Polly](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonpolly.html)|polly|No customer requests||
|[Amazon Lex](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonlex.html)|lex|No customer requests||
|[Amazon Lightsail](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonlightsail.html)|lightsail|No customer requests||
|[Amazon Rekognition](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonrekognition.html)|rekognition|No customer requests||
|[Amazon Route 53 Auto Naming](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)|servicediscovery|No customer requests||
|[Amazon Route53 Domains](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonroute53domains.html)|route53domains|No customer requests||
|[Amazon SageMaker](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsagemaker.html)|sagemaker|No customer requests||
|[Amazon SES](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonses.html)|ses|No customer requests||
|[Amazon Simple Workflow Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsimpleworkflowservice.html)|swf|No customer requests||
|[Amazon Sumerian](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonsumerian.html)|sumerian|No customer requests||
|[Amazon Transcribe](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazontranscribe.html)|transcribe|No customer requests||
|[Amazon Translate](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazontranslate.html)|translate|No customer requests||
|[Amazon WorkDocs](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonworkdocs.html)|workdocs|No customer requests||
|[Amazon WorkMail](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonworkmail.html)|workmail|No customer requests||
|[Amazon WorkSpaces](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonworkspaces.html)|workspaces|No customer requests||
|[Amazon WorkSpaces Application Manager](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonworkspacesapplicationmanager.html)|N/A|No customer requests||
|[AWS Artifact](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsartifact.html)|artifact|No customer requests||
|[AWS Budget Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsbudgetservice.html)|budgets|No customer requests||
|[AWS Certificate Manager](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscertificatemanager.html)|acm|No customer requests||
|[AWS Certificate Manager Private Certificate Authority](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscertificatemanagerprivatecertificateauthority.html)|acm-pca|No customer requests||
|[AWS CloudHSM](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscloudhsm.html)|cloudhsm|No customer requests||
|[AWS CodeBuild](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodebuild.html)|codebuild|No customer requests||
|[AWS CodeCommit](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodecommit.html)|codecommit|No customer requests||
|[AWS CodeDeploy](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodedeploy.html)|codedeploy|No customer requests||
|[AWS CodePipeline](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodepipeline.html)|codepipeline|No customer requests||
|[AWS Code Signing for Amazon FreeRTOS](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodesigningforamazonfreertos.html)|signer|No customer requests||
|[AWS CodeStar](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscodestar.html)|codestar|No customer requests||
|[AWS Cost and Usage Report](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscostandusagereport.html)|cur|No customer requests||
|[AWS Cost Explorer Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awscostexplorerservice.html)|N/A|No customer requests||
|[AWS Database Migration Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsdatabasemigrationservice.html)|dms|No customer requests||
|[AWS Device Farm](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsdevicefarm.html)|devicefarm|No customer requests||
|[AWS Direct Connect](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsdirectconnect.html)|directconnect|No customer requests||
|[AWS Directory Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsdirectoryservice.html)|ds|No customer requests||
|[AWS Elastic Beanstalk](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awselasticbeanstalk.html)|elasticbeanstalk|supported||
|[AWS Elemental MediaConvert](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awselementalmediaconvert.html)|mediaconvert|No customer requests||
|[AWS Elemental MediaLive](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awselementalmedialive.html)|medialive|No customer requests||
|[AWS Elemental MediaPackage](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awselementalmediapackage.html)|mediapackage|No customer requests||
|[AWS Elemental MediaStore](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awselementalmediastore.html)|mediastore|No customer requests||
|[AWS Firewall Manager](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsfirewallmanager.html)|fms|No customer requests||
|[AWS Glue](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsglue.html)|glue|No customer requests||
|[AWS Greengrass](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsgreengrass.html)|greengrass|No customer requests||
|[AWS Import Export Disk Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsimportexportdiskservice.html)|importexport|No customer requests||
|[AWS IoT](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsiot.html)|iot|No customer requests||
|[AWS IoT 1-Click](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsiot1-click.html)|iot1click|No customer requests||
|[AWS Marketplace](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsmarketplace.html)|aws-marketplace-management|No customer requests||
|[AWS Marketplace Management Portal](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsmarketplacemanagementportal.html)|aws-marketplace|No customer requests||
|[AWS Marketplace Metering Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsmarketplacemeteringservice.html)|N/A|No customer requests||
|[AWS Migration Hub](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsmigrationhub.html)|N/A|No customer requests||
|[AWS Mobile Hub](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsmobilehub.html)|N/A|No customer requests||
|[AWS Organizations](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsorganizations.html)|N/A|No customer requests||
|[AWS Performance Insights](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsperformanceinsights.html)|pi|No customer requests||
|[AWS Price List](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awspricelist.html)|pricing|No customer requests||
|[AWS Security Token Service](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awssecuritytokenservice.html)|sts|No customer requests||
|[AWS Serverless Application Repository](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsserverlessapplicationrepository.html)|serverlessrepo|No customer requests||
|[AWS Service Catalog](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsservicecatalog.html)|servicecatalog|No customer requests||
|[AWS Shield](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsshield.html)|shield|No customer requests||
|[Amazon Storage Gateway](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonstoragegateway.html)|storagegateway|No customer requests||
|[AWS Support](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awssupport.html)|support|No customer requests||
|[AWS Trusted Advisor](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awstrustedadvisor.html)|trustedadvisor|No customer requests||
|[AWS XRay](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsxray.html)|xray|No customer requests||
|[Auto Scaling](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awsautoscaling.html)|autoscaling|No customer requests||
|[Data Pipeline](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_datapipeline.html)|datapipeline|No customer requests||
|[Single Sign-On](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)|sso|No customer requests||
|[TensorFlow on AWS](https://aws.amazon.com/tensorflow/?nc2=h_m1)|N/A|No customer requests||