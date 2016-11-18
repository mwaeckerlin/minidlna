#! /bin/bash -ex

cat > /config/minidlna.conf <<EOF
$(for d in  ${MEDIA_DIR}; do
    echo "media_dir=${d}"
  done)
port=8200
serial=$(tr -dc '0-9' < /dev/urandom | fold -w 15 | head -n 1)
album_art_names=${ALBUM_ART_NAMES}
friendly_name=${FRIENDLY_NAME}
inotify=ye
model_name=${MODEL_NAME}
root_container=${ROOT_CONTAINER}
user=minidlna
EOF

minidlnad ${OPTIONS} -S -f /config/minidlna.conf
