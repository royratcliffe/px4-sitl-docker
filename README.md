# PX4 Software-In-The-Loop on Docker

Use as follows:
```bash
docker run -it --rm royratcliffe/px4-sitl -h
```
```
Usage for Server/daemon process:

    px4 [-h|-d] [-s <startup_file>] [-t <test_data_directory>] [<rootfs_directory>] [-i <instance>] [-w <working_directory>]

    -s <startup_file>      shell script to be used as startup (default=etc/init.d-posix/rcS)
    <rootfs_directory>     directory where startup files and mixers are located,
                           (if not given, CWD is used)
    -i <instance>          px4 instance id to run multiple instances [0...N], default=0
    -w <working_directory> directory to change to
    -h                     help/usage information
    -d                     daemon mode, don't start pxh shell

Usage for client:

    px4-MODULE [--instance <instance>] command using symlink.
        e.g.: px4-commander status
```
