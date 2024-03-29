# vyos-config

My VyOS config.

Thanks to bjw-s for the framework for setting up VyOS in a iac/gitops fashion!
https://github.com/bjw-s/vyos-config

# Setup

This is based on 1.4 - easiest if its modified with git (like onedr0ps image)

To install from live image, `install image` and follow prompts.

Get basic network running in installed image

Some good info here on setup/config concepts:

> https://blog.kroy.io/2020/05/04/vyos-from-scratch-edition-1/#Basic_Configuration

Use `commit-confirm` when doing things that might lock you out - this reboots in 10 mins by defualt if you dont enter `confirm` into the configure mode. As you haven't saved it, when it reboots it will pick up your last known working config.

## Vyos

```
configure

set networks ethernet eth1 dhcp

set system name-server 1.1.1.1
```

```
cd /config
mkdir secrets
```

## Local

```
scp ~/.config/sops/age/keys.txt vyos@<VYOS-IP>:/config/secrets/age.key
```

## Vyos

```
git init
git remote add origin git@github.com:<repo>.git
git branch --set-upstream-to=origin/master master # not 100% certain this is required
git checkout master -f
git log
```

scp age key to folder

```bash
scp ~/.config/sops/age/keys.txt vyos@<ip>:/config/secrets/age.txt
```
