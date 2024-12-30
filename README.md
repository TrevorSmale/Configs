# Configs
## Personal Environment Configuration Files

I am using GNU stow to manage symlinks from source to placement. 
Stow works like this:

packagename/path/to/.config

Once can invoke stow on one particular config by inputting:

$ stow packagename while inside root of stow

## Additional Steps

stow -t ~ vim

Note: this 'targets' the ~ 'Home' directory and typically works.

### vim extras

For vim I am using vim plug requiring installation:

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

:PlugInstall
