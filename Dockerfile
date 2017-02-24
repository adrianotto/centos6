# 2017-02-23 Initial Build
FROM centos:centos6
MAINTAINER Adrian Otto
RUN yum clean all && yum update -y && yum clean all
