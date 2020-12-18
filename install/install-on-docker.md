# Install on Docker



### Ensuring Docker is installed

#### We will _NOT_ help with issues related to Docker, installation of Docker or otherwise, only Bastion related issues. 

#### Commands are denoted by the \`$\` in front of the command, lines that don't begin with \`$\` are example and expected output.

Ensure docker is installed on the system you intend to run bastion on:

```text
$ docker run hello-world

Hello from Docker
This message shows that your installation appears to be working correctly.
```

If you didn't get the output as per above, ensure Docker has been properly installed. 

### Prerequisites

#### This guide was written with using Linux commands, and assumes you are using a Linux machine.

Ensure you have MongoDB installed either locally on a machine on your local network OR have MongoDB Atlas setup and ready. The base Bastion image Does Not include Mongo.

Make sure to keep your Atlas connection url, database user and password handy.

Bastion's Docker image has support for ENV's now so unless you need to run cron jobs or wish to have more than 2 prefixes or owners i would recommend sticking to using ENV's.

If you intend to run the image on a system that you dont own i recommemd filling out an env file and passing in the ENV's through that. otherwise anyone who has access to the docker runtime can pull your bot token.

### Preparation

Pull the Docker image:

```text
$ docker pull joshj23/bastionbot

Using default tag: latest
latest: Pulling from joshj23/bastionbot
Digest: sha256:13db470f4a2de34fd76e27c14d307595754c87cd9c1ce41e7a346336df507a06
Status: Image is up to date for joshj23/bastionbot:latest
```
{% hint style="warning" %}
Digest hash will vary depending on the version, it's fine if yours doesnt match.
{% endhint %}

### Running Bastion with configuration and credential files

If you wish to skip using ENV's you can still use config files akin to how it was done in V7.

You'll want to grab the `credentials.example.yaml` and `configurations.example.yaml` from Bastion's github repository.
rename them to `credentials.yaml` and `configurations.yaml` respectively.
https://github.com/TheBastionBot/Bastion/tree/master/settings

There will be a special section in the `Run on Docker` page. For now head onto the next step

### Configuring Bastion

At this stage, we need to configure Bastion.

Head over to the `Configure Bastion` page and once configured, head over to the `Run on Docker` page

