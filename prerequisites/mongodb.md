# Setup Database

Bastion uses MongoDB as its data store. You can either install MongoDB on your own system or use MongoDB cloud service like MongoDB Atlas.

{% hint style="info" %}
You only need to follow one of these steps.
{% endhint %}

### Install MongoDB <a href="#install-mongodb" id="install-mongodb"></a>

If you want to install MongoDB on your on system follow the installation guide for your operating system before proceeding with the installation.

{% embed url="https://www.mongodb.com/docs/manual/administration/install-community/" %}

### Use MongoDB Atlas

Head over to [mongodb.com/cloud/atlas](https://www.mongodb.com/cloud/atlas) and signup for a new account.

Create a database cluster by going to **Database > Create**.

<figure><img src="../.gitbook/assets/image (1).png" alt=""><figcaption><p>MongoDB Atlas provides provides one free shared cluster that should be more than enough for Bastion.</p></figcaption></figure>

Add a database user by going to Database Users > Add new user.

Use **Password** authentication method. The set the username and password you want. Ensure it is secure though.

Add a **Built-in Role** and select the **Read and write to any database** option and click **Add User** to create the database user.

Now head back to **Database** and click on **Connect > Connect your application**.

Copy the connection URI and replace the `<password>` in the URI to the password you set for the database user you created earlier.

{% hint style="info" %}
The URI will look like the following. Make sure to replace `<password>` and `<dbname>`, `<username>` and `<cluster>` will be filled out for you.

`mongodb+srv://<username>:<password>@<cluster>.mongodb.net/<dbnamne>?retryWrites=true&w=majority`
{% endhint %}
