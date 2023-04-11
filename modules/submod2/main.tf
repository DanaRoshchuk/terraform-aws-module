variable "run_id" {
  default = "run_id_1"
  #sensitive = true
}
variable "sleep_time" {
  default = 3
}
variable "dynatrace-operator_enabled" {
  description = "dynatrace-operator_enabled" 
sensitive = true
type = bool 
  default = true
  
}
  variable "prefix" {
    default = "Mrs"
    type = string
  }
resource "random_integer" "ran" {
  count = 1
  min = 31
  max = 200
  keepers = {
    run_id = var.run_id
  }
}
