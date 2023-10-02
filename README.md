# Easy
Begin your journey here, the "Easy" difficulty for [SolidityNirvana](https://soliditynirvana.com)



## Step #1

Clone this repository

```
git clone https://github.com/Solidity-Nirvana/Easy
```


## Step #2

Install [foundry-rs](https://book.getfoundry.sh/getting-started/installation)

**MacOS/Linux**
```
curl -L https://foundry.paradigm.xyz | bash
```

After running this command, close your terminal and open a new instance, then run this command to install foundry-rs:

```
foundryup
```


**Windows**

If you're on Windows, you will need to install and use [Git BASH](https://gitforwindows.org/) or [WSL](https://learn.microsoft.com/en-us/windows/wsl/install), as your terminal, 
since Foundryup currently does not support Powershell or Cmd. 

*We recommend installing WSL with Ubuntu-20.04 or Ubuntu-22.04* Then run the command:

```
curl -L https://foundry.paradigm.xyz | bash
```

After running this command, close your terminal and open a new instance, then run this command to install foundry-rs:

```
foundryup
```

We recommend creating a WSL shortcut for your desktop (or directory near your projects). This way, when you open 
WSL through this icon, the starting directory will allow you to easily navigate to your project.

From there, assuming you're using Visual Studio IDE, you can run the command `code .` to open Visual Studio 
once in your project directory (the folder you cloned this repository)

There's a Visual Studio IDE extension called [WSL](https://learn.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package) that allows you to run WSL directly through the IDE. You may 
need to reinstall the [solidity](https://marketplace.visualstudio.com/items?itemName=JuanBlanco.solidity) extension by Juan Blanco for Visual Studio IDE.

## Step 4

In your terminal, while in the project directory, install the submodules:

```
git submodule update --init --recursive
```

*Note: add the `sudo` command to the beginning for WSL*


## Step #5

Enroll for access at [SolidityNirvana](https://soliditynirvana.com)