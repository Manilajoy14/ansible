variable "subnet_config" {
type = map(obkject({
cidr_blocks = string
az = string

Default = {

    "public - 1a" = {cidr_blocks = "", az = ""}
}

}))  
}