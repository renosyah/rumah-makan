<?php

// menggabungkan kode dari file result_query.php
// yg mana result_query digunakan sebagai
// object yg digunakan untuk hasil
include("result_query.php");

// ini adalah class rumah_makan
// yg nantinya akan dijadikan object
class rumah_makan {

    // variabel id rumah_makan
    public $id;

    // variabel kota id    
    public $kota_id;

    // variabel nama
    public $nama;

    // variabel url_menu
    public $url_menu;

    // variabel alamat
    public $alamat;

    // variabel deskripsi
    public $deskripsi;
    
    // variabel latitude
    public $latitude;

    // variabel longitude
    public $longitude;

    // variabel url_gambar
    public $url_gambar;

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
        $query = "INSERT INTO rumah_makan (nama,kota_id,url_menu,alamat,deskripsi,latitude,longitude,url_gambar) VALUES (?,?,?,?,?,?,?,?)";
        
        // query prepare
        $stmt = $db->prepare($query);

        // bind parameter yg akan di tambahkan ke query
        // untuk menghindari injeksi sql
        $stmt->bind_param('sisssdds', $this->nama,$this->kota_id,$this->url_menu,$this->alamat,$this->deskripsi,$this->latitude,$this->longitude,$this->url_gambar);
     
        // eksekusi query
        $stmt->execute();

        // jika terjadi error
        if ($stmt->error != ""){

            // ganti nilai dari varibel error
            // menjadi pesan error saat meng-insert data rumah makan
            $result_query->error =  "error at add new rumah makan : ".$stmt->error;

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

         // membuat object rumah makan
        $one = new rumah_makan();

        // perintah query untuk melakukan query
        // satu data rumah makan berdasarkan id dengan hanya 1 data saja
        // yg boleh direturn hasilnya
        $query = "SELECT id,kota_id,nama,url_menu,alamat,deskripsi,latitude,longitude,url_gambar FROM rumah_makan WHERE id=? LIMIT 1";
       
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
            // menjadi pesan error saat menquery data rumah makan 
            $result_query-> error = "error at query one rumah makan : ".$stmt->error;

            // tutup koneksi ke database
            $stmt->close();

            // balikan hasil dari query
            // sebagai nilai balik dari fungsi
            return $result_query;
        }

        // dapatkan nilai hasil query
        $result = $stmt->get_result()->fetch_assoc();

        // isi varibel id
        $one->id = $result['id'];

        // isi varibel kota id
        $one->kota_id = $result['kota_id'];
        
        // isi varibel nama
        $one->nama = $result['nama'];
        
        // isi varibel url menu
        $one->url_menu = $result['url_menu'];
        
        // isi varibel alamat
        $one->alamat = $result['alamat'];
        
        // isi varibel deskripsi
        $one->deskripsi = $result['deskripsi'];
        
        // isi varibel latitude
        $one->latitude = $result['latitude'];
        
        // isi varibel longitude
        $one->longitude = $result['longitude'];
        
        // isi varibel url gambar
        $one->url_gambar = $result['url_gambar'];
        
        // isi nilai dari varibel data dengan
        // data satu rumah makan dari object one
        $result_query->data = $one;

        // tutup koneksi ke database
        $stmt->close();

