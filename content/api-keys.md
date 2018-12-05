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

## Battle.net API Key

<note type="info">
  Required by `wow` command.
</note>

Visit the [Battle.net Developer Portal](https://dev.battle.net).

Login/Register your account (Click Login/Register at the top right corner).
After you've (registered and) logged in, click on **Get API Keys**.

Fill in the form with your details. You don't need to worry about the callback
URL, but make sure you select **World of Warcraft** in the franchises dropdown.
The **basic plan** should be adequate. After that click on **Register Application**.

Then you'll see your **API Key** under the Keys section.

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

## GitHub API Key

<note type="info">
  Required by `contributors` command. It would still work without it, but it's
  limited to 60 requests per hour.
</note>

Go to the [GitHub Developer Settings > Personal Access Tokens](https://github.com/settings/tokens).

Click on **Generate new token**.

Write *Bastion Bot* (or anything you like) in the **Token Description**.

In the **Select scopes** section, deselect everything. Bastion doesn't need to
access any scopes, so it's better not to select any.

Then click on **Generate token** button at the bottom to generate your new token.

Copy the new token and keep it somewhere safe, as you won't be able to see it
again for security reasons.

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

## IGDB API Key

<note type="info">
  Required by `game` command.
</note>

Visit the [IGDB API Plans page](https://api.igdb.com/pricing).

Signup for the plan as per your requirements. The **Free** plan should be
enough though.

After you've successfully signed up, you'll see your API Key in the
**credentials** section of the page.

## Musixmatch API Key

<note type="info">
  Required by `lyrics` command.
</note>

Visit [Musixmatch Developer site](https://developer.musixmatch.com/) and signup
for a new accout (or signin if you already have one).

When all the signup steps are completed, you'll get your Musixmatch API key.


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


## PUBG API Key

<note type="info">
  Required by `pubg` command.
</note>

Go to [PlayerUnknown's Battlegrounds Developer Portal](https://developer.playbattlegrounds.com/).

Login/Register your account (Click MY APPS at the top right corner).
After you've (registered and) logged in, click on **Register a New App**.

Fill up the given form with the asked details like your name, app's name
(Bastion), website (you can also use <https://bastionbot.org>), description,
etc.

After you've registered a new application, you'll get your **API Key**.

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

## The Movie DB API Key

<note type="info">
  Required by `movie` and `tvShow` commands.
</note>

Read [The Movie Database FAQ](https://www.themoviedb.org/faq/api) to know how
to get their API Key.

## Twitch API Key

<note type="info">
  Required by `streamers` and `twitch` commands.
</note>

Read [this article](https://dev.twitch.tv/docs/authentication/#registration) on
[How to get Twitch API Client ID & Client Secret](https://dev.twitch.tv/docs/authentication/#registration).
