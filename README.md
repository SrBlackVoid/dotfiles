# My Dotfiles

## Overview

Centralizing my configurations for different tools and configurations for all of my active machines.

## Environment

Using chezmoi for centralized management of different configuration setups.

## Current Contents

- Neovim
- PowerShell 7 Profile
- PSMux

## Maintenance and Configuration Needs

I have configured this setup to require as little manual editing as possible when
bringing in a new machine. This is done by setting up key template and data files to
actively check for the presence of dependent apps/tools/modules and adjust components accordingly.

For a simple example, the following line in my PowerShell profile:

```powershell
Set-Alias grep Invoke-PsFzfRipgrep
```

Will only be populated in $PROFILE if the current machine has the PSFzf module installed.


With that, the only required config element is:

### Root Dev Path

List the machine name and the root path for your development work.
- Specified in .chezmoidata.yaml
