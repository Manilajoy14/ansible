variable "allowinbound"{
    type = set(string)
    default = [
        "192.168.1.2/32",
        "192.168.1.43/32",
        "192.168.1.22/32"
    ]
}