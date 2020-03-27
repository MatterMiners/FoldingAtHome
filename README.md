# Run Folding@Home at your site

## Prerequisites

You need to have 

* Python 3.6, 3.7 or 3.8 [(HowTo?)](https://www.anaconda.com/distribution/)
* `pip`  [(HowTo?)](https://pip.pypa.io/en/stable/installing/)

installed on your machine.

## Virtual Environment

We recommend to run `TARDIS` in a Python virtual environment

* Install `virtualenv` if not available
```bash
$ python3 -m pip install virtualenv
```

* Create a new virtual environment
```bash
$ python3 -m virtualenv tardis_tutorial
```
* Activate your virtual environment
```bash
$ source tardis_tutorial/bin/activate
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
