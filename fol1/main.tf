
        variable "run_id" {
  default = "run_id_2"
  sensitive = true
}

variable "sleep_time" {
  default = 15
}

variable "dynatrace-operator_enabled" {
  description = "dynatrace-operator_enabled" 

type = bool 
  default = true
  
}


resource "null_resource" "resource3" {
  count = 5
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
 }
}
