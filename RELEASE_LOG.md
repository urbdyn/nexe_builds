# urbdyn/nexe_builds release log

## 0.2.0

* Created on: 2021-10-28
* Nexe version: 4.0.0-beta.19
* Set Linux build to run in Centos7 container and thus require GLIBC version 2.17 instead of 2.25 that is currently in Linux runner.
* Added `14.18.1` and `16.13.0` (current LTS as of release)
* Fixed bug where all build versions were actually the version in `.nvmrc`.
* Changes OS `macos` to `mac` to be inline with standard nexe naming.
* Build matrix:
  * OS: `linux`, `mac`, `windows`
  * Node Version: `12.21.0`, `12.22.6`, `14.16.0`, `14.18.0`, `14.18.1`, `16.11.0`, `16.13.0`

## 0.1.1

**DEPRECATED: This resulted in only building the version in .nvmrc, do not use!**

* Created on: 2021-10-10
* Nexe version: 4.0.0-beta.19
* Updated dependencies
* Build matrix:
  * OS: `linux`, `macos`, `windows`
  * Node Version: `12.21.0`, `12.22.6`, `14.16.0`, `14.18.0`, `16.11.0`

## 0.1.0

**DEPRECATED: This resulted in only building the version in .nvmrc, do not use!**

* Created on: 2021-03-17
* Nexe version: 4.0.0-beta.18
* Initial release.
* Build matrix:
  * OS: `linux`, `macos`, `windows`
  * Node Version: `12.21.0`, `14.16.0`
