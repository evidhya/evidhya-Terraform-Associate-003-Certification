# two primary types of provisioners
# 1. Creation-Time provisioner : Creation time provisioner are only run during creation not during updation or any other life cycle.
#                               if a creation time provisioner fails the resource is marked as tainted.
# 2. Destory-time provisioner : Destory provisioner are run before the resource is destoryed     
#                              If  when = destroy is specified the provisional will run when the resource is defined within the destroyed                         

/*resouce "aws_instance" "web" {
    provisioners " local-exec" {
        when = destoryed
        command = "echo 'Destory-time provisoner'"
    }
}*/