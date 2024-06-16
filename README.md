# my neovim configuration

After years of using traditional IDEs, I decided to enhance my productivity by transitioning to neovim as my daily driver. This repository houses all the configurations I use to ensure a smooth and efficient development experience.

## install

1. Clone the Repository:
   ```sh
   git clone https://github.com/diogonapoles/init.lua ~/.config/nvim
   ```

2. Set the `$NVIM_APPNAME` Environment Variable** (optional):
   
   If you have multiple neovim configurations, set the `$NVIM_APPNAME` variable to specify which configuration to use. For example:
   ```sh
   export NVIM_APPNAME=my-config-name
   ```

4. Install `lazy.nvim`:
   
   `lazy.nvim` is the plugin manager I use for neovim. To install it, execute:
   ```sh
   git clone --depth 1 https://github.com/folke/lazy.nvim ~/.local/share/nvim/site/pack/lazy/start/lazy.nvim
   ```

6. Install Plugins:
   
   Launch neovim and run the following command to install all specified plugins:
   ```sh
   :Lazy sync
   ```

8. Fulfill Additional Dependencies:
   
   Ensure all system dependencies are met as prompted during the installation process.

10. Enjoy!
