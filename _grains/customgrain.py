#!/usr/bin/python

import socket
import logging
log = logging.getLogger(__name__)

def customgrain():
    hostname = socket.gethostname().lower()
    log.debug("customgrain hostname: " + hostname)
    grains = {}
    if "salt" in hostname:
       grains['malcode'] = "saltstack"
    elif "loadbal" in hostname:
       grains['malcode'] = "dns"
    else:
       grains['malcode'] = "csl"


    grains['company'] = "woodez"

    return grains
