#!/bin/bash

export HOME="/root" 
cd /var/tmp
inspec exec https://github.com/kevinwood75/inspec-test.git --reporter=json:test.json
cat test.json
