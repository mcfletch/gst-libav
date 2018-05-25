#! /bin/bash
set -e
make clean
make
sudo cp .libs/libgstavvideoscale.so /usr/lib/x86_64-linux-gnu/gstreamer-1.0/
# GST_CAPS:5,basetransform:5,avvideoscale:5
#gdb gst-launch-1.0 --args \
#valgrind --tool=callgrind \
gst-launch-1.0 --gst-debug=video-info:5,3 \
    videotestsrc ! \
    capsfilter name=biginput caps="video/x-raw,format=I420,width=1920,height=1080,framerate=30001/1000" ! \
    avdeinterlace ! \
    avvideoscale ! \
    capsfilter name=smalloutput caps="video/x-raw,width=720,height=480" ! \
    gtksink
