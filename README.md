You can cast a spell of Python in Vivecraft!

# How to setup

0. Install Vivecraft 1.7.10 (VR mod for Minecraft)
  - http://www.vivecraft.org/
0. Install picraft (Minecraft API for Raspberry Juice)
  - http://picraft.readthedocs.io/en/release-0.6/
  - `pip install picraft`
    - Is there a docker build for picraft?
0. Run this docker build
  - `docker run -it -p 25565:25565 -p 4711:4711 Lunran/raspberryjuice`
  - Do you want a superflat world? Use `Lunran/raspberryjuice:flat`
0. Find out your Docker container's IP
  - `docker-machine ip <container-name>`
0. Run Vivecraft 1.7.10
  - Select "Multiplayer", add your Docker container's IP as a new server and join it
0. Now you are ready to interact with Vivecraft using Python!
