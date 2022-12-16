variable "name" {
    description = "Name of Athena Table"
    type        = string
}

variable "database_name" {
    description = "Database Table will be located in"
    type        = string
}

variable "location" {
    description = "URI path to hive data"
    type        = string
}
