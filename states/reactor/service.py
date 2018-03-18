#!/usr/bin/python
import requests
# curl -H "Accept: application/json" -d tgt='appserver1.woodez.net' -d service="rsyslog" -d secretkey="jandrew28" -k https://192.168.2.207:8080/hook/motd

payload={
    'tgt': 'appserver1.woodez.net',
    'secretkey': 'jandrew28',
}

url = 'https://192.168.2.207:8080/hook/motd'

response = requests.post(url, data=payload, verify=False)

print response.status_code
print response.text
