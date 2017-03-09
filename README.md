# centos6
Automated hourly build of centos:centos6

This is a repository that contains a public Dockerfile that uses the centos:centos6 base image and checks for new yum packages hourly from an automated build. If any packages updated, a UTC date encoded file is saved to the changes directory that contains a context diff of what RPM packages changed in the most recent build, and a second file is added that lists each updated package. That update kicks off an automated build in Docker Hub.

If you use `FROM adrianotto/centos6:latest` at the first line in your Dockerfiles, then each time you build a container image, you will get the latest centos6 base image with updated packages without running `yum update` during the build process. This means you'll spend less time building tour own container images. This is better than some other repositories that produce a new image every hour regardless if anything has changed in them.

Check the `changes` directory for a context diff of every package change to the package list for every new build of the docker image.
