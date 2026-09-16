# My Dotfiles

## Overview

Centralizing my configurations for different tools and configurations for all of my active machines.

The main goal is to require as little manual editing as possible when deploying on a new machine overall,
but still allowing for flexibility in terms of per-machine specifics.

## Environment

Using [Chezmoi](https://www.chezmoi.io) for centralized management of different configuration setups.

## Current Contents

- Neovim
- PowerShell 7 Profile
- PSMux

## Maintenance and Configuration Needs

### App/Module Dependencies

For components that are reliant on an app/tool/module being installed, this setup
uses key template and data files to actively check for the presence of those dependencies
and adjusts the generated configs accordingly.

For a simple example, the following line in my PowerShell profile:

```powershell
Set-Alias grep Invoke-PsFzfRipgrep
```

Will only be populated in $PROFILE if the current machine has the PSFzf module installed.
If the module's not available, that line isn't added (no point in bringing that in).

*NOTE*: Future versions of this will probably prompt for installation/setup of those dependencies.
