# Docker Demo Project  

## Базовые установки  

Coming soon  

## SSH (Если сертификат еще не выпущен)  

Редактируем файл **init-letsencrypt.sh**  
```domains=(yoursite.ru www.yoursite.ru)```  
```data_path="./certbot_folder"```  

Устанавливаем права  
```chmod +x init-letsencrypt.sh```  

Создаем сертификат с поднятием временного docker контейнера  
```./init-letsencrypt.sh```  


