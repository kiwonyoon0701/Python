import json
import boto3


with open('./Attendents.json') as json_file:
    json_data = json.load(json_file)

for json_string in json_data:
    print(json_string['full_name'])
    print(json_string['access_url'])
#json_string = json_data[0]["full_name"]
#print(json_string)