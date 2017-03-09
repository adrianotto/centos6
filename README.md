# centos6
Automated hourly build of centos:centos6

This is a repository that contains a public Dockerfile that uses the centos:centos6 base image and checks for new yum packages hourly from an automated build. If any packages updated, a UTC date encoded file is saved to the changes directory that contains a context diff of what RPM packages changed in the most recent build, and a second file is added that lists each updated package. That update kicks off an automated build in Docker Hub.

Using this image:

1) Use `FROM adrianotto/centos6:latest` at the first line in your Dockerfile.
2) Omit `yum -y update` from your Dockerfile.
3) `docker pull adrianotto/centos6` before starting your image build.

Each time you build a container image with `docker build .`, you will get the latest centos6 base image with updated packages without running `yum update` during your own image build. This means you'll spend less time building your container images. This is better than some other repositories that produce a new image every hour regardless if anything has changed in them.

Check the `changes` directory for a context diff for precise details about every package update. Look for the most recent changes/YYYY-MM-DD_hh_mm_ss_UTC_pagkage_updates.txt file for a list of all packages updated in the most recent image.
