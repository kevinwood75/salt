import requests

def sensu(name, hostname, sensu_url):
    """
    checks to see if sensu client is registered with sensu server

    name
       The action we are performing
    hostname
       The hostname of client we are checking
    sensu_url
       The api url we are querying to see if client is registered
    """
    
    url = "{0}/clients/{1}".format(sensu_url,hostname)

    if name == "registration":
       try:
          r = requests.get(url)
          if r.ok:
             status = True
             comment = "Client {0} is showing as registered".format(hostname)
          else:
             status = False
             comment = "Client {0} is NOT showing as registered".format(hostname)
       except:
          status = False
          comment = "Problem pulling registered client list from sensu api {0}".format(url)

    ret = {'name': name,
       'result': status,
       'changes': {},
       'comment': comment}
  
    return ret
