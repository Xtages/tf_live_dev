# tf_live_dev
AWS infrastructure for our Dev account

# Execution order
1. VPC
2. jumphost
3. SES
4. Cognito
5. CodeBuild
6. S3
7. iam-app-perms
8. acm
9. ecs-customer-prod
10. ecs-customer-staging
11. ecr
12. sns-sqs
13. eventbridge

## ACM
It's using Route53 zone that is pointing to `xtages.xyz`
