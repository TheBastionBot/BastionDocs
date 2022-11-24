# Setup Database

You can either install MongoDB on your own system or use MongoDB cloud service like MongoDB Atlas.

### Install MongoDB <a href="#install-mongodb" id="install-mongodb"></a>

Bastion uses MongoDB as its internal data store. Please install it for your operating system before proceeding with the installation, if you haven't already.

{% embed url="https://www.mongodb.com/docs/manual/administration/install-community/" %}
Follow the guide for your Operating System
{% endembed %}

### Use MongoDB Atlas

{% hint style="info" %}
This step isn't needed if you plan to or already have setup MongoDB on your local network or where you are hosting Bastion.
{% endhint %}

If you plan to host on services such as Docker, Heroku or don't have the means to setup a local installation of MongoDB, you can use a service called MongoDB Atlas.

Head over to [https://www.mongodb.com/cloud/atlas](https://www.mongodb.com/cloud/atlas), register an account and setup a basic cluster.

Once the cluster is setup and ready, head over to `Database Access` and add a database user.

You can use any User name and Password you want. Ensure it is secure though. Once done make sure that `MongoDB Roles` is set to `readWriteAnyDatabase@admin` and not `Atlas admin`.

Now head back to `Clusters` and click on `CONNECT`, `Connect your application`, and copy the URI.

{% hint style="info" %}
The URI will look like the following. Make sure to replace \<password> and \<dbname>, \<user> and \<cluster\_ip> will be filled out for you.

mongodb+srv://\<user>:\<password>@\<cluster\_ip>.mongodb.net/\<dbnamne>?retryWrites=true\&w=majority
{% endhint %}
