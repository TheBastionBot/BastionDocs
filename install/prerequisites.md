# Prerequisites

## Creating Discord Bot Application

Go to the [Discord Developer portal](https://discordapp.com/developers/applications/).

After you've logged in, click on the **New Application** button.

Here you can set some cool the name for your application, like Dark Lord or _Bastion!_ You can also set a neat avatar for your bot that will be displayed to everyone in Discord.

<figure><img src="../.gitbook/assets/image (4).png" alt=""><figcaption></figcaption></figure>

After you are done with customizing your Discord application, you will need to create a bot that will be associated with that application. To do that, go to the **Bot** tab in the left sidebar and then click on the **Add Bot** button to give your application a visible life in Discord.

After you create a bot, you will find a few more options in there.

Make sure to disable the **Public Bot** and **Requires OAuth2 Code Grant** options and enable the **Presence Intent**, **Server Members Intent** and **Message Content Intent** options.

<figure><img src="../.gitbook/assets/image (6).png" alt=""><figcaption><p>Disable the <strong>Public Bot</strong> and <strong>Requires OAuth2 Code Grant</strong> options.</p></figcaption></figure>

<figure><img src="../.gitbook/assets/image (3).png" alt=""><figcaption><p>Enable the <strong>Presence Intent</strong>, <strong>Server Members Intent</strong> and <strong>Message Content Intent</strong> options.</p></figcaption></figure>

## Inviting your Bot to Discord

You will need your bot's **Client ID** (remember?) during this step.

Copy the following link, and replace the `INSERT_APP_ID_HERE` in the URL with your bot's **Application ID** and paste the link in your browser and follow the instructions.

```diff
https://discord.com/oauth2/authorize?client_id=INSERT_APP_ID_HERE&scope=bot&permissions=8
```

You will be asked by Discord to select the server where you want to invite your bot. Select your server and invite your bot!

<figure><img src="../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
You can only invite bots to the servers where you have the **Manage Server** permission. Members with **Administrator** permission have every permission in the server. So, if you have that, it will do fine.
{% endhint %}

Now go and check out your server and you will find that your bot has joined your server.

## Install MongoDB

Bastion uses MongoDB as its internal data store. Please install it for your operating system before proceeding with the installation, if you haven't already.

{% embed url="https://docs.mongodb.com/manual/administration/install-community/" %}

### (Optional) Setup MongoDB Atlas

{% hint style="info" %}
This step isn't needed if you plan to or already have setup MongoDB on your local network or where you are hosting Bastion.
{% endhint %}

If you plan to host on services such as Docker, Heroku or don't have the means to setup a local installation of MongoDB, you can use a service called MongoDB Atlas.

Head over to [https://www.mongodb.com/cloud/atlas](https://www.mongodb.com/cloud/atlas), register an account and setup a basic cluster.

Once the cluster is setup and ready, head over to `Database Access` and add a database user.

You can use any User name and Password you want. Ensure it is secure though. Once done make sure that `MongoDB Roles` is set to `readWriteAnyDatabase@admin` and not `Atlas admin`.

Now head back to `Clusters` and click on `CONNECT`, `Connect your application`, and copy the URI.

{% hint style="info" %}
The URI will look like the following. Make sure to replace \<password> and \<dbname>, \<user> and \<cluster\_ip> will be filled out for you.

mongodb+srv://\<user>:\<password>@\<cluster\_ip>.mongodb.net/\<dbnamne>?retryWrites=true\&w=majority
{% endhint %}
