#!/bin/bash

echo "Запуск лаунчера"
if [[ $1 == "log" ]]
then
	echo "ВНИМАНИЕ запуск происходит в режиме отображения логов"
	java -jar *.jar
elif [[ $1 == "writelog" ]]
then
	echo "ВНИМАНИЕ запуск произходит в режиме записи логов"
	java -jar *.jar 2>errlog.txt >log.txt
	echo "Логи сохраненны в файлах errlog.txt и log.txt"
elif [[ $1 == "null" ]]
then
	echo "ВНИМАНИЕ запуск происходит в режиме удаления логов"
	java -jar *.jar 2>/dev/null >/dev/null
elif [[ $1 == "help" ]]
then
	echo "Это скрипт для запуска лаунчера майнкарфт"
	echo "Список доступных опций для запуска лаунчера:"
	echo "./start log       -  отобразит лог запуска в терминал"
	echo "./start writelog  -  запишет логи запуска в текстовый файл"
	echo "./start null      -  не будет отображать и сохранять логи"
	echo "./start help      -  отобразить справку"
	echo "Если у вас возникли какие либо проблемы, то пишете на почту primerovmax@gmail.com"
elif [[ $1 == "" ]]
then
	echo "Запуск в штатном режиме"
	java -jar *.jar
elif [[ $1 != "help" || $1 != "null" || $1 != "log" || $1 != "writelog" ]]
then
	echo "ОШИБКА $1 опции не существует наберите ./start help для справки"
        exit 1	
else
	echo "Вы не указали ни одной опции при запуске, для просмотра справки наберите ./start help"
	exit 1
fi
echo "Запуск завершен"
exit 0
