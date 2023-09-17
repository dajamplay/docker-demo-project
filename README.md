# Docker Demo Project  

## Базовые настройки
Установить на сервере  
```docker```  
```docker-compose```  

Прописать домен
```gateway/docker/production/nginx/conf.d/frontend.conf```

## SSH (Если сертификат еще не выпущен)  

Редактируем файл **init-letsencrypt.sh**  
```domains=(yoursite.ru www.yoursite.ru)```  
```data_path="./certbot_folder"```  

Устанавливаем права  
```chmod +x init-letsencrypt.sh```  

Создаем сертификат с поднятием временного docker контейнера  
```./init-letsencrypt.sh```  


