# Install on Docker

## Downloading the Docker Image

First you need to get Bastion's Docker image from GitHub Container Registry:

```bash
docker pull ghcr.io/thebastionbot/bastion
```

This will download and save Bastion's docker image on your system.

{% embed url="https://ghcr.io/thebastionbot/bastion" %}

## Configuring Bastion

Create a directory for Bastion where you want to store the settings for Bastion.

Now, download the example settings file and save it as `settings.yaml` inside the directory.

{% embed url="https://raw.github.com/TheBastionBot/Bastion/main/settings.example.yaml" %}
Check the [**Configure Bastion**](../configure/configure-bastion.md) guide for more info on this file.
{% endembed %}

This file will be shared with Bastion's Docker container so you can directly configure Bastion's settings outside the container.