        // balikan hasil dari query
        // sebagai nilai balik dari fungsi
        return $result_query;
    }
    
    // fungsi add yakni fungsi untuk query daftar data-data ke database
    public function all($db,$list_query) {

        // membuat object result_query
        $result_query = new result_query();

        // membuat array 
        $all = array();

        // perintah query data 
        // daftar rumah makan dari database
        $query = "SELECT 
                    id,kota_id,nama,url_menu,alamat,deskripsi,latitude,longitude,url_gambar 
                FROM 
                    rumah_makan
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
            // menjadi pesan error saat query data rumah makan
            $result_query-> error = "error at query all rumah makan : ".$stmt->error;

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

            // membuat object rumah makan
            $one = new rumah_makan();

            // isi varibel id
            $one->id = $result['id'];

            // isi varibel kota id
            $one->kota_id = $result['kota_id'];

            // isi varibel nama
            $one->nama = $result['nama'];

            // isi varibel url menu
            $one->url_menu = $result['url_menu'];

            // isi varibel alamat
            $one->alamat = $result['alamat'];

            // isi varibel deskripsi
            $one->deskripsi = $result['deskripsi'];

            // isi varibel latitude
            $one->latitude = $result['latitude'];

            // isi varibel longitude
            $one->longitude = $result['longitude'];

            // isi varibel url gambar
            $one->url_gambar = $result['url_gambar'];

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

    // fungsi add yakni fungsi untuk query daftar data-data ke database
    // hamun hanya data-data rumah makan terdekat dengan paramter
    // lokasi user dan radius
    public function all_closes($db,$current_latitude,$current_longitude,$range,$list_query) {

        // membuat object result_query
        $result_query = new result_query();
        
        // membuat array 
        $all = array();

        // perintah query data 
        // daftar rumah makan dari database
        // namun berbeda dengan query sebelumnya
        // query ini akan menampilkan data rumah makan
        // terdekat dan juga diurut berdasarkan jarak
        $query = "SELECT 
                    id,kota_id,nama,url_menu,alamat,deskripsi,latitude,longitude,url_gambar
                FROM 
                    rumah_makan 
                WHERE
                    ((degrees(acos(sin(radians(?)) * sin(radians(latitude)) + cos(radians(?)) * cos(radians(latitude)) * cos(radians(? - longitude)))) * 60 * 1.1515) * 1.609344) < ?
                AND
                    ".$list_query->search_by." LIKE ?
                ORDER BY 
                    ((degrees(acos(sin(radians(?)) * sin(radians(latitude)) + cos(radians(?)) * cos(radians(latitude)) * cos(radians(? - longitude)))) * 60 * 1.1515) * 1.609344) ASC
                LIMIT ? OFFSET ?";
        
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
        $stmt->bind_param('ddddsdddii',$current_latitude,$current_latitude,$current_longitude,$range,$search,$current_latitude,$current_latitude,$current_longitude,$limit,$offset);
        
        // eksekusi query
        $stmt->execute();

        // jika terjadi error
        if ($stmt->error != ""){

            // ganti nilai dari varibel error
            // menjadi pesan error saat query data rumah makan
            $result_query-> error = "error at query all closes rumah makan : ".$stmt->error;

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

            // membuat object rumah makan
            $one = new rumah_makan();

            // isi varibel id
            $one->id = $result['id'];

            // isi varibel kota id
            $one->kota_id = $result['kota_id'];

            // isi varibel nama
            $one->nama = $result['nama'];

            // isi varibel url menu
            $one->url_menu = $result['url_menu'];

            // isi varibel alamat
            $one->alamat = $result['alamat'];

            // isi varibel deskripsi
            $one->deskripsi = $result['deskripsi'];

            // isi varibel latitude
            $one->latitude = $result['latitude'];

            // isi varibel longitude
            $one->longitude = $result['longitude'];

            // isi varibel url gambar
            $one->url_gambar = $result['url_gambar'];

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
        $query = "UPDATE rumah_makan SET kota_id = ?,nama = ?,url_menu = ?,alamat = ?,deskripsi = ?,latitude = ?,longitude = ?,url_gambar = ? WHERE id=?";
        
        // prepare query
        $stmt = $db->prepare($query);

        // bind parameter yg akan di tambahkan ke query
        // untuk menghindari injeksi sql
        $stmt->bind_param('issssddsi',$this->kota_id,$this->nama,$this->url_menu,$this->alamat,$this->deskripsi,$this->latitude,$this->longitude,$this->url_gambar,$this->id);
    
        // eksekusi query
        $stmt->execute();

        // jika terjadi error
        if ($stmt->error != ""){

            // ganti pesan error saat mengupdate data rumah makan
            $result_query-> error = "error at update one rumah makan : ".$stmt->error;

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
        $query = "DELETE FROM rumah_makan WHERE id=?";

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
            $result_query-> error = "error at delete one rumah makan : ".$stmt->error;

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