variable "allowinbound"{
    type = set(string)
    default = [
        "192.168.1.0/24"
    ]
}