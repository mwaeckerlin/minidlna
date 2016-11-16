# Docker Image for MiniDLNA UPnP Server

Example:
    docker run -d --name minidlna --net=host --volumes-from boar-data -e FRIENDLY_NAME="pulsar" \
               -e MEDIA_DIR="/data/videos /data/bilder /data/bilder3d /data/bilder.mpo /data/musik" \
               mwaeckerlin/minidlna
