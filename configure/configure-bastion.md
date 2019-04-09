# Configure Bastion

Bastion stores some configurations and credentials in its `settings` directory. It refers to it before booting up and if you have not set it up yet or made some mistakes, Bastion will not be able to start. So, this is a very important step.

There are two important files that needs to be inside the `settings` directory:

* `configurations.yaml`
* `credentials.yaml`

Make sure those files are present before you start Bastion. If they are not present in there, don't worry, you will find two other files named `configurations.example.yaml` and `credentials.example.yaml`. Make a copy of both these files and remove the `.example` part from the copies. Now, you should have these files inside the `settings` directory:

* `configurations.yaml`
* `configurations.example.yaml`
* `credentials.yaml`
* `credentials.example.yaml`

Now, open and edit the `configurations.yaml` and `credentials.yaml` files to add \(or edit\) the configurations and credentials of Bastion, respectively. And after you do that, save the files.

**Additional steps**

_This step is only necessary if you are hosting Bastion on Heroku._

Now you need to copy these files to Heroku \(and whenever you make any changes to them\). Run the following commands to push these files to Heroku:

```bash
git add -f settings/configurations.yaml settings/credentials.yaml
git commit -m "Initial Bastion Configuration"
git push heroku stable:master
```



