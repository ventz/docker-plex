# Please look at my blog article for more information:

https://blog.vpetkov.net/2015/12/17/plex-server-on-a-vps-docker-setup-without-port-forwarding/

# Running a dedicated Plex server in Docker:

## 1.) Grab your Unique Plex Access Token:

Login at https://app.plex.tv/web/app with your username and password
Open your javascript console (in Chrome: View -> Developer ->
JavaScript Console) and type:

```
console.log(window.PLEXWEB.myPlexAccessToken);
```

Note the token, which will look like this: “PZwoXix8vxhQJyrdqAbY”

## 2.) Edit the "Preferences.xml" with your Access Token

Edit out “PZwoXix8vxhQJyrdqAbY” with the AccessToken for the account
you want to use!

## 3.) Create your own "/plex/Plug-ins" folder, and run container:

You can grab some plugins from: https://github.com/plexinc-plugins

```
docker run --name=plex -d \
    --privileged=true \
    -p 32400:32400 \
    -v /plex:/p
ventz/plex
```

Alternatively, you may use the provided "run.sh"
