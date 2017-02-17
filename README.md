# Docker Image for MiniDLNA UPnP Server

If you have a lot of files, e.g. hundred thousand, set inodes acoordingly, e.g. to a million

Example:
    echo 1000000 > /proc/sys/fs/inotify/max_user_watches
    docker run -d --name minidlna --net=host --volumes-from boar-data -e FRIENDLY_NAME="pulsar" \
               -e MEDIA_DIR="/data/videos /data/bilder /data/bilder3d /data/bilder.mpo /data/musik" \
               mwaeckerlin/minidlna
