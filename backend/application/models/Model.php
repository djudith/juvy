<?php 

	class Model extends CI_Model{
		public function insertdb($table,$data){
			$this->db->insert($table,$data);
			return $this->db->insert_id();
		}
		public function updatedb($table,$data,$where){
			$this->db->where($where);
			$this->db->update($table,$data);
			return $this->db->affected_rows();
		}
		public function getdb($table,$data,$order='',$ascdesc='ASC'){
			if($order!=""){
				$this->db->order_by($order,$ascdesc);
			}
			return $this->db->get_where($table,$data);
		}
		public function deletedb($table,$data){
			$this->db->where($data);
			return $this->db->delete($table);
		}
		public function querydb($sql,$data){
			return $this->db->query($sql,$data);
		}


	}