# Setup Database

Bastion uses MongoDB to store its data. You can either install MongoDB on your own system or use a MongoDB cloud service like MongoDB Atlas.

{% tabs %}
{% tab title="Use MongoDB Atlas" %}
Head over to [mongodb.com/cloud/atlas](https://www.mongodb.com/cloud/atlas) and signup for a new account.

Create a database cluster by going to **Database > Create**.

<figure><img src="../.gitbook/assets/image (1) (2).png" alt=""><figcaption><p>MongoDB Atlas provides provides one free shared cluster that should be more than enough for Bastion.</p></figcaption></figure>

Add a database user by going to **Database Access > Add new database user**.

Use **Password** authentication method. The set the username and password you want. Ensure it is secure though.

Add a **Built-in Role** and select the **Read and write to any database** option and click **Add User** to create the database user.

<figure><img src="../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>

Now head back to **Database** and click on **Connect > Connect your application**.

Copy the connection URI and replace the `<password>` in the URI to the password you set for the database user you created earlier.

The URI will look like the following. Make sure to replace `<password>` and `<dbname>`, `<username>` and `<cluster>` will be filled out for you.

```
mongodb+srv://<username>:<password>@<cluster>.mongodb.net/<dbnamne>?retryWrites=true&w=majority
```
{% endtab %}

{% tab title="Install MongoDB" %}
If you want to install MongoDB on your on system follow the installation guide for your operating system before proceeding with the installation.

{% embed url="https://www.mongodb.com/docs/manual/administration/install-community/" %}
{% endtab %}
{% endtabs %}

