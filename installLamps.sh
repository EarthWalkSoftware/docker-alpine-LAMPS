#!/bin/sh

cp -rf /lamps/. $LAMPS

chmod -R 775 $LAMPS 
chown -R $LUID:$LGID $LAMPS
