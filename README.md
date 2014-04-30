# WCM System Update

*Description:* Updates your Vagrant & Puppet powered server with the latest `apt-get` package list.
It removes no longer needed packages and fixes broken ones, both using `apt-get`.
Finally it installs the latest versions of the following packages.

 * `yum` (only CentOS)
 * `make`
 * `curl`
 * `chkconfig`

The module on the [Puppet Forge](https://forge.puppetlabs.com/kaiser/systemupdate).

## Install

Open your preferred console/terminal/bash/shell

    puppet module install kaiser-systemupdate --target-dir puppet/modules --debug --verbose

If you want to reinstall it, use the `--force` argument as well.

## Usage

In your main `site.pp` file, simply add.

    include systemupdate

Nothing else to do.

To ensure that it runs _before_ any other Classes during provisioning, add it like this:

    # @example Dummy code
    Class['systemupdate']
    -> Package['apache2']

Not much else to say here. Have fun.

---

**License:** MIT