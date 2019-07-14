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

Create volumes for the Bastion data to sit on, this is to ensure that bastion can both start correctly and save configuration data, such as prefixes and any settings you set.

Database files:

```text
$ docker volume create bastion_data
```

Configuration files:

```text
$ mkdir bastion_settings
```

To stay on the safe side, to check your volume was created properly, run:

```text
$ docker volume ls
DRIVER              VOLUME NAME
local               bastion_data
```

and check the output.

### Preparation

Pull the Docker image:

```text
$ docker pull joshj23/bastionbot

Using default tag: latest
latest: Pulling from joshj23/bastionbot
Digest: sha256:13db470f4a2de34fd76e27c14d307595754c87cd9c1ce41e7a346336df507a06
Status: Image is up to date for joshj23/bastionbot:latest
```

Download the `credentials.yaml` and the `configurations.yaml` files and put them in the `bastion_settings` folder you created earlier. \(if you created the folder with a different name, adjust accordingly\)

```text
cd ~/bastion_settings && wget https://raw.githubusercontent.com/TheBastionBot/Bastion/stable/settings/configurations.example.yaml && wget https://raw.githubusercontent.com/TheBastionBot/Bastion/stable/settings/credentials.example.yaml && mv configurations.example.yaml configurations.yaml && mv credentials.example.yaml credentials.yaml && ls
```

Ensure the output looks similar to the output below, the two files listed at the end are an essential part when configuring Bastion

```text
$ cd ~/bastion_settings && wget https://raw.githubusercontent.com/TheBastionBot/Bastion/stable/settings/configurations.example.yaml && wget https://raw.githubusercontent.com/TheBastionBot/Bastion/stable/settings/credentials.example.yaml && mv configurations.example.yaml configurations.yaml && mv credentials.example.yaml credentials.yaml && ls

--2019-07-13 20:19:22--  https://raw.githubusercontent.com/TheBastionBot/Bastion/stable/settings/configurations.example.yaml
Loaded CA certificate '/etc/ssl/certs/ca-certificates.crt'
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.28.133
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|151.101.28.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1525 (1.5K) [text/plain]
Saving to: ‘configurations.example.yaml’

configurations.exampl 100%[========================>]   1.49K  --.-KB/s    in 0s      

2019-07-13 20:19:22 (25.7 MB/s) - ‘configurations.example.yaml’ saved [1525/1525]

--2019-07-13 20:19:22--  https://raw.githubusercontent.com/TheBastionBot/Bastion/stable/settings/credentials.example.yaml
Loaded CA certificate '/etc/ssl/certs/ca-certificates.crt'
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.28.133
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|151.101.28.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1064 (1.0K) [text/plain]
Saving to: ‘credentials.example.yaml’

credentials.example.y 100%[========================>]   1.04K  --.-KB/s    in 0s      

2019-07-13 20:19:23 (34.3 MB/s) - ‘credentials.example.yaml’ saved [1064/1064]

configurations.yaml  credentials.yaml

```

### Configuring Bastion

At this stage, we need to configure Bastion.

Head over to the `Configure Bastion` page and once configured, head back here.

### Running Bastion

```text
docker run -d --mount type=bind,source=/home/$USER/bastion_settings,target=/usr/src/Bastion/settings --mount source=bastion_data,target=/usr/src/Bastion/data joshj23/bastionbot
```

#### If you changed any folder names or the volume name, the above command will not work, you need to change it with respect to the folder and volume names

### Checking the status of Bastion

When you start the container, if it was started successfully it would show a long string of random numbers and letters, this is the container id, use that container id with the following command: `docker logs Container_ID`

```text
$ docker run -d --mount type=bind,source=/home/$USER/bastion_settings,target=/usr/src/Bastion/settings --mount source=bastion_data,target=/usr/src/Bastion/data joshj23/bastionbot

5fa0bc42a9e70b1d07727bb5082bb6f1de4e4b923f341ca8d56e34fa3f22c780
THIS IS THE CONTAINER ID ^
```

If all went well, Bastion should now be online and responding to commands in your server.

