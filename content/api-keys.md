---
title: Get API Keys
description: Read how to get the API keys that are required by Bastion to achieve it's full potential.
---

<note type="info">
  All the API Keys are optional, and are only required by specific commands,
  that's mentioned in the specific sections. If you do not wish to use any of
  those commands (yet) you can skip that section or this entire section and
  can come back here later when you want those.
</note>

<note type="info">
  When you get/receive an API key from any of the sections below, keep those
  keys/tokens/IDs in a file in your local computer where it's safe and easy
  to access. You are going to need these keys when you are configuring
  Bastion after the installation.
</note>


## Battlefield API Key

<note type="info">
  Required by `battlefield1` and `battlefield4` commands.
</note>

Go to [Battlefield Tracer Network Site](https://battlefieldtracker.com/site-api).

Login/Register your account (Click Login/Register at the top right corner).
After you've (registered and) logged in, click on **Generate API key**.

Fill up the given form with your name, email, website (you can also use
<https://bastionbot.org>) and description. After that click on
**Generate API key**.

Then you'll see your **API Key** under the Authentication section.

## Bungie API Key

<note type="info">
  Required by `destiny2` command.
</note>

Go to [Bungie Applications](https://www.bungie.net/en/Application).

Login/Register your account. After you've (registered and) logged in,
click on **Create New App**.

Fill up the given form with your name, website (you can also use
<https://bastionbot.org>) and select the OAuth client type to *Not Applicable*.

Then if you agree to their Terms of Use, click on **Create New App**.

Then you'll see your **API Key** under the **API Keys** section.

## Clash of Clans API key

<note type="info">
  Required by `coc` command.
</note>

Go to [Clash of Clans API](https://developer.clashofclans.com).

Login/Register your account.

After login choose **My Account** from the dropdown menu located top right corner.

Click **Create New Key**

Set name for the key, description is optional.

Allowed IP addresses requires the IP address of your Bastion bot.
You can get your IP address for example [from here](http://whatismyip.host/).
Make sure to use IPv4.

After that click **Create Key** and now you should have your API key.

Copy the key and add it into the **credentials** file.

## Fortnite API Key

<note type="info">
  Required by `fortnite` command.
</note>

Go to [Fortnite Tracer Network Site](https://fortnitetracker.com/site-api).

Login/Register your account (Click Login/Register at the top right corner).
After you've (registered and) logged in, click on **Generate API key**.

Fill up the given form with your name, email, website (you can also use
<https://bastionbot.org>) and description. After that click on
**Generate API key**.

Then you'll see your **API Key** under the Authentication section.

## Google API Key

<note type="info">
  Required by `maps` and `shorten` commands.
</note>

Go to the [Google API Console](https://console.developers.google.com/).

Create a **new project**, name it anything you like. Once the project is
created, click on **Enable APIs**.

Now, enable **Google Static Maps API** and **URL Shortener API**.

On the left tab, click **Credentials**. Then click **Create Credentials**
button. Now click on **API Key**. A window will popup with your **Google API
key.**

## HiRez API Key

<note type="info">
  Required by `paladins` and `smite` commands.
</note>

Fill up the [Hi-Rez Developer Credentials Application Form](https://fs12.formsite.com/HiRez/form48/secure_index.html)
with correct details. Then submit it.
After HiRez Studios have verified you, they will mail you with your
HiRez **DevId** & **AuthKey**.

<note type="info">
  It generally takes few hours for them you mail you, so you can proceed with
  the installation, as you can add these to your `credentials.json` file
  anytime later.
</note>

## Patreon API Key

<note type="info">
  Required by `patrons` command.
</note>

Go to the [Patreon Client Registration](https://www.patreon.com/portal/registration/register-clients).

Click on the **Create Client** button.

Fill up the details as applicable, and click on the **Create Client** button at
the bottom.

Now that your client is registered, you'll see the required credentials listed
under your client.

## Rocket League API Key

<note type="info">
  Required by `rocketLeague` command.
</note>

[Rocket League's API](https://api.rocketleague.com) is currently in closed beta.
So, you can't request an API key yet. Therefore, you can't use this command yet.
Only a selected few have access their API. And Bastion is one of them, so the
public Bastion bot can make use of the `rocketLeague` command. As soon as they
allow public access to their API, you can request an API key and use the
`rocketLeague` command in your self hosted Bastion.

## Twitch API Key

<note type="info">
  Required by `streamers` and `twitch` commands.
</note>

Read [this article](https://dev.twitch.tv/docs/authentication/#registration) on
[How to get Twitch API Client ID & Client Secret](https://dev.twitch.tv/docs/authentication/#registration).
