provider {
  extip = ["1.0"]
}

data "extip" "external_ip" {}


resource "null_resource" "print-exip" {
  provisioner "local-exec" {
    command = "echo Hello world ${data.extip.external_ip.ipaddress}!"
  }
}
