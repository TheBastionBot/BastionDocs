# Install on Docker

{% hint style="info" %}
Bastion's Docker image is not yet available publicly. It'll be available publicly after the next release of Bastion.
{% endhint %}

## Downloading the Docker Image

First you need to get Bastion's Docker image from GitHub Container Registry:

```bash
docker pull ghcr.io/TheBastionBot/Bastion
```

This will download and save Bastion's docker image on your system.

## Configuring Bastion

Create a directory for Bastion where you want to store the settings for Bastion.

Now, download the example settings file and save it as `settings.yaml` inside the directory.

{% embed url="https://raw.github.com/TheBastionBot/Bastion/main/settings.example.yaml" %}
Check the [**Configure Bastion**](../configure/configure-bastion.md) guide for more info on this file.
{% endembed %}

This file will be shared with Bastion's Docker container so you can directly configure Bastion's settings outside the container.
