# Retool Apps

A collection of sample Retool apps I have created. For Retool information see their [website](https://retool.com/) or [GitHub repo](https://github.com/tryretool).

Each app was downloaded as a Toolscript ZIP, then unzipped and pushed to GitHub.

I'm not an expert and my JavaScript knowledge and skill comes from trying to make things work in Retool.

For information about each app in this repo, see [ApplicationCatalog](ApplicationCatalog.md).

That said, please enjoy responsibly and see the [LICENSE](LICENSE) file for further information.

## Why devcontainer files

This repo includes devcontainer files to make testing lines of code easier. They create a simple `javascript-node` devcontainer.

`configit.sh` looks like this:

```bash
#!/bin/bash

git config --global user.email "yourEmail@mail.com"
git config --global user.name "yourGitUserName"
git config --global push.autoSetupRemote true

git config --global --add safe.directory $1
```

