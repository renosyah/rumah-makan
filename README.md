# Project Rumah Makan (CORE API)

## Require

- PHP 
- MysqlDB

## How to run

- open cmd in this directory and type 
    ```
        
        php -S localhost:80

    ```
- open web browser and go to `localhost:80`


## Api

- All rumah makan

```

http://localhost/api/all_closes_rumah_makan.php?offset=0&limit=10


```

- All closes rumah makan

```

http://localhost/api/all_closes_rumah_makan.php?current_latitude=-7.787520&current_longitude=110.432569&range=0.06&offset=0&limit=10


```