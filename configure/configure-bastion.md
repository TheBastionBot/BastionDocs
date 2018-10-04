# Configure Bastion

Bastion stores some configurations and credentials in its`settings` directory. It refers to it before booting up and if you have not set it up yet or made some mistakes, Bastion will not be able to start. So, this is a very important step.

There are two important files that needs to be inside the `settings` directory:

* `config.json`
* `credentials.json`

Make sure those files are present before you start Bastion. If they are not present in there, don't worry, you will find two other files named `config_example.json` and `credentials_example.json`. Make a copy of both these files and remove the `_example` part from the copies. Now, you should have these files inside the `settings` directory:

* `config.json`
* `config_example.json`
* `credentials.json`
* `credentials_example.json`

Now, open and edit the `config.json` and `credentials.json` files to add \(or edit\) the configurations and credentials of Bastion, respectively. And after you do that, save the files.

#### Additional steps

_This step is only necessary if you are hosting Bastion on Heroku._

Now you need to copy these files to Heroku, whenever you make any changes to them. Run the following commands to push these files to Heroku:

```bash
git add -f settings/config.json settings/credentials.json
git commit -m "Initial Bastion Configuration"
git push heroku master
```



