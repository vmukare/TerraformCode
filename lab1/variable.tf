variable "rgname" {

    type = string
  
}

variable "location" {

    type = string
  
}

variable "vnetName" {

    type = string
  
}

variable "address_space" {

    type = list(string)
  
}

variable "subnet" {

    type = list(object({
      name = string
      address_prefix = string
    }))
  
}