# WCM System Update

*Description:* Updates your Vagrant & Puppet powered server with the latest `apt-get` Package list.
Installs the latest versions of:

 * `yum`
 * `rpm`
 * `make`
 * `curl`
 * `chkconfig`

Module on the [Puppet Forge](https://forge.puppetlabs.com/kaiser/systemupdate).

## Install

Open your preferred console/terminal/bash/shell

    puppet module install kaiser-systemupdate --target-dir puppet/modules --debug --verbose

If you want to reinstall it, use the `--force` argument as well.

## Usage

In your main `site.pp` file, simply add.

    include systemupdate

Nothing else to do.

To ensure that it runs _before_ any other Classes during provisioning, add it like this:

  Class['systemupdate']
  -> Class['Apache']

Not much else to say here. Have fun.

---

**License:** MIT