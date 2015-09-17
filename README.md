SUSE with various CUDAs to quickly build products custom to clients setup

These images may not be complete for others, but should provide a reasonable basis for customization.

Volume ["/data"] is the mounting point for source code you wish to build. Normal execution will of course mount as root, but passing the UID from the host environment will create a user with the same UID, and execute with its permissions.

Example:

    docker run --rm -ti -e UID=$UID -v /my/sources/project:/data mstormo/suse_cuda /bin/bash
will mount /my/sources/project with my current user's permissions on SUSE 11.3 w/CUDA 7.5

    docker run --rm -ti v /my/sources/project:/data mstormo/suse_cuda /bin/bash
will mount /my/sources/project with root permissions on SUSE 11.3 w/CUDA 7.5

    docker run --rm -ti -e UID=$UID -v /my/sources/project:/data mstormo/suse_cuda:11.3_5.5 /bin/bash
will mount /my/sources/project with my current user's permissions on SUSE 11 SP3 w/CUDA 5.5.

As CUDA <= 5.0 doesn't support GCC 4.7, those versions are not currently generated


**Tag** / **compressed** / **local**

**latest** / 875 MB / [![](https://badge.imagelayers.io/mstormo/suse_cuda:latest.svg)](https://imagelayers.io/?images=mstormo/suse_cuda:latest)

11.3_7.5 / 875 MB / [![](https://badge.imagelayers.io/mstormo/suse_cuda:11.3_7.5.svg)](https://imagelayers.io/?images=mstormo/suse_cuda:11.3_7.5)

11.3_7.0 / 841 MB / [![](https://badge.imagelayers.io/mstormo/suse_cuda:11.3_7.0.svg)](https://imagelayers.io/?images=mstormo/suse_cuda:11.3_7.0)

11.3_6.5 / 706 MB / [![](https://badge.imagelayers.io/mstormo/suse_cuda:11.3_6.5.svg)](https://imagelayers.io/?images=mstormo/suse_cuda:11.3_6.5)

11.3_6.0 / 770 MB / [![](https://badge.imagelayers.io/mstormo/suse_cuda:11.3_6.0.svg)](https://imagelayers.io/?images=mstormo/suse_cuda:11.3_6.0)

11.3_5.5 / 599 MB / [![](https://badge.imagelayers.io/mstormo/suse_cuda:11.3_5.5.svg)](https://imagelayers.io/?images=mstormo/suse_cuda:11.3_5.5)
