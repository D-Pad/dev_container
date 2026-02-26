# Development Container
This is the container that I've been using for several years now as my 
development environment. I work this way because it gives me a nice terminal 
based IDE that I can easily remote into.

## IMPORTANT
To use it, extract the contents of **bash_scripts.tar.gz** into the **software**
directory. Build the container with the `build.sh` script. Give the container 
about 10 seconds to finishing installing Neovim plugins, then connect to it
with `docker exec -it dev /usr/local/software/bash/dev`.

Projcets must have a **main** file, whether it be main.py, main.rs, or 
main.cpp. Refer to `software/bash/build` and edit accordingly if needed. After
opening a file with Neovim, quickly press SPACE + cd to open the current 
working directory in the 3rd TMUX pane. Press CTRL + S then B to run the build
script in the 3rd pane. This will compile and run the project.

