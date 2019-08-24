# AirConnect-Synology-Docker
Bridges AirPlay, SONOS and Google Cast using https://github.com/philippe44/AirConnect for Docker on Synology 

[![Latest release](https://img.shields.io/github/v/tag/mommel/AirConnect-Synology-Docker.svg)](https://cloud.docker.com/u/mommel/repository/docker/mommel/airconnect-synology-docker)

## How to use
### 1. Download Docker Image
 * mommel/AirConnect-Synology-Docker
 * Make sure you select the latest tag

### 2. Create Container
 * Launch a new container using the mommel/AirConnect-Synology-Docker image.
 * Give your container an appropriately name and goto Advanced Settings
 * Set the checkbox to Enable auto-restart.
 * Goto Network tab and set the checkbox to Use the same network as Docker host.
 * Click OK and thats it.

_________________

## Bulid from scratch
  * This repo contains submodules so you might want to clone it with.  
  `git clone --recursive https://github.com/mommel/AirConnect-Synology-Docker.git`. 
  If you have already cloned it, no problem, just run. 
  `git submodule update --init` 

_________________

## How to contribute
  * Fork the repo
  * Create a branch with a good name
  * Do your changes
  * Sign your commits _(git commit -S -m your commit message)_
  * Push it
  * Create a pull request
  * Tell what you did there


## Software signing keys
  * **[Mommel Git Sign PGP](https://keybase.io/mommel/pgp_keys.asc?fingerprint=72ea8bab99f9d7ac91f8fbc42e41189665f98971)**
