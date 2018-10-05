# Install on Glitch

### Initial Setup \(GitHub\)

 Before you can install Bastion in Glitch, the following steps needs to be performed:

* Go to [GitHub](https://git-scm.com/downloads).
* Either [**sign in**](https://github.com/login) or [**sign up**](https://github.com/join) for GitHub.
* Go to [Bastion’s repository](https://github.com/TheBastionBot/Bastion).
* Create a [**fork**](https://github.com/TheBastionBot/Bastion/fork) of Bastion’s repository.
* Go to the forked repository. It will be in your repositories.
* Go to **Settings**, and then click on the **Branches** tab in the left.
* Change the default branch from `master` to `stable`.

### Initial Setup \(Glitch\) {#initial-setup-glitch}

* Go to [Glitch](https://glitch.com)
* And then **Sign in with GitHub**.
* Then create a **New Project** in Glitch. It can be of any type.
* **Make your project private before doing anything else so that your credentials are safe from others. If you’re not able to do this, ask around in** [**Bastion HQ**](https://discord.gg/fzx8fkt) **and some amazing people will help you out**.
* Click on the **Logs** button \(at the top left corner\) in your Glitch project. It will open the log window at the bottom, where you can find the **Console** button. Click on that and you’ll be redirected to your project’s console.
* Now, before we install Bastion, we’ll need to clear all files from the default project that was automatically created by Glitch. Run the following command in your project’s console to clean everything up:

```text
rm -rf /app/* /app/.* 1>/dev/null
```

### Install Bastion {#install-bastion}

* First of all, we need to clone \(copy\) Bastion from your forked repository. Run the following command to do that, replacing `github_user_name` with your GitHub username and `bastion_repo_name` with the name of the repository you forked \(will be `Bastion` by default\)

```text
git clone https://github.com/github_user_name/bastion_repo_name.git .
```

* For example, [my GitHub username is `k3rn31p4nic`](https://github.com/k3rn31p4nic) and my forked repository name is `Bastion`, so I’ll write:

  ```text
  git clone https://github.com/k3rn31p4nic/Bastion.git .
  ```

* Bastion will now be imported to Glitch in a few seconds.
* But, when you go to your project editor, you won’t see it. _Why?_ Because Glitch console doesn’t sync with your project editor automatically. To do that, run the following command:

```text
refresh
```

* Now when can go back to your project editor, you’ll see that it has been updated.



