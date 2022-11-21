# Run on Docker

{% hint style="danger" %}
**Legacy Guide**

Docker image has not yet been updated for **Bastion v10.** So, this guide won't work for you. We'll update it as soon as possible.
{% endhint %}

To function properly, Bastion needs to following at the bare minimum:

* Bot Token
* Owner ID
* MongoDB Connection URI

You can get these from the `Prerequisites` page.&#x20;

The following example will run Bastion with a container name of `Bastion`,prefix of `#!` and will be `Watching for commands`.

```
docker run -d --name=Bastion -e P_PREFIX='#!' -e A_TYPE='WATCHING' -e A_NAME='for commands' -e P_OWNER_ID='primary owner id' -e TOKEN='token' -e DB='mongodb+srv://' joshj23/bastionbot
```

Each config option is added using `-e option='value'`.

For example, to add a second Owner ID, you would add `-e s_OWNER_ID='ID_HERE'` before `joshj23/bastionbot`

If you need more than 2 prefixes, owner ID's or cron jobs you will need to use config files.

#### Using config files

If you need to (or want to) use config files, you can skip over ENV's entirely.

make sure you have an empty directory for Bastion's settings files, and download both the `credentials.example.yaml` and `configurations.example.yaml` and rename them to `credentials.yaml` and `configurations.yaml` respectively, and move them into said directory.

You want to bind mount the aforementioned settings directory to the containers `/usr/src/Bastion/files` directory. if you try to mount directly to `/usr/src/Bastion/settings` your values will most likely be overriden during container boot.

```
$ docker run -d --name=Bastion --mount type=bind,source=/home/$USER/bastion_settings,target=/usr/src/Bastion/files joshj23/bastionbot
```

You may with to check the container logs to make sure the bot started correctly.

If all went well, bastion should now be online and responding to commands in your server.

#### ENV's

Check the config files if you are unsure what links where

#### Configurations

| ENV             | Value                                      |
| --------------- | ------------------------------------------ |
| P\_PREFIX       | Primary bot prefix                         |
| S\_PREFIX       | Secondary bot prefix                       |
| A\_TYPE         | Activity type (see config files on github) |
| A\_NAME         | Activity name                              |
| TWITCH\_URL     |                                            |
| UNSAFE\_MODE    |                                            |
| MUSIC\_ACTIVITY |                                            |
| API\_PORT       |                                            |

#### Credentials

| ENV            | Value              |
| -------------- | ------------------ |
| P\_OWNER\_ID   | Primary owner ID   |
| S\_OWNER\_ID   | Secondary owner ID |
| TOKEN          | Bot token          |
| DB             | Mongo URI          |
| G\_API         | Google api key     |
| TWITCH\_ID     |                    |
| TWITCH\_SECRET |                    |
| TWITCH\_TOKEN  |                    |
| WEBHOOK\_ID    |                    |
| WEBHOOK\_TOKEN |                    |
