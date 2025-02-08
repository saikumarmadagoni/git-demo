resource "null_resource" test{

    provisioner "local-exec" {
      command = "echo hello world"
    }

    triggers = {
        change=timestamp()
    }
}


output "msg" {

    value = "msg from terraform"
}