import socket


def checkstrongpm(name, hostname):
    """
    checks to see if stronpm is listening on port

    name
       The action we are performing
    hostname
       The hostname of client we are checking
    """


    def portcheck(PORT):
        sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        sock.settimeout(2)
        try:
           result = sock.connect_ex((hostname,PORT))
           if result == 0:
              return True
           else:
              return False
        except socket.gaierror:
           return False

    if portcheck(3001):
       status = True
       comment = "strongpm is listening on port 3001"
    elif portcheck(3080):
       status = True
       comment = "strongpm is listening on port 3080"
    elif portcheck(3083):
       status = True
       comment = "strongpm is listening on port 3083"
    elif portcheck(42266):
       status = True
       comment = "strongpm is listening on port 42266"
    else:
       status = False
       comment = "strongpm is not listening on any of the known ports"

    ret = {'name': name,
       'result': status,
       'changes': {},
       'comment': comment}

    return ret
