<?php
class User_Model extends CI_Model
{
  public function __construct()
  {
    parent::__construct();

  }

  public function insert_user()
  {
    $this->load->helper('string');
    $_SESSION['token'] = random_string('alnum',16);

    $data = [
      'email' => $this->input->post('email'),
      'nama' => $this->input->post('nama'),
      'password'=> password_hash($this->input->post('password'), PASSWORD_DEFAULT),
      'token' => $_SESSION['token']
    ];
    $this->db->insert('users', $data);
  }

  public function get_user($key, $value){
    $query = $this->db->get_where('users',array($key=>$value));
    if(!empty($query->row_array())){
      return $query->row_array();
    }
    return false ;
  }
  ///update role setelah klik email verifikasi
  public function update_role($user_id,$role_nr)
  {
    $data = array('role'=> $role_nr);
    $this->db->where('id',$user_id);
    return $this->db->update('users',$data);

  }
  public function is_loggedIn(){
    if(!isset($_SESSION['logged_in'])){
      return false;
    }
    return true;
  }
  public function addevent()
  {
    // $this->load->helper('string');
    // $_SESSION['token'] = random_string('alnum',16);

    $data = [
      'nama'          => $this->input->post('nama'),
      'gs'            => $this->input->post('gs'),
      'tanggal'       => $this->input->post('tanggal'),
      'waktu_mulai'   => $this->input->post('mulai'),
      'waktu_selesai' => $this->input->post('selesai'),
      'tempat'        => $this->input->post('tempat')
    ];
    $bisa = $this->db->insert('event', $data);
    if($bisa){
      echo "sukses";
    }
  }
  public function tampiluser()
  {
    return $this->db->get('users');
  }
}

 ?>
