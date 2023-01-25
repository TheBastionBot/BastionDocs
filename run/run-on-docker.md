# Run on Docker

{% hint style="info" %}
Bastion's Docker image is not yet available publicly. It'll be available publicly after the next release of Bastion.
{% endhint %}

Open Terminal (or Command Prompt) inside the directory you created for storing Bastion's settings in the [**Install on Docker**](../install/install-on-docker.md#configuring-bastion) guide.

Now, run this if you're using Docker on Linux/macOS:

```bash
docker run -d --name bastion -p 80:8377 --add-host=host.docker.internal:host-gateway -v $(pwd)/settings.yaml:/app/settings.yaml bastion
```

Or, run this if you're using Docker on Windows:

```powershell
docker run -d --name bastion -p 80:8377 -v "%cd%/settings.yaml":/app/settings.yaml bastion
```
