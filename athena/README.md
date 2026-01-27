# AWS Athena
> Quick reference for concepts and best practices for AWS Athena

## What is it?
Athena is an interactive query service provided by AWS. Can use SQL to manage your data.
It is also serverless. Athena decides how much computing is needed.

## Features
- Supports various data types:
  - structured
  - semi-structured
  - unstructured
- Supports a variety of data formats:
  - csv
  - json
  - parquet
- Consolidate data from multiple sources using AWS Glue
- Can also link Athena to BI tools, and JDBC connections like MySQL Workbench

## When to use it?
When you would you use Athena over say Amazon's RDS service? Here are some questions to ask:
- Is my data optimized, so I don't have to perform additional transformations?
- Is my query optimized?
- Do I need a data manipulation language (DML) interface so I can perform actions like inserts, updates, and deletes?
- Again, it is a _query_ service, not a DML
- Do I need indexes?
- Not a standalone service → Athena + S3

## Integrations
- Usually works with AWS Glue
- AWS Glue is a serverless data integration service built on Apache Spark
- Makes it easy to discover data
- ETL - extract, transform, load
- Schema inference of data via data crawlers on structured and semi-structured data
- Glue can identify sensitive data as well
- Pay as you go
