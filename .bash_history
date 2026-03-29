ip link show
sudo hostnamectl set-hostname mephi-2026.domain.local
ip link show

[200~sudo nmcli con mod eth0 ipv4.addresses 192.168.1.100/24
sudo nmcli con mod eth0 ipv4.gateway 192.168.1.1
sudo nmcli con mod wlp13s0 ipv4.addresses 192.168.1.100/24
sudo nmcli con mod wlp13s0 ipv4.gateway 192.168.1.1
sudo nmcli con mod wlp13s0 ipv4.dns "8.8.8.8"
sudo nmcli con mod wlp13s0 ipv4.method manual
reset
nmcli
sudo nmcli con mod lo ipv4.addresses 192.168.1.100/24
sudo nmcli con mod lo ipv4.gateway 192.168.1.1
sudo nmcli con mod lo ipv4.dns "8.8.8.8"
sudo nmcli con mod lo ipv4.method manual
sudo nmcli con up lo
ip route show default
ping -c 4 8.8.8.8 > /tmp/network_check.txt
ping -c 4 192.168.1.1 >> /tmp/network_check.txt
dnf install -y nginx tcpdump libcap-ng-utils
sudo dnf download tcpdump --destdir /tmp
dnf download tcpdump --destdir /tmp
rpm -ivh /tmp/tcpdump*.rpm
sudo fdisk /dev/sdb
sudo mkfs.ext4 -L MEPHI_DATA /dev/sdb1

рименения изменений
nmcli connection down lo
nmcli connection up lo
ip addr show lo
cat /etc/resolv.conf
cat /etc/resolv.conf
lsblk
sudo fdisk /dev/sda
reset
ip route show default
sudo fdisk /dev/sdb
cat /tmp/network_check.txt
lsblk
fdisk /dev/sda
lsblk
kfs.ext4 -L MEPHI_DATA /dev/sda1
mkfs.ext4 -L MEPHI_DATA /dev/sda1
mkdir -p /data/mephi-web
echo "LABEL=MEPHI_DATA /data/mephi-web ext4 defaults 0 0" >> /etc/fstab
mount -a
df -h /data/mephi-web
systemctl enable nginx
systemctl start nginx
systemctl status nginx
journalctl -u nginx --since "5 minutes ago" > /tmp/nginx_recent_logs.txt
cat /tmp/nginx_recent_logs.txt
groupadd mephi-devs
useradd -m -G mephi-devs mephi-admin
echo "P@ssw0rd2026" | passwd --stdin mephi-admin
echo 'LABEL=MEPHI_DATA /data/mephi-web ext4 defaults 0 2' | sudo tee -a /etc/fstab
sudo mount -a
sudo useradd mephi-admin
sudo groupadd mephi-devs
sudo usermod -aG mephi-devs mephi-admin
echo "P@ssw0rd2026" | passwd --stdin mephi-admin
[200~sudo chown mephi-admin:mephi-devs /data/mephi-web
sudo chmod 2775 /data/mephi-web
sudo chown mephi-admin:mephi-devs /data/mephi-web
sudo chmod 2775 /data/mephi-web
sudo setenforce Enforcing
getenforce
sudo semanage fcontext -a -t httpd_sys_content_t "/data/mephi-web(/.*)?"
sudo restorecon -R /data/mephi-web
# Снимите SUID, если есть
sudo chmod u-s /usr/sbin/tcpdump
# Добавьте capabilities
sudo setcap cap_net_raw,cap_net_admin+ep /usr/sbin/tcpdump
sudo -u mephi-admin tcpdump --help
echo "root" | sudo tee /etc/ssh/denied_users
echo 'auth required pam_listfile.so item=user sense=deny file=/etc/ssh/denied_users onerr=succeed' | sudo tee -a /etc/pam.d/sshd
sudo systemctl restart sshd
su - mephi-admin
echo "Hello from Student: 255990" > /data/mephi-web/index.html
sudo nano /etc/nginx/nginx.conf
sudo systemctl restart nginx
curl http://localhost
curl http://192.168.1.100
sudo mount -a
cat /etc/nginx/nginx.conf
ls -la /data/mephi-web/
nginx -t  # проверка синтаксиса конфига
# Применяем контекст для веб-контента (httpd_sys_content_t) к новой директории
semanage fcontext -a -t httpd_sys_content_t "/data/mephi-web(/.*)?"
restorecon -Rv /data/mephi-web
# Перезапускаем nginx для применения изменений
systemctl restart nginx
curl http://192.168.1.100
# Назначаем capability CAP_NET_RAW и CAP_NET_ADMIN для захвата пакетов без прав root
setcap cap_net_raw,cap_net_admin+ep /usr/sbin/tcpdump
# Проверяем назначение
getcap /usr/sbin/tcpdump > /tmp/tcpdump_capabilities.txt
cat /tmp/tcpdump_capabilities.txt
# Проверяем, что пользователь mephi-admin может запустить tcpdump
sudo -u mephi-admin tcpdump --help
echo "PermitRootLogin no" >> /etc/ssh/sshd_config
# Или используйте sed для замены, если строка уже есть
# sed -i 's/#PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
# sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
systemctl restart sshd
reset
echo "root" | sudo tee /etc/denied_users
echo "Hello from Student: 12345" | sudo tee /data/mephi-web/index.html
curl http://localhost
sudo chown -R www-data:www-data /data/mephi-web
# Создаем группу и пользователя
sudo groupadd mephi-devs
sudo useradd -G mephi-devs mephi-admin
echo "mephi-admin:P@ssw0rd2026" | sudo chpasswd
# Создаем директорию (если нет) и меняем владельца
sudo mkdir -p /data/mephi-web
sudo chown mephi-admin:mephi-devs /data/mephi-web
# Устанавливаем права 2775 (setgid)
sudo chmod 2775 /data/mephi-web
# Проверяем и включаем Enforcing
sudo setenforce 1
# Устанавливаем контекст SELinux для nginx
sudo semanage fcontext -a -t httpd_sys_content_t "/data/mephi-web(/.*)?"
sudo restorecon -R -v /data/mephi-web
# Настройка Capabilities для tcpdump
sudo chmod u-s /usr/sbin/tcpdump
sudo setcap 'cap_net_raw,cap_net_admin+ep' /usr/sbin/tcpdump
# Проверка (выполнится от mephi-admin без sudo)
sudo -u mephi-admin tcpdump --help
# Создаем страницу (замените 12345 на ваш номер)
sudo -u mephi-admin bash -c 'echo "Hello from Student: 12345" > /data/mephi-web/index.html'
# Проверка доступности
curl http://localhost
sudo nano /etc/nginx/nginx.conf
sudo nano /etc/nginx/nginx.conf
curl http://localhost
sudo systemctl restart nginx
curl http://localhost
'




lk


reset

