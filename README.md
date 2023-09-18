# Docker Demo Project  

## Development

### Docker

Файл ```docker-compose-dev.yml``` переименовать в ```docker-compose.yml```

1. Установить зависимости для ReactJS  
```make npm-install```  
2. Собрать и запустить контейнеры  
```make init```  
3. Тестовый адрес frontend   
```http://localhost:80```  
4. Тестовый адрес backend  
```http://localhost:8081```  
5. Обращаться к backend только по внутренней сети докера  
```http://api```

## Production  

### Docker

Файл ```docker-compose-prod.yml``` переименовать в ```docker-compose.yml```  

Установить на сервере  
```docker```  
```docker-compose```

Прописать домен
```gateway/docker/production/nginx/conf.d/default.conf```

1. Установить зависимости для ReactJS  
```make npm-install```
2. Собрать frontend  
```make build-react-app```  
3. Собрать и запустить контейнеры  
```make init```

### SSH (Если сертификат еще не выпущен)  

Редактируем файл **init-letsencrypt.sh**  
```domains=(yoursite.ru www.yoursite.ru)```  
```data_path="./certbot_folder"```  

Устанавливаем права  
```chmod +x init-letsencrypt.sh```  

Создаем сертификат с поднятием временного docker контейнера  
```./init-letsencrypt.sh```


