#!/bin/bash

# Запуск ping_counter_Cloudflare.py и запись логов в log_Cloudflare.txt
# (Добавление & позволяет скрипту работать в фоне)
python3 ping_counter_Cloudflare.py >> log_Cloudflare.txt &

# Запуск ping_counter_google.py
python3 ping_counter_google.py >> log_google.txt &

# Запуск ping_counter_yandex.py
python3 ping_counter_yandex.py >> log_yandex.txt &

# Запуск ping_counter_Quad9.py
python3 ping_counter_Quad9.py >> log_Quad9.txt &

# Запуск ping_counter_OpenDNS.py
python3 ping_counter_OpenDNS.py >> log_OpenDNS.txt &

# Запуск ping_counter_Comodo.py
python3 ping_counter_Comodo.py >> log_Comodo.txt &

echo "Все скрипты мониторинга запущены в фоне."
echo "Логи записываются в соответствующие файлы (log_*.txt)."
