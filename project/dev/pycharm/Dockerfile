RUN wget \
	https://download.jetbrains.com/python/pycharm-community-2016.3.3.tar.gz	\
	-O /pycharm-community-2016.3.3.tar.gz
RUN tar xzvf /pycharm-community-2016.3.3.tar.gz

# https://stackoverflow.com/questions/29741518/centos-error-libxext-so-6-cannot-open-shared-object-file-no-such-file-or-dir
RUN apt install libxext6 libxtst6

COPY run.sh /launch_pycharm.sh
RUN chmod +x /launch_pycharm.sh

ADD .java /root/.java
ADD .PyCharmCE2016.3 /root/.PyCharmCE2016.3

# COPY entry-point.sh /entry-point.sh
# RUN chmod +x /entry-point.sh

# ENTRYPOINT ["/entry-point.sh"]
CMD ["/launch_pycharm.sh"]