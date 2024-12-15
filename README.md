# Uncommon Dockerfile Bug: Using 'latest' Tag and Unspecified Package Versions

This repository demonstrates a common yet often overlooked issue in Dockerfiles: using the `latest` tag for base images and not specifying versions for installed packages.

**Problem:**
The provided `DockerfileBug.dockerfile` uses `ubuntu:latest`, making the build unpredictable because future updates to `ubuntu:latest` might break the image. It also uses `python3-pip` without specifying a version, which again, could lead to unexpected behavior if updated without notice.

**Solution:**
The `DockerfileSolution.dockerfile` addresses this by specifying a specific ubuntu version (e.g., `22.04`) and the version of `python3-pip` to guarantee reproducibility.  It also uses best practice like specifying a specific python version for greater clarity.

**How to reproduce:**
1. Clone this repository.
2. Build the buggy Dockerfile: `docker build -f DockerfileBug.dockerfile -t buggy-image .`
3. Build the fixed Dockerfile: `docker build -f DockerfileSolution.dockerfile -t fixed-image .`
4. Compare the resulting images. You will notice that the fixed image has more predictable behavior because of the explicit versioning.