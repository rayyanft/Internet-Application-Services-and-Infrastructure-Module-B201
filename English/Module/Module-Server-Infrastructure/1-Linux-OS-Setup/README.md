# Infrastructure 1: Linux Server Setup

This module introduces terminal workflows and core diagnostic commands in an Ubuntu Linux virtual machine. We conduct all exercises inside an isolated VM to safeguard host operating system partitions and prevent unintended system-wide modifications.

## Basic Theory

The operating system coordinates system hardware, processes, users, and storage resources. The terminal is a command-line interface window; the shell (typically Bash) interprets user input commands and invokes underlying binaries.
- `pwd`: (*Print Working Directory*) Outputs the absolute path of the current directory.
- `whoami`: Prints the effective username executing the active shell session.
- `df -h`: Displays mounted filesystem disk usage; `-h` formats byte sizes into human-readable units like MB or GB.
- `sudo`: Temporarily elevates privileges to administrative (`root`) authority for a single command; privilege escalation must be used with precision and care.

Example:

```bash
pwd
whoami
df -h
```

Line breaks delineate separate commands; enter and observe output for each command sequentially.

## Tools and Lab Preparation

- VirtualBox, UTM, or an approved hypervisor platform, paired with an official Ubuntu Server ISO image.
- Back up important files before provisioning virtual machines; never select physical host disks as installation targets.
- Use host-only or NAT virtual networking during introductory exercises.
- Consult Ubuntu Server documentation for guidance on installation options.

## Hands-on Learning Steps

1. Create a new VM with clear naming and adequate memory/CPU resource allocation.
2. Mount the official Ubuntu ISO as a virtual optical boot drive.
3. Follow the installer instructions, ensuring the target disk is the freshly created virtual drive.
4. Establish an administrative user account with a strong passphrase; avoid reusing personal credentials.
5. Once logged in via terminal, execute `uname -a`, `whoami`, `pwd`, `df -h`, and `free -h`.
6. Inspect the package manager with `sudo apt update`: `sudo` invokes root privilege, `apt` launches the package manager, and `update` refreshes repository package metadata without installing packages.
7. Document relevant diagnostic output, then perform a graceful system shutdown using `sudo shutdown -h now`.

## Module Assignment

Produce a virtual machine inventory document specifying the OS distribution version, kernel version, active user accounts, available disk partition geometry, free RAM, and proper shutdown procedures. Explain every command utilized and contrast standard user accounts with root administrative access.

## References

- [Ubuntu Server Documentation](https://ubuntu.com/server/docs)
- [Ubuntu Server Installation Tutorial](https://ubuntu.com/tutorials/install-ubuntu-server)
