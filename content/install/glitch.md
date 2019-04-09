---
title: Install on Glitch
---

### Initial Setup

Before you can install Bastion in Glitch, the following steps needs to be
performed:

* Go to [GitHub](https://github.com).
* Either [**sign in**](https://github.com/login) or
  [**sign up**](https://github.com/join) for GitHub.
* When you are signed in you can close out of GitHub.

### Installing

* Go to [Glitch](https://glitch.com)
* And then **Sign in with GitHub**.
* Then create a **New Project** in Glitch. It can be of any type.
* **Make your project private before doing anything else so that your
  credentials are safe from others. If you’re not able to do this, ask around
  in [Bastion HQ](https://discord.gg/fzx8fkt) and some amazing people
  will help you out**.
* Click on the **Tools** button (at the bottom left corner) in your Glitch project.
  Now click on the **Console**
  button and you’ll be redirected to your project’s console.
* To install Bastion just type this command then press enter:

  ```text
  rm -rf /app/* /app/.* 1>/dev/null; git clone -b stable https://github.com/TheBastionBot/Bastion.git ~/; refresh
  ```
  What this command does is removes *all* files in the project. After that it downloads the code from Github into the project
  and then `refresh` makes it so the files show up in Glitch.
* If you do not see the settings folder then in the console type
  ```text
  rm ~/.gitignore; refresh
  ```
  What this does is removes the file that hides the settings folder.
