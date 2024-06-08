Güvenlik İzleme ve Olay Kaydı İnceleme
1. Güvenlik İzleme Dizinini Oluşturma
bash
Copy code
mkdir /var/log/güvenlik
2. Sistem İzleme Günlüğü Oluşturma
bash
Copy code
touch /var/log/güvenlik/sistem_izleme.log
3. Kullanıcı ve Faaliyet Günlüğü Oluşturma
bash
Copy code
last > /var/log/kullanıcı_faaliyeti.log
4. Ağ Bağlantılarını İzleme
bash
Copy code
netstat -tulpan > /var/log/ağ_bağlantıları.log
5. CPU Kullanımını İzleme
bash
Copy code
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head > /var/log/cpu_kullanımı.log
6. İzinsiz Erişim Girişimlerini İnceleme
bash
Copy code
grep -i "authentication failure" /var/log/auth.log > /var/log/izinsiz_erisim.log
7. Port Taraması Yapma ve Sonuçları İnceleme
bash
Copy code
nmap -sS -p 1-65535 localhost > /var/log/port_taraması.log
8. Güvenlik Duvarı Ayarlarını Kontrol Etme
bash
Copy code
iptables -L > /var/log/güvenlik_duvarı_kuralları.log
9. Günlük Dosyalarını Sıkıştırma ve Yedekleme
bash
Copy code
tar -czvf güvenlik_günlükleri.tar.gz /var/log/güvenlik
cp güvenlik_günlükleri.tar.gz /var/log/yedekler
10. Güvenlik Raporu Oluşturma
bash
Copy code
echo "Güvenlik Durumu Raporu" > /var/log/güvenlik_raporu.txt
echo "------------------------------------" >> /var/log/güvenlik_raporu.txt
echo "Son Kullanıcı Faaliyeti:" >> /var/log/güvenlik_raporu.txt
cat /var/log/kullanıcı_faaliyeti.log >> /var/log/güvenlik_raporu.txt
echo "Ağ Bağlantıları:" >> /var/log/güvenlik_raporu.txt
cat /var/log/ağ_bağlantıları.log >> /var/log/güvenlik_raporu.txt
echo "CPU Kullanımı:" >> /var/log/güvenlik_raporu.txt
cat /var/log/cpu_kullanımı.log >> /var/log/güvenlik_raporu.txt
echo "İzinsiz Erişim Girişimleri:" >> /var/log/güvenlik_raporu.txt
cat /var/log/izinsiz_erisim.log >> /var/log/güvenlik_raporu.txt
echo "Port Taraması Sonuçları:" >> /var/log/güvenlik_raporu.txt
cat /var/log/port_taraması.log >> /var/log/güvenlik_raporu.txt
echo "Güvenlik Duvarı Kuralları:" >> /var/log/güvenlik_raporu.txt
cat /var/log/güvenlik_duvarı_kuralları.log >> /var/log/güvenlik_raporu.txt
echo "------------------------------------" >> /var/log/güvenlik_raporu.txt
