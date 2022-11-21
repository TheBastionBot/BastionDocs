# Upgrade from v8 to v10

Follow the installation guide to do a fresh install of v10:

{% content-ref url="broken-reference" %}
[Broken link](broken-reference)
{% endcontent-ref %}

Configure Bastion and use your old MongoDB URL from v8:

{% content-ref url="../configure/configure-bastion.md" %}
[configure-bastion.md](../configure/configure-bastion.md)
{% endcontent-ref %}

Run MongoDB migration for v10 inside the new `Bastion` directory:

```bash
npm run migrate
```

Publish Slash commands to Discord:

{% content-ref url="../configure/publish-commands.md" %}
[publish-commands.md](../configure/publish-commands.md)
{% endcontent-ref %}

Now you can run Bastion:

{% content-ref url="broken-reference" %}
[Broken link](broken-reference)
{% endcontent-ref %}
