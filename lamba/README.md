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
- [Fundamentals](https://serverlessland.com/content/service/lambda/guides/aws-lambda-fundamentals/what-is-aws-lambda)
- [Operator Guide](https://serverlessland.com/content/service/lambda/guides/aws-lambda-operator-guide/intro)
- [Cost Optimization](https://serverlessland.com/content/service/lambda/guides/cost-optimization/1-fine-tuning)
- [Lambda Docs](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html)
- [Best Practices](https://docs.aws.amazon.com/lambda/latest/dg/best-practices.html)
- [Blog](https://aws.amazon.com/blogs/compute/category/compute/aws-lambda/)
- [Step Functions](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html)
