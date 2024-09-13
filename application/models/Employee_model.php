<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Employee_model extends CI_Model {

    // Method to insert data into the employee table
    public function insert_employee() 
    {
        $query = $this->db->get('employee');
        return  $query->result();
    }
    public function inn_employee($data)
    {
        return $this ->db->insert('employee',$data); 
    }
}
?>