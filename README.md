# Project Rumah Makan (CORE API)

## Kebutuhan

- PHP 7
- MysqlDB or MariaDB

## Cara Menjalankan

- buka cmd di direktori ini lalu ketik
    ```
        
        php -S {YOUR_IP}:80

    ```
    atau

     ```
        
        php -S localhost:80

    ```
- buka web browser dan menuju url `localhost:80`


## Api

- Daftar rumah makan

```

http://localhost/api/all_rumah_makan.php?search_by=nama&search_value=RM&order_by=nama&order_dir=ASC&offset=0&limit=10


```

- Daftar rumah makan terdekat dengan radius dan posisi user

```

http://localhost/api/all_closes_rumah_makan.php?current_latitude=-7.792810&current_longitude=110.408499&range=1.0&search_by=nama&search_value=&offset=0&limit=10


```