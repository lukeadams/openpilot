import cereal.messaging as messaging
import time
import datetime

pm = messaging.PubMaster(['health'])
while 1:
    dat = messaging.new_message('health')
    dat.valid = True
    dat.health = {
        'ignitionLine': True,
        'hwType': "blackPanda",
        'controlsAllowed': False
    }
    pm.send('health', dat)

    print(datetime.datetime.now())

    time.sleep(0.5)
