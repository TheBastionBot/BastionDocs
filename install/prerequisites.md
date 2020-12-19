# Prerequisites

## Creating Discord Bot Application

Go to the [Discord Developer portal](https://discordapp.com/developers/applications/). You will need to login with your Discord account, that you want your bot to be associated with, to create a Discord application.

After you've logged in, click on the **Create an application** button.

Here you can set some cool the name for your application, like Dark Lord or _Bastion!_ You can also set a neat avatar for your bot that will be displayed to everyone in Discord.

Here, you will also find the **Client ID** of your bot. You will need this a few times during the installation process. So remember to come back here when required, so save it somewhere you can always refer to.

After you are done with customizing your Discord application, you will need to create a bot that will be associated with that application. To do that, go to the **Bot** section \(in the left sidebar\) and then click on the **Add Bot** button to give your application a visible life in Discord.

After your bot comes to life, you will find a few more options in there. Make sure to disable the **Public Bot** and **Requires OAuth2 Code Grant** options.

{% hint style="info" %}
You also need to enable both the options available for **Privileged Gateway Intents**, namely the **Presence Intent** and the **Server Members Intent**.
{% endhint %}

## Inviting your Bot to Discord

You will need your bot's **Client ID** \(remember?\) during this step.

Copy the following link, and replace the `INSERT_CLIENT_ID_HERE` part with your bot's **Client ID** and visit the link.

```diff
https://discordapp.com/oauth2/authorize?client_id=INSERT_CLIENT_ID_HERE&scope=bot&permissions=8
```

You will be asked by Discord to select the server where you want to invite your bot. Select your server and invite your bot!

{% hint style="info" %}
You can only invite bots to the servers where you have the **Manage Server** permission. Members with **Administrator** permission have every permission in the server. So, if you have that, it will do fine.
{% endhint %}

Now go and check out your server and you will find that your bot has joined your server.

## Install MongoDB

Bastion uses MongoDB as its internal data store. Please install it for your operating system before proceeding with the installation, if you haven't already.

{% embed url="https://docs.mongodb.com/manual/administration/install-community/" %}

### \(Optional\) Setup MongoDB Atlas

{% hint style="info" %}
This step isn't needed if you plan to or already have setup MongoDB on your local network or where you are hosting Bastion.
{% endhint %}

If you plan to host on services such as Docker, Heroku or don't have the means to setup a local installation of MongoDB, you can use a service called MongoDB Atlas.

Head over to [https://www.mongodb.com/cloud/atlas](https://www.mongodb.com/cloud/atlas), register an account and setup a basic cluster.

Once the cluster is setup and ready, head over to `Database Access` and add a database user.

You can use any User name and Password you want. Ensure it is secure though. Once done make sure that `MongoDB Roles` is set to  `readWriteAnyDatabase@admin` and not `Atlas admin`.

Now head back to `Clusters` and click on `CONNECT`, `Connect your application`, and copy the URI.

{% hint style="info" %}
The URI will look like the following. Make sure to replace &lt;password&gt; and &lt;dbname&gt;, &lt;user&gt; and &lt;cluster\_ip&gt; will be filled out for you.

mongodb+srv://&lt;user&gt;:&lt;password&gt;@&lt;cluster\_ip&gt;.mongodb.net/&lt;dbnamne&gt;?retryWrites=true&w=majority
{% endhint %}

