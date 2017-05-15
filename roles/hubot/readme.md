## hubot readme

### インストール

```
[astel@server ~]$ cd /opt/
[astel@server opt]$ sudo chown -R astel:astel hubot_slack
[astel@server opt]$ cd hubot_slack/
[astel@server hubot_slack]$ 
[astel@server hubot_slack]$ yo hubot
                     _____________________________  
                    /                             \ 
   //\              |      Extracting input for    |
  ////\    _____    |   self-replication process   |
 //////\  /_____\   \                             / 
 ======= |[^_/\_]|   /----------------------------  
  |   | _|___@@__|__                                
  +===+/  ///     \_\                               
   | |_\ /// HUBOT/\\                             
   |___/\//      /  \\                            
         \      /   +---+                            
          \____/    |   |                            
           | //|    +===+                            
            \//      |xx|                            

? Owner User <user@example.com> (空エンター)
? Bot name erio (名前を適当につける、ディレクトリ名と同じだとエラーがでるので注意)
? Description A simple helpful robot for your Company (空エンター)
? Bot adapter slack (slackと入力)
   create bin/hubot
   create bin/hubot.cmd
   create Procfile
   create README.md
   create external-scripts.json
   create hubot-scripts.json
identical .gitignore
   create package.json
   create scripts/example.coffee
identical .editorconfig
                     _____________________________  
 _____              /                             \ 
 \    \             |   Self-replication process   |
 |    |    _____    |          complete...         |
 |__\\|   /_____\   \     Good luck with that.    / 
   |//+  |[^_/\_]|   /----------------------------  
  |   | _|___@@__|__                                
  +===+/  ///     \_\                               
   | |_\ /// HUBOT/\\                             
   |___/\//      /  \\                            
         \      /   +---+                            
          \____/    |   |                            
           | //|    +===+                            
            \//      |xx|                            
(省略)
  │ │ └── stack-trace@0.0.9 
  │ └─┬ ws@1.1.4 
  │   ├── options@0.0.6 
  │   └── ultron@1.0.2 
  └── lodash@3.10.1 

[astel@server hubot_slack]$ 
[astel@server hubot_slack]$ ls
bin  external-scripts.json  hubot_forever  hubot-scripts.json  node_modules  package.json  Procfile  README.md  scripts
[astel@server hubot_slack]$ ./hubot_forever 
warn:    --minUptime not set. Defaulting to: 1000ms
warn:    --spinSleepTime not set. Your script will exit if it does not stay up for at least 1000ms
info:    Forever processing file: node_modules/.bin/hubot
[astel@server hubot_slack]$ 
```

### 起動

```
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


### 停止

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
```
