sleep 20s
killall conky
cd "/home/cbrill/.conky"
conky -c "/home/cbrill/.conky/01-system-monitor.conf" &
cd "/home/cbrill/.conky"
conky -c "/home/cbrill/.conky/02-time.conf" &
cd "/home/cbrill/.conky"
conky -c "/home/cbrill/.conky/03-todotxt.conf" &
