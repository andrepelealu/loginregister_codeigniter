<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {


	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
	}
  public function profile(){
  if(!$this->user_model->is_loggedIn())  {
      redirect('login');
    }
    $data['user'] = $this->user_model->get_user('id',$_SESSION['user_id']);
    $this->load->view('layout/header');
    $this->load->view('user/profile',$data);
  }


	public function addevent(){
		if(!$this->user_model->is_loggedIn())  {
				redirect('login');
			}
		$this->form_validation->set_rules('nama','Nama Penyelenggara');
		$this->form_validation->set_rules('gs','Pengisi Acara','required');
		$this->form_validation->set_rules('tanggal','Tanggal Pelaksanaan','required');
		$this->form_validation->set_rules('mulai','Waktu Mulai Acara','required');
		$this->form_validation->set_rules('selesai','Waktu Selesai Acara','required');
		$this->form_validation->set_rules('tempat','Tempat Pelaksanaan','required');


		if($this->form_validation->run() === false){
			$this->load->view('layout/header');
			$this->load->view('user/addevent');
		}else {
			$this->user_model->addevent();

		}
}
}
