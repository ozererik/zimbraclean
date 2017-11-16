# zimbraclean
Belirli bir e-posta adresinden gelen e-postayı tüm kullanıcılardan silmek işlemini Zimbra E-Posta Sunucusunda gerçekleştirir.

Zimbra kullanıcısı ile çalıştırılmalıdır. 

Betik çalıştırılmadan önce aşağıdaki komut ile tüm adresler geçici bir temp dosyasına yazılmalıdır.

zmprov -l gaa | grep domain.com(kendi alan adınız) > /tmp/temp_email

Komut Kullanimi:  ./birindengelenmesajiherkestensil.sh gondericiadres" 
