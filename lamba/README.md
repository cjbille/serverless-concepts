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
- Log statements:
```python
import os
import logging

logger = logging.getLogger()
logger.setLevel(logging.INFO)

def lambda_handler(event, context):
    logger.info(os.environ)
    logger.info(event)
```
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
