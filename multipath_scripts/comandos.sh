#### Implementacion de comandos shell para multipath

### Reinicio de multipath
service multipathd restart

### Borrado de multipath ejemplo UUID: 36005076802810922180000000000003e
multipath -f [UUID]

### Reescaneo de puertos
echo  "- - -" > /sys/class/scsi_host/host1/scan
echo  "- - -" > /sys/class/scsi_host/host2/scan

### Reescaneo de FO
echo 1 > /sys/class/fc_host/host1/issue_lip
echo 1 > /sys/class/fc_host/host2/issue_lip

### Borrado de dispositivos huerfanos en multipath device [device]=sdv
echo 1 > /sys/block/[device]/device/delete




