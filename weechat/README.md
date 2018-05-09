# What's this?

This is where you can store you entire weechat configuration defaults, if you do not already have a volume setup.
Alternatively, you can edit and run the default settings as such (EDIT THEM FIRST!):

0) Run the weechat container however you like. k8s, docker, whatever. Here's a shorthand though:
```
tmux # Because its nice in a tmux.
docker run -p9001:9001 -v weechat:/home/arch/.weechat -ti weechat
```

1) Run all the /secure commands manually to set the secrets

2)
```
/eval /exec -oc sed -E 's/^ *//;/^(\/secure|\/script)/d;/^\//!d' .weechat/default_setup.txt
```

3) Profit. I mean, chat!

## Relay

Note that these settings setup a default relay on 127.0.0.1:9001, which you can connect to via the method of your choice
(such as SSH tunnel). There are clients for Android, iOS, web, etc.

- https://github.com/ubergeek42/weechat-android
- https://www.glowing-bear.org/ (web)
- https://github.com/glowing-bear/glowing-bear-cordova (iOS)
- https://github.com/lithium/weechat-ios (iOS, old)


## Want more?

Look at these:

- https://gist.github.com/pascalpoitras/8406501
- https://gist.github.com/tracphil/0a6d897f6598abb6a14e
- https://weechat.org/files/doc/stable/weechat_quickstart.en.html
