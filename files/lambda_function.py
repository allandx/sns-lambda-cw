import json
import boto3

print('Loading function')

def lambda_handler(event, context):
    notification = 'Good afternoon, {}, time now is {} and the weather today is {}!'.format(event['name'], event['time'], event['weather'])
    print(notification)
    client = boto3.client('sns')
    print("client initialized")
    response = client.publish (
        TopicArn = "arn:aws:sns:ap-southeast-1:778024405189:luqman-successful-sns-topic",
        Message = json.dumps({'default': notification}),
        MessageStructure = 'json'
    )
    print(response)
    return {
        'statusCode': 200,
        'body': json.dumps(response)
    }