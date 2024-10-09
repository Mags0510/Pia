nano honeypot.sh

$port=22

$logfile='honeypot.log'

echo 'Iniciando honeypot en el puerto $port. Registros en $logfile...'
while true; do

nc -l -p $port >> '$logfile' 2>&1
done

chmod +x honeypot.sh

sudo ./honeypot.sh
