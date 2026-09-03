# AWS SQS
> Quick reference for concepts and best practices for AWS SQS

## What is it?
Amazon Simple Queue Service (Amazon SQS) offers a secure, durable,
and available hosted queue that lets you integrate and decouple
distributed software systems and components

## Overview
- Unlimited throughput
- Unlimited messages
- Retention
    - Default: 4 days
    - Max: 14 days
- <10ms latency
- Long poll up to 20s
- Visibility timeout
    - Default: 30s
    - Max: 12h
- 256KB message size limit
- At least once delivery
- Not real time
- Not ordered by default
- FIFO option
- Messages are deleted after being consumed
- Durable

## Resources
- [SQS Developer Guide](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html)