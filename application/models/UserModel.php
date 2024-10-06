
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserModel extends CI_Model {
    
    public function get_user_by_credentials($username, $password)
    {
        // Query database for user matching username and plain text password
        $this->db->where('username', $username);
        $this->db->where('password', $password); // No hashing, simple plain text
        $query = $this->db->get('users');
        
        return $query->row_array();
    }
}


