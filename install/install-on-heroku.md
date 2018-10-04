# Install on Heroku

{% hint style="warning" %}
Bastion stores its data in files on disk. Heroku’s Cedar stack has an ephemeral filesystem. Bastion will work with Heroku, but the data will be cleared periodically by Heroku. If you were to use Bastion on Heroku, you would lose your entire data at least once every 24 hours.
{% endhint %}

### Prerequisites

Before you can install Bastion in Heroku, you need these in your computer. Install them if you don't already have it.

* [Git](https://git-scm.com/downloads)
* [Heroku CLI](https://devcenter.heroku.com/articles/getting-started-with-nodejs#set-up)

### Step 1: Set up Heroku

* Go to [Heroku](https://www.heroku.com/) and create a new account \(or login, if you already have an account\).
* Open the Command Prompt \(Windows\) or Terminal \(Linux/macOS\) and run the following command:

  ```bash
  heroku login
  ```

* Enter your Heroku credentials as prompted and you will be logged in to Heroku.

### Step 2: Install Bastion

* First you need to get Bastion in your local computer before you can install it in Heroku. Run the following command to clone Bastion into your computer:

  ```bash
  git clone -b stable -q --depth 1 https://github.com/TheBastionBot/Bastion.git
  cd Bastion
  ```

* You also need to create an app in Heroku where you will install Bastion. Run the following command to create an app in Heroku:

  ```bash
  heroku create
  ```

* Now you can install Bastion in Heroku. Run the following command to deploy Bastion to Heroku:

  ```bash
  git push heroku master
  ```

### Step 3: Configure Bastion

* In your computer, copy the `config_example.json` and `credentials_example.json` files in the `settings` directory of Bastion and rename the copies to `config.json` and `credentials.json`, respectively.
* Edit the `credentials.json` file to add/update your credentials like Discord IDs, token, API Keys, etc., and the `config.json` file to add/update initial settings of Bastion.
* Make whatever changes you want and save them.
* Now you need to copy these files to Heroku. Run the following commands to push these files to Heroku:

  ```bash
  git add -f settings/config.json settings/credentials.json
  git commit -m "Initial Bastion Configuration"
  git push heroku master
  ```

### Step 4: Run Bastion

* Once you have pushed Bastion's configuration files to Heroku, Bastion will automatically start in a few seconds.



