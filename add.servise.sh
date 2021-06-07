python3 baner.py 
sleep 3
echo '\033[1m\033[31m Сейчас мы создадим скрипт и добавим его в службы '
echo
echo '\033[1m\033[31m Создание собственного скрипта'
read -p '\033[1m\033[31m Придумайте имя скрипта: ' name
echo
echo
echo '\033[1m\033[31m имя вашего скрипта ‼️ ‼️ ‼️ ' $name '‼️ ‼️ ‼️'
echo
echo
echo "если все верно запуститься текстовый редактор, вставте скрипт , сохраните  и закройте редактор" 
sleep 5
echo
echo '#!/bin/bash\n# Autor http://github.com/Cicadadenis/\n# Скрипт пишем с ‼️ ‼️ ‼️ 4 строки ‼️ ‼️ ‼️' >> /var/tmp/$name.sh
echo
gedit /var/tmp/$name.sh
echo '\033[1m\033[31m Добавимляем права на запуск'
sleep 2
echo
echo
chmod +x /var/tmp/$name.sh
echo '\033[1m\033[31m Создание нового сервиса systemd.'
sleep 2
echo
echo
echo '[Unit]\nDescription=Description for sample script goes here\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/var/tmp/'$name'.sh\nTimeoutStartSec=0\n\n[Install]\nWantedBy=default.target' >> /etc/systemd/system/$name.service
echo
echo
echo '\033[1m\033[31m Перезапуск процесса systemd'
sleep 1
systemctl daemon-reload
echo
echo
echo '\033[1m\033[31m Включение службы ' $name 
sleep 2
systemctl enable $name.service
echo
echo
echo '\033[1m\033[31m Запуск сервиса ' $name
sleep 1
systemctl start $name.service
echo
echo
echo '\033[1m\033[31m Перезагрузите компьютер, чтобы убедиться, что сценарии запускаются должным образом во время загрузки системы.'
echo
echo
echo '\033[1m\033[31m Посмотреть список установленных системных модулей можно просто набрав в терминале команду systemctl'
echo
sleep 3 
