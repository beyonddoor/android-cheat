# Default

This is the default project generated by Android 23 via:

    android create project \
        --activity AndroidCheatDefault \
        --name AndroidCheatDefault \
        --package com.cirosantilli.android_cheat.default_template \
        --path . \
        --target 22

To build it, you must first run:

    android update project -p . -t android-22

This generates the gitignored `local.properties` file which contains the full path to the `sdk` installation:

    sdk.dir=/home/USER/android-sdk

We have created the `.gitignore` file manually.

Other repositories we have used the `ANDROID_HOME` environment variable to locate the SDK, which requires no extra per-setup repository, only a single environment variable on you `~/.profile`.
