# What's this?

This is where you can store you entire weechat configuration defaults, if you do not already have a volume setup.
Alternatively, you can edit and run the default settings as such (EDIT THEM FIRST!):

1) Run all the /secure commands manually to set the secrets

2)
```
/eval /exec -oc sed -E 's/^ *//;/^(\/secure|\/script)/d;/^\//!d' weechat/default_setup.txt
```

3) Profit. I mean, chat!

## Relay

Note that these settings setup a default relay on 127.0.0.1:9001, which you can connect to via the method of your choice
(such as SSH tunnel). There are clients for Android, iOS, web, etc.
