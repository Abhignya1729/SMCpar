# SMCpar

All Models
COIN-SMC - Coin models to run on SMC 
COIN-STORM - Coin models to run on STORM
Hermans-STORM - hermans models (modified) to un on STORM
IJ-CODE - Israeli-Jalfon's models to run on SMC
IJ-STORM - Israeli-Jalfon's models to run on STORM
hermans-CODE - Hermans models to run on SMC

IMCpMC-CODE - Python Code to run for SMC of the models 
Statistical model checking of pMC

This prototype is implemented using python 3.6 (we give no guaranties for other versions)

Dependencies:

sympy : to represent expressions (to install: sudo pip install sympy)
ply : to parse the models (to install: pip install ply)
memory-profiler (to install: pip install memory_profiler)
matplotlib (to install: pip install matplotlib)
flask (to install: pip install flask)
pip install -r requirements.txt for install all dependencies

(On a Debian-derived Linux distribution, e.g. Ubuntu, you can install the packages python3-sympy, python3-ply, python3-memory-profiler, and python3-mpltoolkits.basemap)
To launch server :

set FLASK_APP=app.py (Windows CMD) or export FLASK_APP=app.py (Unix Bash), see more : http://flask.pocoo.org/docs/dev/cli/
flask run
Get access :

http://127.0.0.1:5000/index


