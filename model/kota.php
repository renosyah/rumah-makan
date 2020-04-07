<?php

// menggabungkan kode dari file result_query.php
// yg mana result_query digunakan sebagai
// object yg digunakan untuk hasil
include("result_query.php");

// ini adalah class kota
// yg nantinya akan dijadikan object
class kota {
    
    // variabel id kota
    public $id;

    // variabel nama kota
    public $nama;

    // variabel total jumlah
    // wisata kuliner yg berada
    // dikota tersebut
    public $total;

    // konstruksi
    // fungsi yg akan dipanggil saat
    // membuat object
    public function __construct(){
    }

    // fungsi add yakni fungsi untuk menambah data ke database
    public function add($db) {

        // membuat object result_query
        $result_query = new result_query();

        // mengisi data dengan string ok
        $result_query->data = "ok";

        // perintah query untuk insert ke database
        $query = "INSERT INTO kota (nama) VALUES (?)";

        // prepare query
        $stmt = $db->prepare($query);

        // bind parameter yg akan di tambahkan ke query
        // untuk menghindari injeksi sql
        $stmt->bind_param('s', $this->nama);
    
        // eksekusi query
        $stmt->execute();

        // jika terjadi error
        if ($stmt->error != ""){

            // ganti nilai dari varibel error
            // menjadi pesan error saat meng-insert data kota
            $result_query->error =  "error at add new kota : ".$stmt->error;

            // ganti nilai dari varibel data
            // menjadi not ok
            $result_query->data = "not ok";
        }
        
        // tutup koneksi ke database
        $stmt->close();

        // balikkan result query
        // sebagai hasil dari fungsi
        return $result_query;
    }
    
    // fungsi add yakni fungsi untuk query hanya satu data ke database
    public function one($db) {
        
        // membuat object result_query
        $result_query = new result_query();

        // membuat object kota
        $one = new kota();

        // perintah query untuk melakukan query
        // satu data kota berdasarkan id dengan hanya 1 data saja
        // yg boleh direturn hasilnya
        $query = "SELECT id,nama,(SELECT COUNT(*) FROM rumah_makan WHERE kota_id = kota.id) as total FROM kota WHERE id=? LIMIT 1";
        
        // prepare query
        $stmt = $db->prepare($query);

        // bind parameter yg akan di tambahkan ke query
        // untuk menghindari injeksi sql
        $stmt->bind_param('i', $this->id);
    
        // eksekusi query
        $stmt->execute();

        // jika terjadi error        
        if ($stmt->error != ""){

            // ganti nilai dari varibel error
            // menjadi pesan error saat query data kota
            $result_query-> error = "error at query one kota : ".$stmt->error;

            // tutup koneksi
            $stmt->close();

            // balikan hasil dari query
            // sebagai nilai balik dari fungsi
            return $result_query;
        }

        // dapatkan nilai hasil query
        $result = $stmt->get_result()->fetch_assoc();

        // isi varibel id
        $one->id = $result['id'];

        // isi varibel nama
        $one->nama = $result['nama'];

        // isi varibel total
        $one->total = $result['total'];

        // isi nilai dari varibel data dengan
        // data satu kota dari object one
        $result_query->data = $one;

        // tutup koneksi ke database
        $stmt->close();

        // balikkan hasil query
        // sebagai hasil dari fungsi
        return $result_query;
    }
    
