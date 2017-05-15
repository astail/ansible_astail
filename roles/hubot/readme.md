```
[astel@server hubot_slack]$ forever list
info:    Forever processes running
data:        uid  command script                                  forever pid  id logfile                        uptime       
data:    [0] _4P9 coffee  node_modules/.bin/hubot --adapter slack 5674    5680    /home/astel/.forever/_4P9.log 0:0:35:1.213 
[astel@server hubot_slack]$ forever stop 5680
info:    Forever stopped process:
    uid  command script                                  forever pid  id logfile                        uptime       
[0] _4P9 coffee  node_modules/.bin/hubot --adapter slack 5674    5680    /home/astel/.forever/_4P9.log 0:0:35:6.678 
[astel@server hubot_slack]$ 
[astel@server hubot_slack]$ forever list
info:    No forever processes running
[astel@server hubot_slack]$ 
[astel@server hubot_slack]$ 
[astel@server hubot_slack]$ ./hubot_forever 
warn:    --minUptime not set. Defaulting to: 1000ms
warn:    --spinSleepTime not set. Your script will exit if it does not stay up for at least 1000ms
info:    Forever processing file: node_modules/.bin/hubot
[astel@server hubot_slack]$ 
```
