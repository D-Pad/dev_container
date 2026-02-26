# Development Container
This is the container that I've been using for several years now as my 
development environment. I work this way because it gives me a nice terminal 
based IDE that I can easily remote into. It's highly personalized, and I don't
expect anyone else to ever use it, but just in case, instructions on how to do 
so are listed below.

## Setup 
First, rename Dockerfile.example to Dockerfile. Open the file, and put your git
credentials in the appropriate environment variable names:
```
ENV GIT_USER=USERNAME_HERE
ENV GIT_EMAIL=YOUR_EMAIL_HERE
ENV GITKEY=GIT_KEY_HERE
```
Extract the contents of **bash_scripts.tar.gz** into the **software**
directory. Build the container with the `build.sh` script. Give the container 
about 10 seconds to finishing installing Neovim plugins, then connect to it
with `docker exec -it dev /usr/local/software/bash/dev`.

## Use
Projcets must have a **main** file, whether it be main.py, main.rs, or 
main.cpp. Refer to `software/bash/build` and edit accordingly if needed. After
opening a file with Neovim, quickly press SPACE + cd to open the current 
working directory in the 3rd TMUX pane. Press CTRL + S then B to run the build
script in the 3rd pane. This will compile and run the project.

