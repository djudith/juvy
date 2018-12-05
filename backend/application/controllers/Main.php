<?php 

class Main extends CI_Controller{

    public function sign_up(){
        $f = sanitize_array($this->input->post(null,true));
        $chkuser = $this->model->getdb('jv_users',['username'=>$f['username']]);
        if($chkuser->num_rows()>0){
            $data = ['success'=>0,'message'=>'Username already exist'];
        } else {
            $chkemail = $this->model->getdb('jv_users',['email'=>$f['email']]);
            if($chkemail->num_rows()>0){
                $data = ['success'=>0,'message'=>'Email already exist'];
            } else {
                $f['password'] = en_dec('en',$f['password']);
                $query = $this->model->insertdb('jv_users',$f);
                $data = ['success'=>1,'user_id'=>$query,'info'=>$f];
            }
        }
        generate_json($data);
    }

    public function login(){
        $f = sanitize_array($this->input->post(null,true));
        $chkuser = $this->model->getdb('jv_users',['username'=>$f['username']]);
        if($chkuser->num_rows()<=0){
            $data = ['success'=>0,'message'=>'Username does not exist. <br> <a href="sign_up.html"><u>Sign up here.</u></a>'];
        } else {
            if($chkuser->row()->password == en_dec('en',$f['password'])){
                $data = ['success'=>1,'user_id'=>$chkuser->row()->user_id,'info'=>$chkuser->row()];
            } else {
                $data = ['success'=>0,'message'=>'Incorrect password. Please try again.'];
            }
        }
        generate_json($data);
    }

    public function forgotPassword(){
        $f = sanitize_array($this->input->post(null,true));
        $chkuser = $this->model->getdb('jv_users',['username'=>$f['username']]);
        if($chkuser->num_rows()<=0){
            $data = ['success'=>0,'message'=>'Username does not exist. <br> <a href="sign_up.html"><u>Sign up and join us.</u></a>'];
        } else {
            $new_pass = generate_player_no();
            $this->model->updatedb('jv_users',['password'=>en_dec('en',$new_pass)],['user_id'=>$chkuser->row()->user_id]);
            
            // email
            $data = ['username'=>$f['username'],'password'=>$new_pass,'href'=>'localhost/juvy/log_in.html'];
            $body = $this->load->view('email_forgot',$data,true);
            $this->send_mail($chkuser->row()->email,'JUVY - Password Reset',$body);
            // echo $this->email->print_debugger();


            $data = ['success'=>1,'msg'=>$new_pass];
        }
        generate_json($data);
    }

    public function getUserInfo($user_id){
        $info = $this->model->getdb('jv_users',['user_id'=>$user_id]);
        generate_json($info->row());
    }

    public function updateAccount($user_id){
        $f = sanitize_array($this->input->post(null,true));
        $sql = "SELECT * FROM jv_users WHERE user_id != ? AND username = ?";
        $info = $this->model->querydb($sql,[$user_id,$f['username']]);
        if($info->num_rows() > 0){
            $data = ['success'=>0,'message'=>'Username already exist'];
        } else {
            $sql = "SELECT * FROM jv_users WHERE user_id != ? AND email = ?";
            $info = $this->model->querydb($sql,[$user_id,$f['email']]);
            if($info->num_rows() > 0){
                $data = ['success'=>0,'message'=>'Email already exist.'];
            } else {
                $this->model->updatedb('jv_users',$f,['user_id'=>$user_id]);
                $data = ['success'=>1];
            }
        }
        generate_json($data);
    }

    public function updatePassword($user_id){
        $f = sanitize_array($this->input->post(null,true));
        $info = $this->model->getdb('jv_users',['user_id'=>$user_id])->row();
        if($info->password == en_dec('en',$f['old_password'])){
            if($f['new_password']==$f['password']){
                $this->model->updatedb('jv_users',['password'=>en_dec('en',$f['password'])],['user_id'=>$user_id]);
                $data = ['success'=>1];
            } else {
                $data = ['success'=>0,'message'=>'Re-type New password did not match with New password'];
            }
        } else {
            $data = ['success'=>0,'message'=>'Old password is not correct'];
        }
        generate_json($data);
    }
    public function composeFeed(){
        $f = ($this->input->post(null,true));
        $query = $this->model->insertdb('jv_feed',$f);
        $data = ['success'=>1];
        generate_json($data);
    }
    public function editFeed(){
        $f = ($this->input->post(null,true));
        $query = $this->model->updatedb('jv_feed',$f,['feed_id'=>$f['feed_id']]);
        $data = ['success'=>1];
        generate_json($data);
    }
    public function getFeed(){
        $query = $this->model->getdb('jv_feed',['enabled'=>1],'feed_date','DESC');
        generate_json($query->result());
    }
    public function getFeedByUsr($user_id){
        $query = $this->model->getdb('jv_feed',['enabled !='=>-1,'user_id'=>$user_id],'feed_date','DESC');
        generate_json($query->result());
    }
    public function deleteFeed(){
        $f = sanitize_array($this->input->post(null,true));
        $query = $this->model->updatedb('jv_feed',['enabled'=>"-1"],['feed_id'=>$f['feed_id']]);
        $data = ['success'=>1];
        generate_json($data);
    }
    public function toggle_feed_privacy(){
        $f = sanitize_array($this->input->post(null,true));
        $enabled = 1;
        if($f['enabled']==1){
            $enabled = 0;
        }
        $query = $this->model->updatedb('jv_feed',['enabled'=>$enabled],['feed_id'=>$f['feed_id']]);
        $data = ['success'=>1];
        generate_json($data);
    }
    public function getFeedInfo($feed_id){
        sleep(3);
        $query = $this->model->getdb('jv_feed',['feed_id'=>$feed_id]);
        generate_json($query->row());
    }




    public function send_mail($receiver,$subject,$body){
        // this code is for sending email
        $this->load->library('email');

        $result = $this->email
        ->from('dummywaeil@gmail.com')
        ->reply_to('')    // Optional, an account where a human being reads.
        ->to($receiver)
        ->subject($subject)
        ->message($body)
        ->send();
        //end of sending email
    }

}