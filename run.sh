#!/bin/sh

SHARE_DIR=/share/kocom

mkdir -p $SHARE_DIR
if [ ! -f $SHARE_DIR/kocom2.conf ]; then
	mv /kocom2.conf $SHARE_DIR
fi
if [ ! -f $SHARE_DIR/kocom2.py ]; then
	mv /kocom2.py $SHARE_DIR
fi

echo "[Info] Run Kocom Wallpad with RS485!"
cd $SHARE_DIR
python3 $SHARE_DIR/kocom.py

# for dev
while true; do echo "still live"; sleep 100; done
