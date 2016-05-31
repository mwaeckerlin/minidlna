#! /bin/bash -ex

if ! test -f /config/minidlna.conf; then
    cat > /config/minidlna.conf <<EOF
media_dir=${MEDIA_DIR}
port=8200
serial=$(tr -dc '0-9' < /dev/urandom | fold -w 15 | head -n 1)
album_art_names=${ALBUM_ART_NAMES}
friendly_name=${FRIENDLY_NAME}
inotify=ye
media_dir=${MEDIA_DIR}
model_name=${MODEL_NAME}
root_container=${ROOT_CONTAINER}
user=minidlna
EOF
fi

minidlnad ${OPTIONS} -S -f /config/minidlna.conf