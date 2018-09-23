# Install on Heroku

{% hint style="warning" %}
Bastion stores its data in files on disk. Heroku’s Cedar stack has an ephemeral filesystem. Bastion will work with Heroku, but the data will be cleared periodically by Heroku. If you were to use Bastion on Heroku, you would lose your entire data at least once every 24 hours.
{% endhint %}

