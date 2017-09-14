#!/bin/sh

# =========================================================================
# =========================================================================
#
#	installLamps
#	  Shell script to install the LAMPS scripts and exit.
#
# =========================================================================
#
# @author Jay Wheeler.
# @version 0.1.0
# @copyright © 2017. EarthWalk Software.
# @license Licensed under the Academic Free License version 3.0
# @package LAMPS
# @subpackage installLamps
#
# =========================================================================
#
#	Copyright © 2017. EarthWalk Software
#	Licensed under the Academic Free License, version 3.0.
#
#	Refer to the file named License.txt provided with the source,
#	or from
#
#		http://opensource.org/licenses/academic.php
#
# =========================================================================
# =========================================================================
echo "LAMPS=${LAMPS}" >> /lamps-config/lamps-config
echo "LAMPS_DATA=${LDATA}" >> /lamps-config/lamps-config
echo "LAMPS_CONFIG=${LCONFIG}" >> /lamps-config/lamps-config

cp -rf /lamps-config/lamps-config $LCONFIG/.lamps
cp -rf /lamps/. $LAMPS

#echo "LAMPS=${LAMPS}" >> $LCONFIG/.lamps
#echo "LAMPS_DATA=${LDATA}" >> $LCONFIG/.lamps
#echo "LAMPS_CONFIG=${LCONFIG}" >> $LCONFIG/.lamps

chmod -R 775 $LAMPS
chmod -R 774 $LCONFIG

chown -R $LUID:$LGID $LAMPS
chown -R $LUID:$LGID $LCONFIG

