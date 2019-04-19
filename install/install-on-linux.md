# Install on Linux

## Downloading the installer

Downloading the installer is a fairly straight forward process:

```bash
# For Debian and Ubuntu based Linux distributions
curl -sL https://raw.github.com/TheBastionBot/BastionScripts/master/linux/apt.sh -o BastionInstaller.sh && chmod +x BastionInstaller.sh

# For Enterprise Linux/Fedora and Snap packages
curl -sL https://raw.github.com/TheBastionBot/BastionScripts/master/linux/dnf.sh -o BastionInstaller.sh && chmod +x BastionInstaller.sh

# Or if you've a distro that uses `yum` package manager, we've got you!
curl -sL https://raw.github.com/TheBastionBot/BastionScripts/master/linux/yum.sh -o BastionInstaller.sh && chmod +x BastionInstaller.sh
```
{% hint style="info" %}
If you recieve an error saying curl not found run:
`apt install curl` or `yum install curl`{% endhint %}

This will download the installer into the current directory.

## Installing Bastion

To start the installation process, simply run the installer:

```bash
# Giving the file permissions
chmod u+x ./BastionInstaller.sh
# Running the installer
./BastionInstaller.sh
```

Wait for a few moments, so that it can download and install everything you will need to run Bastion smoothly. Meanwhile, you can go grab a cup of coffee \(or tea, if you prefer that\).

Once it is done, it will let you know.

{% hint style="info" %}
This will install Bastion into your `HOME` directory.
{% endhint %}

Now, you will have a directory named `Bastion`, in your `HOME` directory, where Bastion is installed.

