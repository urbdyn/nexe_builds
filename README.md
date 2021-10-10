# Nexe Builds

> Current version `0.1.1`. Current remote URL: `https://github.com/urbdyn/nexe_builds/releases/download/0.1.1/`

[Nexe] is a fantastic tool for turning Node.js applications into single binaries.
This repository provides automation to pre-build and distribute the node binaries, so you don't have to!


## How to Use

To use the pre-built binaries with nexe just add `--remote https://github.com/urbdyn/nexe_builds/releases/download/0.1.1/`

Script example:

```bash
# Install Nexe
npm install nexe
# Save remote URL as variable
NEXE_REMOTE="https://github.com/urbdyn/nexe_builds/releases/download/0.1.1/"
# Do nexe build
npx nexe ./myScript.js --remote "$NEXE_REMOTE"
```

## Security Disclaimer

This repository utilizes Nexe's standard built process and is run via Github Actions.
**If you wish to have a secure build of Node.js for Nexe then please build it from scratch yourself.**
All code and artifacts from this repository are provided as is with no warranty or guarantees.

## Understanding releases

We use our release version to mark changes in how we build the binaries, such as the version of Nexe used.
Please refer to [RELEASE_LOG.md](./RELEASE_LOG.md) for more details.

## Adding to the Build Matrix

If you want other builds to be created and published, please open a Issue ticket 👍

## Motivation

Urban Dynamics makes use of [Nexe](https://github.com/nexe/nexe) for a number of projects we do.
It's a great tool but the pre-built binaries are becoming a bit stale compared to the Node.js release schedule.
So, we decided to open source our build automation which was creating and publishing prebuilt binaries.
Enjoy 🚀
