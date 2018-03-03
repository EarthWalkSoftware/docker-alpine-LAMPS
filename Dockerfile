# =========================================================================
# =========================================================================
#
#	Dockerfile
#	  Dockerfile to create the earthwalksoftware/alpine-LAMPS scripts.
#
# =========================================================================
#
# @author Jay Wheeler.
# @version 0.1.1
# @copyright © 2017, 2018. EarthWalk Software.
# @license Licensed under the Academic Free License version 3.0
# @package EarthWalkSoftware/LAMPS
# @subpackage Dockerfile
#
# =========================================================================
#
#	Copyright © 2017, 2018. EarthWalk Software
#	Licensed under the Academic Free License, version 3.0.
#
#	Refer to the file named License.txt provided with the source,
#	or from
#
#		http://opensource.org/licenses/academic.php
#
# =========================================================================
# =========================================================================
FROM nimmis/alpine-micro:latest

MAINTAINER Jay Wheeler <earthwalksoftware@gmail.com>

#VOLUME /scripts
#VOLUME /config
#VOLUME /data-lamps

ENV LUID=0
ENV LGID=0

ENV LAMPS=/scripts/bin
ENV LCONFIG=/config
ENV LDATA=/data-lamps

VOLUME /scripts
VOLUME /config
VOLUME /data-lamps

COPY root/. /

COPY installLamps.sh /
RUN chmod +x /installLamps.sh

CMD ["/installLamps.sh"]
