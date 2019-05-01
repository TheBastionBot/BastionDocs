# Install on Glitch

### Initial Setup <a id="initial-setup-glitch"></a>

* Go to [Glitch](https://glitch.com)
* And then **Sign in**.
* Then create a **New Project** in Glitch. It can be of any type.
* **Make your project private before doing anything else so that your credentials are safe from others. If you’re not able to do this, ask around in** [**Bastion HQ**](https://discord.gg/fzx8fkt) **and some amazing people will help you out**.
* Click on the **Logs** button \(at the top left corner\) in your Glitch project. It will open the log window at the bottom, where you can find the **Console** button. Click on that and you’ll be redirected to your project’s console.
* Now, before we install Bastion, we’ll need to clear all files from the default project that was automatically created by Glitch. Run the following command in your project’s console to clean everything up:

```bash
rm -rf /app/* /app/.* &>/dev/null
```

### Install Bastion <a id="install-bastion"></a>

* First of all, we need install Bastion to your Glitch project. Run the following command to do that \(note the `.` at the end, don't forget that!\):

```bash
git clone https://github.com/TheBastionBot/Bastion.git .
```

* Bastion will now be imported to Glitch in a few seconds.
* But, when you go to your project editor, you won’t see it. _Why?_ Because Glitch console doesn’t sync with your project editor automatically. To do that, run the following command:

```bash
refresh
```

* Now when can go back to your project editor, you’ll see that it has been updated.



