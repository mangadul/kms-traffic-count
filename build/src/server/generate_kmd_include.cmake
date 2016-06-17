  execute_process (COMMAND /usr/bin/kurento-module-creator -r /home/mangadul/kurento/trafic-count/traffic-count/src/server/interface -dr /usr/share/kurento/modules -o /home/mangadul/kurento/trafic-count/traffic-count/build/src/server/)

  file (READ /home/mangadul/kurento/trafic-count/traffic-count/build/src/server/traffic-count.kmd.json KMD_DATA)

  string (REGEX REPLACE "\n *" "" KMD_DATA ${KMD_DATA})
  string (REPLACE "\"" "\\\"" KMD_DATA ${KMD_DATA})
  string (REPLACE "\\n" "\\\\n" KMD_DATA ${KMD_DATA})
  set (KMD_DATA "\"${KMD_DATA}\"")

  file (WRITE /home/mangadul/kurento/trafic-count/traffic-count/build/src/server/traffic-count.kmd.json ${KMD_DATA})
