<?php

include("result_query.php");

class rumah_makan {
    
    public $id;
    public $nama;
    public $url_menu;
    public $alamat;
    public $deskripsi;
    public $latitude;
    public $longitude;
    public $url_gambar;

    public function __construct(){
    }

    public function add($db) {

        $result_query = new result_query();
        $result_query->data = "ok";

        $query = "INSERT INTO rumah_makan (nama,url_menu,alamat,deskripsi,latitude,longitude,url_gambar) VALUES (?,?,?,?,?,?,?)";
        $stmt = $db->prepare($query);
        $stmt->bind_param('ssssdds', $this->nama,$this->url_menu,$this->alamat,$this->deskripsi,$this->latitude,$this->longitude,$this->url_gambar);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query->error =  "error at add new rumah makan : ".$stmt->error;
            $result_query->data = "not ok";
        }
        
        $stmt->close();

        return $result_query;
    }
    
    public function one($db) {
        $result_query = new result_query();

        $one = new rumah_makan();
        $query = "SELECT id,nama,url_menu,alamat,deskripsi,latitude,longitude,url_gambar FROM rumah_makan WHERE id=? LIMIT 1";
        $stmt = $db->prepare($query);
        $stmt->bind_param('i', $this->id);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query-> error = "error at query one rumah makan : ".$stmt->error;
            $stmt->close();
            return $result_query;
        }

        $result = $stmt->get_result()->fetch_assoc();

        $one->id = $result['id'];
        $one->nama = $result['nama'];
        $one->url_menu = $result['url_menu'];
        $one->alamat = $result['alamat'];
        $one->deskripsi = $result['deskripsi'];
        $one->latitude = $result['latitude'];
        $one->longitude = $result['longitude'];
        $one->url_gambar = $result['url_gambar'];
        $result_query->data = $one;

        $stmt->close();

        return $result_query;
    }
    
    public function all($db,$offset,$limit) {
        $result_query = new result_query();

        $all = array();
        $query = "SELECT id,nama,url_menu,alamat,deskripsi,latitude,longitude,url_gambar FROM rumah_makan LIMIT ? OFFSET ?";
        $stmt = $db->prepare($query);
        $stmt->bind_param('ii', $limit,$offset);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query-> error = "error at query all rumah makan : ".$stmt->error;
            $stmt->close();
            return $result_query;
        }

        $rows = $stmt->get_result();
        if($rows->num_rows == 0){
            $stmt->close();
            $result_query->data = $all;
            return $result_query;
        }

        while ($result = $rows->fetch_assoc()){
            $one = new rumah_makan();
            $one->id = $result['id'];
            $one->nama = $result['nama'];
            $one->url_menu = $result['url_menu'];
            $one->alamat = $result['alamat'];
            $one->deskripsi = $result['deskripsi'];
            $one->latitude = $result['latitude'];
            $one->longitude = $result['longitude'];
            $one->url_gambar = $result['url_gambar'];
            array_push($all,$one);
        }
        $result_query->data = $all;

        $stmt->close();

        return $result_query;
    }

    public function all_closes($db,$current_latitude,$current_longitude,$range,$offset,$limit) {
        $result_query = new result_query();

        $all = array();
        $query = "SELECT 
                    id,nama,url_menu,alamat,deskripsi,latitude,longitude,url_gambar
                FROM 
                    rumah_makan 
                WHERE
                    ((degrees(acos(sin(radians(?)) * sin(radians(latitude)) + cos(radians(?)) * cos(radians(latitude)) * cos(radians(? - longitude)))) * 60 * 1.1515) * 1.609344) < ?
                ORDER BY 
                    ((degrees(acos(sin(radians(?)) * sin(radians(latitude)) + cos(radians(?)) * cos(radians(latitude)) * cos(radians(? - longitude)))) * 60 * 1.1515) * 1.609344) ASC
                LIMIT ? OFFSET ?";

        $stmt = $db->prepare($query);
        $stmt->bind_param('dddddddii',$current_latitude,$current_latitude,$current_longitude,$range,$current_latitude,$current_latitude,$current_longitude,$limit,$offset);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query-> error = "error at query all closes rumah makan : ".$stmt->error;
            $stmt->close();
            return $result_query;
        }

        $rows = $stmt->get_result();
        if($rows->num_rows == 0){
            $stmt->close();
            $result_query->data = $all;
            return $result_query;
        }

        while ($result = $rows->fetch_assoc()){
            $one = new rumah_makan();
            $one->id = $result['id'];
            $one->nama = $result['nama'];
            $one->url_menu = $result['url_menu'];
            $one->alamat = $result['alamat'];
            $one->deskripsi = $result['deskripsi'];
            $one->latitude = $result['latitude'];
            $one->longitude = $result['longitude'];
            $one->url_gambar = $result['url_gambar'];
            array_push($all,$one);
        }
        $result_query->data = $all;

        $stmt->close();

        return $result_query;
    }
    
    public function update($db) {
        $result_query = new result_query();
        $result_query->data = "ok";

        $query = "UPDATE rumah_makan SET nama = ?,url_menu = ?,alamat = ?,deskripsi = ?,latitude = ?,longitude = ?,url_gambar = ? WHERE id=?";
        $stmt = $db->prepare($query);
        $stmt->bind_param('ssssddsi', $this->nama,$this->url_menu,$this->alamat,$this->deskripsi,$this->latitude,$this->longitude,$this->url_gambar,$this->id);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query-> error = "error at update one rumah makan : ".$stmt->error;
            $result_query->data = "not ok";
            $stmt->close();
            return $result_query;
        }

        $stmt->close();

        return $result_query;
    }
    
    public function delete($db) {
        $result_query = new result_query();
        $result_query->data = "ok";

        $query = "DELETE FROM rumah_makan WHERE id=?";
        $stmt = $db->prepare($query);
        $stmt->bind_param('i', $this->id);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query-> error = "error at delete one rumah makan : ".$stmt->error;
            $result_query->data = "not ok";
            $stmt->close();
            return $result_query;
        }
        $stmt->close();

        return $result_query;
    }
}


?>