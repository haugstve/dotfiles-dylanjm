# dylanjm dotfiles
_\*Warning\* Download and Install at your own **risk**!_

Hello, this is my dotfile repository. I have created this so that I can easily reconfigure my setup on any macOS system. This setup is for those who primarily work on data analysis, data cleaning, and modeling, as well as programming. The two main languages I use are [Python](https://www.python.org) and [R](https://cran.r-project.org). I also enjoy working quickly and efficiently, so these dotfiles set up some [global hotkeys](https://github.com/koekeishiya/khd) and [kwm](https://github.com/koekeishiya/kwm). 

These dotfiles are not crossplatform compatiable and should only work on macOS systems. **You should never blindly download and install random scripts to your computer** Albiet, you can trust me (can you really?) but before installing check through the scripts and make sure you know what they are doing. Several scripts require you to run **sudo**. There are three stages to installing these dotfiles. This allows you to _crank up the volume_ to your liking so to speak. 

## Installation

These dotfiles are managed using [HOMELY](http://homely.readthedocs.io/en/latest/index.html) which make it really easy to manage symlinks while keeping everything in one repo and not worrying about having a messy home directory. It's very **important** that you do not run HOMELY.py until you have run each stage's script. In a nutshell, installation should only take these four commands:

```
$ make stage1
$ make stage2 
$ make stage3
$ make pyconfig
$ make rconfig
$ make macos
$ homely add <your fork's url>
$ homely update
```

## Stage 1 - The Shell
*Terminal restart required.*
**Features**:

* Download x-code command line tools  
* Download [homebrew](https://brew.sh)
* Download updated ZSH
* Download [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* Set updated ZSH to default shell. 

The first stage is downloading and preparing the shell. This is the first thing I do when setting up my new computer. The symlinks will take care of themselves later once you run `homely update`. Until then, your terminal won't recognize oh-my-zsh. Don't worry that's okay.

## Stage 2 - Command Line Stuff & Text Editors
**Features**:

* GNU OG Command Line Tools:
    - coreutils
    - moreutils
    - findutils
    - sed, etc..
* [KWM](https://github.com/koekeishiya/kwm)
* [KHD](https://github.com/koekeishiya/kwm)
* Neovim
* Sublime-Text 3
* Emacs

Now time to get the text editors up and running. I primarily use sublime text these days but I have to my emacs and everyonce in a while I'll bust out vim to stay sharp. 


