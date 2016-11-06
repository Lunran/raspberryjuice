# How to setup and use

0. Install Vivecraft 1.7.10 (VR mod for Minecraft)
  - Refer to http://www.vivecraft.org/
0. Run this docker build
  - `docker run -it -p 25565:25565 -p 4711:4711 lunran/raspberryjuice`
0. Run Vivecraft 1.7.10
  - Select "Multiplayer"
  - Add the IP address as a new server
    - If you're running a Docker Machine VM, use what you got in the previous step
    - Otherwise use "localhost"
  - Join it!
0. Run Python and import Picraft (Python API for Minecraft Pi edition or Raspberry Juice)
  - `docker run -it -p 4711:4711 lunran/picraft`
    - Refer to https://github.com/Lunran/picraft for details
  - or `pip install picraft` if you already have Python

Cast a spell of Python in Vivecraft!
