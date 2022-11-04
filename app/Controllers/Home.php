<?php
namespace App\Controllers;
use \App\Models\Kuesioner_Model;
use Exception;
use stdClass;

class Home extends BaseController
{
    private $session;
    private $kuesionerModel;

    public function __construct() {
        $this->kuesionerModel = new Kuesioner_Model();
        $this->session = \Config\Services::session();
        $this->session->start();
    }

    public function index()
    {
        return view('index');
    }

    function prosesPersonal() {
    	$sessionData['personal_name'] = $this->request->getPost('name');
    	$sessionData['personal_nim'] = $this->request->getPost('nim');
    	$sessionData['personal_email'] = $this->request->getPost('email');
    	$sessionData['personal_whatsapp'] = $this->request->getPost('whatsapp');
    	$this->session->set($sessionData);
    	return $this->respond(true, 200);
    }

    function prosesTraining() {
    	$sessionTraining['training_date'] = $this->request->getPost('date');
    	$sessionTraining['training_time'] = $this->request->getPost('time');
    	$sessionTraining['training_training'] = $this->request->getPost('training');
    	$sessionTraining['training_description'] = $this->request->getPost('description');
    	$this->session->set($sessionTraining);    	
    	return $this->respond(true, 200);
    }

    function edit($code=null) {
        if (!$code) {
            $this->session->setFlashdata('msg_code', 'Maaf, Kode Pendaftaran Anda Tidak Ditemukan');
            return redirect()->to('/');
        }
        $checkCode = $this->kuesionerModel->checkCode($code);
        if (!$checkCode) {
            $this->session->setFlashdata('msg_code', 'Maaf, Kode Pendaftaran Anda Tidak Ditemukan');
            return redirect()->to('/');
        }
        $temp['kuesioner'] = $this->kuesionerModel->getAllDataByCode($code);

        return view('edit/index', $temp);
    }
}
