# dotfiles

Inspo taken from [jsfs-tool-dotfiles](https://github.com/michaelmior/dotfiles)

## Installation 

1. First install [Oh My Zsh](http://ohmyz.sh/):

   ```bash
   sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
   ```

   > The above command will trigger installation of xCode developer tools. Agree to the installation.
   > Once the installation is done, rerun the oh-my-zsh installation above.

---

1. Run this command:

   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/appliedtechnology/salt-jsfs-dotfiles/master/script/automation.sh)"
   ```

1. Wait for about 35 minutes per computer

1. You might wanna reinstall xcode commandline tools

   ```bash
   sudo rm -rf /Library/Developer/CommandLineTools
   xcode-select --install
   ```

### Oh no - I've installed the wrong things and it's failing - do I need to reinstall the entire computer

You can easily scrap the installations of both dotfiles and the OhMyZsh, with these simple commands:

```bash
cd ~
uninstall_oh_my_zsh
rm -rf .dotfiles
```

Now you can install like described above.

If you want to remove all the applications it is possible too (`brew uninstall` on everything in the [Brewfile](./Brewfile)) but probably easier and safer to just reinstall the computer.

### Keeping your computer updated

Things change. Often and fast. Every so often you would like to run the `dot` command that ensures that everything is up to date. I do this bi-weekly.


### Components

There's a few special files in the hierarchy.
- `bin/`: Anything in bin/ will get added to your `$PATH` and be made available everywhere.