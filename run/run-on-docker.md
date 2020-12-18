# Run on Docker

To function properly, Bastion needs a the following at the least:
Bot Token
Owner ID
MongoDB Connection URI

Where to get these are detailed in the `Configure Bastion` page.

The following example will run Bastion with the container name `Bastion`, with a prefix of `#!`, and Bastion will be `Watching for commands`. 
Each config option is added using `-e`.
for example to add a second owner id, you would append `-e S_OWNER_ID='ID_HERE'` before `joshj23/bastionbot`.

```text
docker run -d --name=Bastion -e P_PREFIX='#!' -e A_TYPE='WATCHING' -e A_NAME='for commands' -e P_OWNER_ID='primary owner id' -e TOKEN='token' -e DB='mongodb+srv://' joshj23/bastionbot
```
### ENV's
Check config files if you are unsure what links to where
# -- Configurations --
P_PREFIX - Primary prefix
S_PREFIX - Secondary prefix
A_TYPE - Activity Type: valid values are PLAYING, LISTENING, WATCHING, STREAMING, and COMPETING.
A_NAME - Activity Name: often seen as watching v8 or playing with ganymede
TWITCH_URL 
UNSAFE_MODE 
MUSIC_ACTIVITY 
API_PORT 

-- Credentials --
P_OWNER_ID - Primary owner ID
S_OWNER_ID - Secondary owner ID (leave empty for blank)
TOKEN - Bot Token
DB - where Bastion DB will be stored. typically mongodb atlas, Atlas URI will start with `mongodb+srv://`. make sure to add your username, password and db after copying from Atlas.
G_API - Google api key
TWITCH_ID 
TWITCH_SECRET
TWITCH_TOKEN 
WEBHOOK_ID 
WEBHOOK_TOKEN

#### If you plan to run Bastion with config files...

You can skip adding ENV's all together. 
Make sure the config files are in its own directory with nothing else in it.
Run the container and mount your settings directory to `/usr/src/Bastion/files` 
```text
$ docker run -d --name=Bastion --mount type=bind,source=/home/$USER/bastion_settings,target=/usr/src/Bastion/files joshj23/bastionbot
```
You may wish to check the container logs to ensure the bot started correctly.

If all went well, Bastion should now be online and responding to commands in your server.

