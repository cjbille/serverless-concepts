# AWS DynamoDB
> Quick reference for concepts and best practices for AWS DynamoDB

## Prerequisites for Local Testing
- Verify at least Java 17 or later is installed
- Download DynamoDB locally following instructions [here](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DynamoDBLocal.DownloadingAndRunning.html)
- Make .aws dir in home: `mkdir ~/.aws`
- Add credentials file to `~/.aws` dir:
```
cat << EOF > ~/.aws/credentials
[default]
aws_access_key_id = accessKeyId
aws_secret_access_key = secretAccessKey
EOF
```
- Add config file to `~/.aws` dir:
```
cat << EOF > ~/.aws/config
[default]
region = us-east-1
EOF
```
- Start DynamoDB: `java -Djava.library.path=/Path/To/DynamoDBLocal_lib -jar /Path/To/DynamoDBLocal.jar -sharedDb`

## DynamoDB Commands
This section lists basic DynamoDB commands

### List Tables
`aws dynamodb list-tables --endpoint-url http://localhost:8000`

### Create Table
```shell script
aws dynamodb create-table \
--table-name Music \
--attribute-definitions \
  AttributeName=Artist,AttributeType=S \
  AttributeName=Song,AttributeType=S \
--key-schema \
  AttributeName=Artist,KeyType=HASH \
  AttributeName=Song,KeyType=RANGE \
--billing-mode PAY_PER_REQUEST \
--endpoint-url http://localhost:8000
```
- Attributes in `key-schema` must also be in `attribute-definitions`
- Partition Key is known as a HASH attribute
- Sort Key is known as a Range attribute

### List All Tables
`aws dynamodb list-tables --endpoint-url http://localhost:8000`

### Describe Table
`aws dynamodb describe-table --table-name Music --endpoint-url http://localhost:8000`

### Put Item into Table
```shell script
aws dynamodb put-item \
--table-name Music --item '{"Artist": {"S": "The Amity Affliction"}, "Song": {"S": "House of Cards"}, "Album": {"S": "House of Cards"}, "Year": {"N": "2026"}, "Genre": {"S": "Metalcore"}}' \
--endpoint-url http://localhost:8000
```

### Get Item from Table
```shell script
aws dynamodb get-item --table-name Music \
--key '{"Artist": {"S": "The Amity Affliction"}, "Song": {"S": "House of Cards"}}' \
--endpoint-url http://localhost:8000
```

### Update Item in Table
```shell script
aws dynamodb update-item --table-name Music \
--key '{"Artist": {"S": "Pink Floyd"}, "Song": {"S": "Money"}}' \
--update-expression "SET #y = :val" \
--expression-attribute-names '{"#y": "Genre"}' \
--expression-attribute-values '{":val": {"S": "Soft Rock"}}' \
--return-values ALL_NEW \
--endpoint-url http://localhost:8000
```

### Delete Item in Table
```shell Script
aws dynamodb delete-item \
--table-name Music \
--key '{"Artist": {"S": "Pink Floyd"}, "Song": {"S": "Money"}}' \
--endpoint-url http://localhost:8000
```

### Query Items in Table


### Scan All Items in Table
`aws dynamodb scan --table-name Music --endpoint-url http://localhost:8000`

### Delete Table
`aws dynamodb delete-table --table-name Music --endpoint-url http://localhost:8000`

## Resources
- [DynamoDB Developer Guide](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html)
