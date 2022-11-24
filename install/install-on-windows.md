# Install on Windows

### Downloading the installer

[Right Click here](https://raw.github.com/TheBastionBot/BastionScripts/master/windows/chocolatey.ps1) and Click **Save Link As…** and Save the file as `BastionInstaller.ps1` (Bastion Installer for Windows).

### Installing Bastion

First of all, open **Command Prompt** as Administrator. To do that, you can press the Start button, search for "cmd" and when Command Prompt __ appears in the search results, press `Ctrl` + `Shift` + `Enter`.

`cd` into the directory where you downloaded the `BastionInstaller.ps1`:

```bash
cd %USERPROFILE%\Downloads
```

Now, type the following command in the Command Prompt window:

```bash
powershell -ExecutionPolicy Unrestricted .\BastionInstaller.ps1
```

Wait for a few moments, so that it can download and install everything you will need to run Bastion smoothly. Meanwhile, you can go grab a cup of coffee (or tea, if you prefer that).

Once it is done, it will let you know. This will install Bastion into your User directory: `C:\Users\<User Name>\`

Now, you will have a directory named `Bastion`, in your User directory, where Bastion is installed.
