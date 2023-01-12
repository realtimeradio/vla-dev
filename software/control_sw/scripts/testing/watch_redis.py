import time
import redis
REDISHOST = "192.168.32.1"
CHAN = "FENG_dtsMonitor"

r = redis.Redis('192.168.32.1')
sub = r.pubsub()
sub.subscribe(CHAN)

for message in sub.listen():
    if r.get(CHAN+"_alive") is None:
        print("Channel not active")
    if message is not None:
        print(message)
