# Run Folding@Home at your site

## Prerequisites

You need to have 

* Python 3.6, 3.7 or 3.8 [(HowTo?)](https://www.anaconda.com/distribution/)
* `pip`  [(HowTo?)](https://pip.pypa.io/en/stable/installing/)

installed on your machine.

## Virtual Environment

We recommend to run `TARDIS` in a Python virtual environment

* Create a new virtual environment
```bash
$ python3 -m venv fight_covid
```
* Activate your virtual environment
```bash
$ source fight_covid/bin/activate
```

## Installation

* Install `COBalD/TARDIS` from PyPi
```bash
$ python3 -m pip install cobald-tardis
```

All dependencies are automatically installed as well

## Configuration

```bash
git clone https://github.com/MatterMiners/FoldingAtHome.git
```

Adjust your settings in `*_at_home_condor.yml`, `singularity_start_*.sh` and
`submit_*.jdl`. Please, have a look at the 
[`TARDIS` Documentation](https://cobald-tardis.readthedocs.io/en/latest/) for
any details. 

## Container Images`
### Rosetta@Home (Thanks to Thomas Hartmann)
[https://confluence.desy.de/display/grid/BOINC+user+computing](https://confluence.desy.de/display/grid/BOINC+user+computing)

### Folding@Home (Thanks to Lukas Heinrich)
[https://github.com/lukasheinrich/folding-at-home-docker)](https://github.com/lukasheinrich/folding-at-home-docker)

## Start Job Factory
### To test your setup

```bash
cd FoldingAtHome
python3 -m cobald.daemon folding_at_home_condor.yml
```

### In Production

In production environment we suggest to use `systemd`

```bash
cp cobald\@.service /usr/lib/systemd/system
systemctl daemon-reload
systemctl start cobald@folding_at_home_condor
systemctl enable cobald@folding_at_home_condor
```
