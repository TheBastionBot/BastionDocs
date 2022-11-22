# Configure Bastion

Bastion stores some configurations and credentials in its `settings.yaml` file. It refers to it before booting up and if you have not set it up yet or made some mistakes, Bastion will not be able to start. So, this is a very important step.

Make sure the `settings.yaml` file is present before you start Bastion. If it is not present in there, don't worry, you will find another file named `settings.example.yaml`. Make a copy of this file and remove the `.example` part from the file name. Now, you should have these files in the directory:

* `settings.yaml`
* `settings.example.yaml`

Now you can open and edit the `settings.yaml` file to add (or edit) the configurations and credentials for Bastion. After you have done that, save and close the file.



Now, make a copy of the `.env.example` file and rename the copy to `.env`.

Add your bot's **Client ID** in the `TESSERACT_BOT_ID` field.
