echo 'Сейчас мы создадим скрипт и добавим его в службы '
echo
echo 'Создание собственного скрипта'
read -p 'Придумайте имя скрипта: ' name
echo
echo
echo 'имя вашего скрипта >>>>>>' $name '<<<<<<'
echo
echo
echo "если все верно запуститься текстовый редактор, вставте скрипт , сохраните  и закройте редактор" 
sleep 5
echo
echo '#!/bin/bash' >> /var/tmp/$name.sh
echo
gedit /var/tmp/$name.sh
echo 'Добавимляем права на запуск'
sleep 2
echo
echo
chmod +x /var/tmp/$name.sh
echo 'Создание нового сервиса systemd.'
sleep 2
echo
echo
echo '[Unit]\nDescription=Description for sample script goes here\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/var/tmp/'$name'.sh\nTimeoutStartSec=0\n\n[Install]\nWantedBy=default.target' >> /etc/systemd/system/$name.service
echo
echo
echo 'Перезапуск процесса systemd'
sleep 1
systemctl daemon-reload
echo
echo
echo 'Включение службы ' $name 
sleep 2
systemctl enable $name.service
echo
echo
echo 'Запуск сервиса ' $name
sleep 1
systemctl start $name.service
echo
echo
echo 'Перезагрузите компьютер, чтобы убедиться, что сценарии запускаются должным образом во время загрузки системы.'
echo
echo
echo 'Посмотреть список установленных системных модулей можно просто набрав в терминале команду systemctl'
echo
sleep 3 
