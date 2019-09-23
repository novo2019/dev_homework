import requests
from datetime import datetime
datestring = datetime.strftime(datetime.now(), '%Y-%m-%d-%H-%M-%S')
url = 'https://pricing.us-east-1.amazonaws.com/offers/v1.0/aws/AmazonRDS/current/region_index.json'
response = requests.get(url)
response_json = response.json()
api = (response_json['regions']["eu-north-1"]["currentVersionUrl"]) # принтира /offers/v1.0/aws/AmazonRDS/20190903185902/eu-north-1/index.json
substring = "https://pricing.us-east-1.amazonaws.com"
fullWeb = substring + api
print(fullWeb, file=open(datestring + "_ec2"+".txt", "w"))
