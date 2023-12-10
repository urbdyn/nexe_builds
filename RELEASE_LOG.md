# microcodez/nexe_builds release log

## 0.4.0

* Created on: 2023-12-10
* Nexe version: 4.0.0-rc.2
* Set Linux build to run in version pinned `ghcr.io/urbdyn/centos7-devtoolset8-builder` container which has preinstalled version of `devtoolset-8` package.
* Set Linux build to use Node.js version as defined in `.nvmrc` file.
* Build matrix:
  * OS: `linux`, `macos`, `windows`
  * Node Version: `20.10.0`

## 0.3.0 and below

Go to https://github.com/urbdyn for older version