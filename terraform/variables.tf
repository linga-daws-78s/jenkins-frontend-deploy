variable "project_name" {
    default = "expense"
}
variable "environment" {
    default = "dev"
}
variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
        Component = "frontend"
    }
}
variable "zone_name" {
    default = "lingaiah.online"
 }
#created a variable as part of CD
 variable "app_version" {

 }