    // fungsi add yakni fungsi untuk query daftar data-data ke database
    public function all($db,$list_query) {

        // membuat object result_query
        $result_query = new result_query();

        // membuat array 
        $all = array();

        // perintah query data 
        // daftar kota dari database
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

        // prepare query        
        $stmt = $db->prepare($query);

        // membuat varibel search yg nilainya diambil dari parameter list_query
        $search = "%".$list_query->search_value."%";

        // membuat varibel offset yg nilainya diambil dari parameter list_query
        $offset = $list_query->offset;

        // membuat varibel limit yg nilainya diambil dari parameter list_query
        $limit =  $list_query->limit;

        // bind parameter yg akan di tambahkan ke query
        // untuk menghindari injeksi sql
        $stmt->bind_param('sii',$search ,$limit, $offset);
    
        // eksekusi query
        $stmt->execute();


        // jika terjadi error
        if ($stmt->error != ""){

            // ganti nilai dari varibel error
            // menjadi pesan error saat query data kota
            $result_query-> error = "error at query all kota : ".$stmt->error;

            // tutup koneksi ke database
            $stmt->close();

            // balikkan hasil query
            // sebagai nilai balik fungsi
            return $result_query;
        }

        // memanggil fungsi get result
        // untuk mendapatkan hasil
        // query dari database
        $rows = $stmt->get_result();

        // jika baris data adalah 0
        // yg artinya data kosong
        if($rows->num_rows == 0){

            // tutup koneksi ke database
            $stmt->close();

            // isi varibel data dengan array all
            $result_query->data = $all;

            // balikkan hasil query
            // sebagai nilai balik fungsi
            return $result_query;
        }

        // ambil setiap data dari hasil query
        // dari database
        while ($result = $rows->fetch_assoc()){

            // buat object kota
            $one = new kota();

            // isi nilai id
            $one->id = $result['id'];

             // isi nilai nama
            $one->nama = $result['nama'];

             // isi nilai total
            $one->total = $result['total'];

             // tambahkan object ke array
            array_push($all,$one);
        }

        // isi varibel data dengan array all
        $result_query->data = $all;

        // tutup koneksi ke database
        $stmt->close();

        // balikkan hasil query
        // sebagai nilai balik fungsi
        return $result_query;
    }


    // fungsi add yakni fungsi untuk query update data ke database
    public function update($db) {

        // membuat object result query
        $result_query = new result_query();

        // mengisi varibel data dengan
        // string ok
        $result_query->data = "ok";

        // perintah query untuk update data
        $query = "UPDATE kota SET nama = ? WHERE id=?";

        // prepare query
        $stmt = $db->prepare($query);

        // bind parameter yg akan di tambahkan ke query
        // untuk menghindari injeksi sql
        $stmt->bind_param('si', $this->nama,$this->id);
    
        // eksekusi query
        $stmt->execute();

        // jika terjadi error
        if ($stmt->error != ""){

            // ganti pesan error saat mengupdate data kota
            $result_query->error = "error at update one kota : ".$stmt->error;

            // ubah pesan data menjadi not ok
            $result_query->data = "not ok";

            // tutup koneksi ke database
            $stmt->close();

            // balikkan hasil query
            // sebagai nilai balik fungsi
            return $result_query;
        }

        // tutup koneksi ke database
        $stmt->close();

        // balikkan hasil query
        // sebagai nilai balik fungsi
        return $result_query;
    }
    
    // fungsi add yakni fungsi untuk query delete data ke database
    public function delete($db) {

        // membuat object result query
        $result_query = new result_query();

        // mengisi varibel data dengan
        // string ok
        $result_query->data = "ok";

        // perintah query untuk delete data
        $query = "DELETE FROM kota WHERE id=?";

        // query prepare
        $stmt = $db->prepare($query);

        // bind parameter yg akan di tambahkan ke query
        // untuk menghindari injeksi sql
        $stmt->bind_param('i', $this->id);
    
        // eksekusi query
        $stmt->execute();

        // jika terjadi error
        if ($stmt->error != ""){

            // ganti pesan error saat mengupdate data kota
            $result_query->error = "error at delete one kota : ".$stmt->error;
            
            // ubah pesan data menjadi not ok
            $result_query->data = "not ok";

            // tutup koneksi ke database
            $stmt->close();

            // balikkan hasil query
            // sebagai nilai balik fungsi
            return $result_query;
        }

        // tutup koneksi ke database
        $stmt->close();
        
        // balikkan hasil query
        // sebagai nilai balik fungsi
        return $result_query;
    }
}


?>