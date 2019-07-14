# Run on Docker

To run Bastion within Docker, simply run:

```text
docker run -d --mount type=bind,source=/home/$USER/bastion_settings,target=/usr/src/Bastion/settings --mount source=bastion_data,target=/usr/src/Bastion/data joshj23/bastionbot
```

#### If you changed any folder names or the volume name, the above command will not work, you need to change it with respect to the folder and volume names

When you start the container, if it was started successfully it would show a long string of random numbers and letters, this is the container id, use that container id with the following command: `docker logs Container_ID`

```text
$ docker run -d --mount type=bind,source=/home/$USER/bastion_settings,target=/usr/src/Bastion/settings --mount source=bastion_data,target=/usr/src/Bastion/data joshj23/bastionbot

5fa0bc42a9e70b1d07727bb5082bb6f1de4e4b923f341ca8d56e34fa3f22c780
THIS IS THE CONTAINER ID ^
$ docker logs 5fa0bc42a9e70b1d07727bb5082bb6f1de4e4b923f341ca8d56e34fa3f22c780
```

If all went well, Bastion should now be online and responding to commands in your server.

