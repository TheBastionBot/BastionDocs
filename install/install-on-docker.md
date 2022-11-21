# Install on Docker

{% hint style="danger" %}
**Legacy Guide**

Docker image has not yet been updated for **Bastion v10.** So, this guide won't work for you. We'll update it as soon as possible.
{% endhint %}

### Ensure Docker is installed correctly

We won't help with issues relating to Docker installation/troubleshooting. Please ensure docker is installed correctly before installing Bastion on docker.

Commands are denoted by `$`. Lines without it are sample/expected output.

```
$ docker run hello-world

Hello from Docker
This message shows that your installation appears to be working correctly.
```

If get the output as per above you should be good to go. If you have to run docker as root, ensure your user is in the `docker` group. (`usermod -aG docker $USER`)

### Prerequisites

#### This guide was written using Linux commands, and assumes you are using a Linux machine.

Docker runs on Linux, macOS and Windows so syntax should for the most part be interchangeable.

Ensure you have MongoDB installed either locally on a machine on your local network OR have MongoDB Atlas setup and ready. The base Bastion image Does Not include Mongo.

Make sure to keep your Atlas connection url, database user and password handy.

Bastion's Docker image has support for ENV's now so unless you need to run cron jobs or wish to have more than 2 prefixes or owners i would recommend sticking to using ENV's.

If you intend to run the image on a system that you don't own i recommend filling out an env file and passing in the ENV's through that. otherwise anyone who has access to the docker runtime can pull your bot token.

### Preparation

Pull the Docker image:

```
$ docker pull joshj23/bastionbot

Using default tag: latest
latest: Pulling from joshj23/bastionbot
Digest: sha256:13db470f4a2de34fd76e27c14d307595754c87cd9c1ce41e7a346336df507a06
Status: Image is up to date for joshj23/bastionbot:latest
```

{% hint style="info" %}
Digest hash will vary depending on the version, it's fine if yours doesn't match.
{% endhint %}

### Running Bastion with configuration and credential files

If you wish to skip using ENV's you can still use config files akin to how it was done in V7.

You'll want to grab the `credentials.example.yaml` and `configurations.example.yaml` from Bastion's Github repository. rename them to `credentials.yaml` and `configurations.yaml` respectively. [https://github.com/TheBastionBot/Bastion/tree/master/settings](https://github.com/TheBastionBot/Bastion/tree/master/settings)

#### Configuring Bastion

At this stage, we are done, If you don't plan to use config files, head over to the `Run on docker` page, otherwise keep reading.

Head over to the `Configure Bastion` page and once configured, head over to the `Run on Docker` page
