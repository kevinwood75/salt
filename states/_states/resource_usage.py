from __future__ import division
import os
import multiprocessing


def loadaverage(name, factor):
    """
    checks current load average to determine if capacity requirments are being meant

    name
       The action we are performing

    factor
       The multiplier to use against available VCPU
    """

    ncpu = multiprocessing.cpu_count()
    loadavg = os.getloadavg()[1]

    if int(loadavg) > int(ncpu * factor):
       status = False
       comment = "5 min load average is X{0}the amount of vcpu available".format(factor)
    else:
       status = True
       comment = "5 min load average is at acceptable level currently"


    ret = {'name': name,
       'result': status,
       'changes': {},
       'comment': comment}

    return ret

 
def memusage(name,threshold):
    """
    checks the percentage of memory usage and alerts if its higher then 90% used

    name
       The action we are performing

    threshold
       The memory used threshold
    """

    tot_m, used_m, free_m = map(int, os.popen('free -t -m').readlines()[-1].split()[1:])
    pct_used = int((used_m/tot_m)*100)

    if pct_used > threshold:
       status = False
       comment = "The memory used is above {0}% Threshold currently".format(threshold)

    else:
       status = True
       comment = "The memory used is at acceptable level currently"

    ret = {'name': name,
       'result': status,
       'changes': {},
       'comment': comment}
 
    return ret

#print memusage("kevin", 0)
#print loadaverage("loadavg", 2)
