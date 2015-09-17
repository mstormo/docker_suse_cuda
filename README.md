SUSE with various CUDAs to quickly build products custom to clients setup

These images may not be complete for others, but should provide a reasonable basis for customization.

Volume ["/data"] is the mounting point for source code you wish to build. Normal execution will of course mount as root, but passing the UID from the host environment will create a user with the same UID, and execute with its permissions.

Example:

    docker run --rm -ti -e UID=$UID -v /my/sources/project:/data mstormo/suse_cuda /bin/bash
will mount /my/sources/project with my current user's permissions on SUSE xx w/CUDA xx

    docker run --rm -ti v /my/sources/project:/data mstormo/suse_cuda /bin/bash
will mount /my/sources/project with root permissions on SUSE xx w/CUDA xx

    docker run --rm -ti -e UID=$UID -v /my/sources/project:/data mstormo/suse_cuda:11.3_4.2 /bin/bash
will mount /my/sources/project with my current user's permissions on SUSE SP3 w/CUDA 4.2.
