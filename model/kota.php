<?php

include("result_query.php");

class kota {
    
    public $id;
    public $nama;
    public $total;

    public function __construct(){
    }

    public function add($db) {

        $result_query = new result_query();
        $result_query->data = "ok";

        $query = "INSERT INTO kota (nama) VALUES (?)";
        $stmt = $db->prepare($query);
        $stmt->bind_param('s', $this->nama);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query->error =  "error at add new kota : ".$stmt->error;
            $result_query->data = "not ok";
        }
        
        $stmt->close();

        return $result_query;
    }
    
    public function one($db) {
        $result_query = new result_query();

        $one = new kota();
        $query = "SELECT id,nama,(SELECT COUNT(*) FROM rumah_makan WHERE kota_id = kota.id) as total FROM kota WHERE id=? LIMIT 1";
        $stmt = $db->prepare($query);
        $stmt->bind_param('i', $this->id);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query-> error = "error at query one kota : ".$stmt->error;
            $stmt->close();
            return $result_query;
        }

        $result = $stmt->get_result()->fetch_assoc();

        $one->id = $result['id'];
        $one->nama = $result['nama'];
        $one->total = $result['total'];
        $result_query->data = $one;

        $stmt->close();

        return $result_query;
    }
    
    public function all($db,$list_query) {
        $result_query = new result_query();

        $all = array();
        $query = "SELECT 
                    id,nama,(SELECT COUNT(*) FROM rumah_makan WHERE kota_id = kota.id) as total
                FROM 
                    kota
                WHERE
                    ".$list_query->search_by." LIKE ?
                ORDER BY
                    ".$list_query->order_by." ".$list_query->order_dir." 
                LIMIT ? 
                OFFSET ?";

        $stmt = $db->prepare($query);

        $search = "%".$list_query->search_value."%";
        $offset = $list_query->offset;
        $limit =  $list_query->limit;
        $stmt->bind_param('sii',$search ,$limit, $offset);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query-> error = "error at query all kota : ".$stmt->error;
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
            $one = new kota();
            $one->id = $result['id'];
            $one->nama = $result['nama'];
            $one->total = $result['total'];
            array_push($all,$one);
        }
        $result_query->data = $all;

        $stmt->close();

        return $result_query;
    }

    public function update($db) {
        $result_query = new result_query();
        $result_query->data = "ok";

        $query = "UPDATE kota SET nama = ? WHERE id=?";
        $stmt = $db->prepare($query);
        $stmt->bind_param('si', $this->nama,$this->id);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query-> error = "error at update one kota : ".$stmt->error;
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

        $query = "DELETE FROM kota WHERE id=?";
        $stmt = $db->prepare($query);
        $stmt->bind_param('i', $this->id);
    
        $stmt->execute();
        if ($stmt->error != ""){
            $result_query-> error = "error at delete one kota : ".$stmt->error;
            $result_query->data = "not ok";
            $stmt->close();
            return $result_query;
        }
        $stmt->close();

        return $result_query;
    }
}


?>