# use with --net=host
FROM ubuntu
MAINTAINER mwaeckerlin

env FRIENDLY_NAME "minidlna@docker"
env MODEL_NAME "minidlna"
env MEDIA_DIR "/data"
env ROOT_CONTAINER "B"
env OPTIONS "-R -v"
env ALBUM_ART_NAMES "Cover.jpg/cover.jpg/AlbumArtSmall.jpg/albumartsmall.jpg/AlbumArt.jpg/albumart.jpg/Album.jpg/album.jpg/Folder.jpg/folder.jpg/Thumb.jpg/thumb.jpg"

RUN apt-get update
RUN apt-get install -y minidlna
RUN mkdir /data
RUN chown minidlna.minidlna /data
RUN mkdir /config
ADD start.sh /start.sh

CMD /start.sh

VOLUME /data
VOlUME /config

EXPOSE 8200
EXPOSE 80
