aws:
  region:
    us-east-2:
      profile:
        region: us-east-2
        keyid: AKIARRNO5RQ77ZDZZ36M 
        key: adsaY8RqQuove5ymq4QlXjgcF/2EnGhWgfl8sZHL 
      vpc:
        {%- set vpc_name = 'demo-blog-vpc' %}
        {{ vpc_name }}:
          cidr_prefix: '172.20'
          vpc:
            name: {{ vpc_name }}
            cidr_block: 172.20.0.0/16
            instance_tenancy: default
            dns_support: 'true'
            dns_hostnames: 'true'
          internet_gateway:
            name: internet_gateway
          subnets:
            1:
              name: public_subnet
              az: b
              nat_gateway: true
