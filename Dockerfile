FROM pablozaiden/docker-media-converter:latest
LABEL org.freenas.interactive="false"                              \
      org.freenas.version="latest"                                 \
      org.freenas.upgradeable="false"                             \
      org.freenas.expose-ports-at-host="false"                     \
      org.freenas.autostart="false"                                \
      org.freenas.volumes="[						                          \
          {								                                        \
              \"name\":\"/media\",				        \
              \"descr\": \"Storj configuration files\"			      \
          }                                                      \
      ]"
