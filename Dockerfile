# use with --net=host
FROM ubuntu
MAINTAINER mwaeckerlin
ENV TERM xterm 

ENV FRIENDLY_NAME "minidlna@docker"
ENV MODEL_NAME "minidlna"
ENV MEDIA_DIR "/data"
ENV ROOT_CONTAINER "B"
ENV OPTIONS "-R -v"
ENV ALBUM_ART_NAMES "Cover.jpg/cover.jpg/AlbumArtSmall.jpg/albumartsmall.jpg/AlbumArt.jpg/albumart.jpg/Album.jpg/album.jpg/Folder.jpg/folder.jpg/Thumb.jpg/thumb.jpg"
ENV LANG "en_US.UTF-8"

RUN apt-get update
RUN apt-get install -y minidlna language-pack-en
RUN mkdir /data
RUN chown minidlna.minidlna /data
RUN mkdir /config
ADD start.sh /start.sh

CMD /start.sh

VOLUME /data
VOlUME /config

EXPOSE 8200
EXPOSE 80
