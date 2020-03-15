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

http://localhost/api/all_rumah_makan.php?search_by=nama&search_value=RM&order_by=nama&order_dir=ASC&offset=0&limit=10


```

- All closes rumah makan

```

http://localhost/api/all_closes_rumah_makan.php?current_latitude=-7.792810&current_longitude=110.408499&range=1.0&search_by=nama&search_value=RM 2&order_by=nama&order_dir=ASC&offset=0&limit=10


```