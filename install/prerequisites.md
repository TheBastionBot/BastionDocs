# Prerequisites

## Creating Discord Bot Application

Go to the [Discord Developer portal](https://discordapp.com/developers/applications/). You will need to login with your Discord account, that you want your bot to be associated with, to create a Discord application.

After you've logged in, click on the **Create an application** button.

Here you can set some cool the name for your application, like Dark Lord or _Bastion!_ You can also set a neat avatar for your bot that will be displayed to everyone in Discord.

Here, you will also find the **Client ID** of your bot. You will need this a few times during the installation process. So remember to come back here when required, so save it somewhere you can always refer to.

After you are done with customizing your Discord application, you will need to create a bot that will be associated with that application. To do that, go to the **Bot** section \(in the left sidebar\) and then click on the **Add Bot** button to give your application a visible life in Discord.

After your bot comes to life, you will find a few more options in there. Make sure to disable the **Public Bot** and **Requires OAuth2 Code Grant** options.

## Inviting your Bot to Discord

You will need your bot's **Client ID** \(remember?\) during this step.

Copy the following link, and replace the `INSERT_CLIENT_ID_HERE` part with your bot's **Client ID** and visit the link.

```diff
https://discordapp.com/oauth2/authorize?client_id=INSERT_CLIENT_ID_HERE&scope=bot&permissions=8
```

You will be asked by Discord to select the server where you want to invite your bot. Select your server and invite your bot!

{% hint style="info" %}
You can only invite bots to the servers where you have the **Manage Server** permission. Members will **Administrator** permission have every permission in the server. So, if you have that, it will do fine.
{% endhint %}

Now go and check out your server and you will find that your bot has joined your server.

