#!/usr/bin/python
from influxdb import InfluxDBClient


def commvault_inventory_pull(**kwargs):
    with open(kwargs['commvaultfile']) as f:
         content = f.readlines()
    content = [x.strip() for x in content]
    content.remove('NAME,OS,ACTIVE')
    content.remove('----,--,------')
    return content

def put_in_influx(influx_config, commvault_data, measurement):
    json_body = []
    client = InfluxDBClient(influx_config['host'], influx_config['port'], influx_config['user'], influx_config['password'], influx_config['dbname'])
    client.create_database(influx_config['dbname'])
    client.drop_measurement(measurement)
    client.write_points(commvault_data) 
    return      


def commvault_data(measurement):
    json_body = []
    for line in commvault_inventory_pull( commvaultfile = "commvault-inventory.txt" ):
        input_json = {
                       "measurement": measurement,
                       "tags": {
                           "hostname": line.split(",")[0]
                       }, 
                       "fields": {
                           "host": line.split(",")[0],
                           "status": line.split(",")[2]
                       }
                     }
        json_body.append(input_json)

    return json_body 


if __name__ == "__main__":

    influx_config = {
       "host": "192.168.2.148",
       "port": "8086",
       "user": "influxdblab",
       "password": "jandrew28",
       "dbname": "commvault" }

    measurement = 'commvault_inventory'

    commvault_data = commvault_data(measurement)
    put_in_influx(influx_config, commvault_data, measurement)
# print commvault_inventory_pull( commvaultfile = "commvault-inventory.txt" ) 
# put_in_influx(influx_config)
