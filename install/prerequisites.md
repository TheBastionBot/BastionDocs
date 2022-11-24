# Add Bot to Server

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

<figure><img src="../.gitbook/assets/image (1) (1).png" alt=""><figcaption></figcaption></figure>

{% hint style="info" %}
You can only invite bots to the servers where you have the **Manage Server** permission. Members with **Administrator** permission have every permission in the server. So, if you have that, it will do fine.
{% endhint %}

Now go and check out your server and you will find that your bot has joined your server.
