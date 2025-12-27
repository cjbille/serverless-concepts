# AWS Lambda
> Quick reference for concepts and best practices for AWS Lambda functions

## Best Practices
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

## More on Lambda
- https://serverlessland.com/content/service/lambda/guides/aws-lambda-fundamentals/what-is-aws-lambda
- https://serverlessland.com/content/service/lambda/guides/aws-lambda-operator-guide/intro
- https://docs.aws.amazon.com/lambda/latest/dg/welcome.html
- https://docs.aws.amazon.com/lambda/latest/dg/best-practices.html
- https://aws.amazon.com/blogs/compute/category/compute/aws-lambda/

## Tech Talks
- https://aws.amazon.com/lambda/resources/webinars-and-talks/
