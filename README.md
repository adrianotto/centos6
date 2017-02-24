# centos6
Automated hourly build of centos:centos6

This is a repository that contains a public Dockerfile that uses the centos:centos6 base image and checks for new yum packages hourly from an automated build. If new packages are changes, a UTC date encoded file is saved to the changes directory taht contains a context diff of what RPM packages changed in the most recent build. That update kicks off an automated build in Docker Hub.a

If you use `FROM adrianotto/centos6:latest` at the first line in your Dockerfiles, then each time you run your containers you will get the latest centos6 base image with updated packages, only if new packages were applied in the past hour. This means you'll spend less time waiting for "yum -y update" to run in your own container builds. This is better than some other repositories that produce a new image every hour regardless if anything has changed in them.

Check the `changes` directory for a context diff of every package change to the package list for every new build of the docker image.
