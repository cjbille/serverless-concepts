# AWS Lambda
> Quick reference for concepts and best practices for AWS Lambda functions

## Concept Guides
- https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtime-environment.html
- https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html
- https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html

## Best Practices
- https://docs.aws.amazon.com/lambda/latest/dg/best-practices.html
- Separate your core business logic from the handler event
- Write modular functions
- Treat functions as stateless
- Only include what you need
- Log statements: <br><img width="434" height="239" alt="image" src="https://github-production-user-asset-6210df.s3.amazonaws.com/102840549/514917760-f38dbe7d-7685-428e-8adc-f7b16981ec8f.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20251201%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20251201T013545Z&X-Amz-Expires=300&X-Amz-Signature=b18e1262d281cf3e375eed9056f39f08711da42eea604d75918126000abe7e99&X-Amz-SignedHeaders=host" />
- Use return coding
- Provide env vars
- Add secret and reference data
- Avoid recursive code
- Gather metrics with CloudWatch
- Reuse execution context

## Event Drive Architectures
- https://serverlessland.com/event-driven-architecture/intro

## Resources
- https://serverlessland.com
- https://aws.amazon.com/serverless/
- https://docs.aws.amazon.com/lambda/latest/dg/welcome.html
- https://d1.awsstatic.com/whitepapers/AWS_Serverless_Multi-Tier_Architectures.pdf
- https://aws.amazon.com/blogs/compute/category/compute/aws-lambda/

## Tech Talks
- https://aws.amazon.com/lambda/resources/webinars-and-talks/
