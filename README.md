# WCM System Update

*Description:* Updates your Vagrant & Puppet powered server with the latest `apt-get` Package list.
Installs the latest versions of `yum`, `rpm`, `make` and `curl`.

## Install

Open your preferred console/terminal/bash/shell

    puppet module install kaiser-systemupdate --target-dir puppet/modules --debug --verbose

If you want to reinstall it, use the `--force` argument as well.

## Usage

In your main `site.pp` file, simply add.

    include systemupdate

Nothing else to do.

**License** MIT