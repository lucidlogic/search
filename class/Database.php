<?php

/**
 * Class Database
 */
final class Database
{
    //DB config variables
    private $_dbuser = 'root';
    private $_dbpass = '';
    private $_dbhost = 'localhost';
    private $_dbname = 'search';
    private $_conn;

    /**
     * Constructor Method
     */
    public function __construct()
    {
        try {
            $this->_conn = new PDO("mysql:host=$this->_dbhost;charset=utf8mb4;dbname=$this->_dbname", $this->_dbuser, $this->_dbpass);
            $this->_conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch(PDOException $e) {
            echo 'ERROR: ' . $e->getMessage();
        }
    }

    /**
     * Execute sql
     * @param $sql string
     *
     * @return array
     */
    public function prepare($sql)
    {
        return $this->_conn->prepare($sql);
    }
}
