# Nexe Builds

> Current version `0.4.0`. Current remote URL: `https://github.com/urbdyn/nexe_builds/releases/download/0.4.0/`

[Nexe] is a fantastic tool for turning Node.js applications into single binaries.
This repository provides automation to pre-build and distribute the node binaries, so you don't have to!


## How to Use

To use the pre-built binaries with nexe just add `--remote https://github.com/urbdyn/nexe_builds/releases/download/0.4.0/`

Script example:

```bash
# Install Nexe
npm install nexe
# Save remote URL as variable
NEXE_REMOTE="https://github.com/urbdyn/nexe_builds/releases/download/0.4.0/"
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

## Build Call Flow  

1. `bin/run_cd`: Gets the prior git commit, calls `bin/check_assets`, and then calls `bin/install_dependencies` plus `bin/build_nexe` if a build is needed.
    1. Args: None
    2. Environmental Variables:
        1. `NODE_VERSION`: Version of Node.js to build for. [required]
        2. `CREATE_RELEASE`: Whether to actually do the compilation or dry run. [optional]
    3. Files created:
        1. Those created by scripts invoked (see below).
    4. Exit codes:
        1. `0`: Success
        2. `1`: `check_asset` script failed.
        3. `2`: `install_dependencies` script failed.
        4. `3`: `build_nexe` script failed.
2. `bin/check_assets`: Checks if target build has been published and lazily creates release if it doesn't exist.
    1. Args:
        1. Node.js version to target.
        2. Repo commit to create release for.
        3. `--no-create-release` flag (optional)
    2. Environmental Variables:
        1. `GITHUB_TOKEN`: Token to use for querying github and creating release if needed. [required]
    3. Files created:
        1. `$repo_base/NEXE_ASSET_NAME`: Name of the nexe asset to create. (`${targetOs}-${targetArch}-${targetNodeVersion}`)
        2. `$repo_base/RELEASE_TAG`: The tag of the Github Release to publish assets to. (sem-ver string)
        3. `$repo_base/RELEASE_ID`: The ID of the Github Release to publish assets to. (integer)
    4. Exit codes:
        1. `0`: Build not needed
        2. `1`: Error occurred
        3. `10`: Build needed.
2. `bin/install_dependencies`: Installs proper dependencies for each OS.
    1. Args: None
    2. Environmental Variables: None
    3. Files created: None
    4. Exit codes:
        1. `0`: Success
        2. `*`: Failure
3. `bin/build_nexe`: Performs nexe build based on given node version.
    1. Args:
        1. Command (`build` or `build-check`)
        2. Node.js version to build for.
    2. Environmental Variables: None
    3. Files created:
        1. Nexe build artifact (`$repo_dir/dist/$os_env-$os_arch-$node_target`)
    4. Exit codes:
        1. `0`: Success
        2. `*`: Failure
