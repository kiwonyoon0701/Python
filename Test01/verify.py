import boto3

# Create SES client
ses = boto3.client('ses',region_name='us-east-1')

response = ses.verify_email_identity(
  EmailAddress = "ikooyoon@gmail.com"
)

print(response)
