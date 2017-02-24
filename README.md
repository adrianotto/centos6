# centos6
Automated hourly build of centos:centos6

This is a repository that contains a public Dockerfile that uses the centos:centos6 base image and updates it hourly with yum update. If you use `FROM adrianotto/centos6:latest` at the first line in your Dockerfiles, then each time you run your containers you will get the very latest centos6 base image with updated packages. This means you'll spend less time waiting for "yum -y update" to run in your own container builds.
