python3 baner.py 
sleep 3
echo 'Сейчас мы создадим скрипт и добавим его в службы '
echo
echo 'Создание собственного скрипта'
echo
read -p 'Придумайте имя скрипта: ' name
echo
echo 'имя вашего скрипта ‼️ ‼️ ‼️ ' $name  '‼️ ‼️ ‼️' '✅'
echo
echo "если все верно запуститься текстовый редактор, вставте скрипт , сохраните  и закройте редактор" 
sleep 5
echo
echo '✅ Все 👍 запуск Редактора'
sleep 2
echo '#!/bin/bash\n# Autor http://github.com/Cicadadenis/\n# Скрипт пишем с ‼️ ‼️ ‼️ 4 строки ‼️ ‼️ ‼️' >> /var/tmp/$name.sh
echo
gedit /var/tmp/$name.sh
echo 'Добавимляем права на запуск'
sleep 2
echo 'права получены ✅ '
sleep 2
echo
chmod +x /var/tmp/$name.sh
echo 'Создание нового сервиса systemd.'
sleep 2
echo ' Новая служба '$name' создана  ✅ '
sleep 2
echo
echo '[Unit]\nDescription=Description for sample script goes here\nAfter=network.target\n\n[Service]\nType=simple\nExecStart=/var/tmp/'$name'.sh\nTimeoutStartSec=0\n\n[Install]\nWantedBy=default.target' >> /etc/systemd/system/$name.service
echo
echo 'Перезапуск процесса systemd'
sleep 1
systemctl daemon-reload
echo
echo 'Включение службы ' $name 
sleep 2
echo 'Служба '$name' Включена  ✅ '
sleep 2
systemctl enable $name.service
echo
echo 'Запуск сервиса ' $name
sleep 1
systemctl start $name.service
echo
echo 'Cервис '$name.service' Запушен  ✅ '
sleep 2
echo '⚠️ Перезагрузите компьютер, чтобы убедиться, что сценарии запускаются должным образом во время загрузки системы. ⚠️'
echo
echo '⚠️ Посмотреть список установленных системных модулей можно просто набрав в терминале команду ✔️ systemctl ✔️ ⚠️'
echo
sleep 3 
