<?php

class Database
{
    protected $host = "localhost";
    protected $db_name = "oop_latihan";
    protected $username = "root";
    protected $password = "";
    protected $conn;

    public function getConnection()
    {
        $this->conn = new mysqli($this->host, $this->username, $this->password, $this->db_name);
        // $this -> conn = new mysqli($this->host,$this->password, $this->db_name,$this->username  );

        if ($this->conn->connect_error) {
            die("Connection error" . $this->conn->connect_error);
        }

        return $this->conn;
    }
}
