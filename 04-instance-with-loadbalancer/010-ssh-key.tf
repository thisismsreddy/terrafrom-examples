# Define ssh to config in instance

resource "openstack_compute_keypair_v2" "user_key" {
  name       = "user-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQD11GWCVsvKwVXbpbh1NrYzFFSOpDiJV2ArbMyA55DLRb2Qpghzru8wj5DvmYOxxkTy17uN2QSzJ4eeVjth9CXgnUz7xLDbMoPuUs8ECSZ+Hu7g4uxw0bTFVRkptK8figxBia3B6br0kkOSQzpg3QGk0cQ+mBNVMMfUwBSGgPdYBak9IdNYglG92ZL0CDigtckQ24MxjIN2pXMm4WDGYW974OxftjnSL5wnX+7aH+24f9LFHocBhmm9hdF31BhlzJSTJYkd3mwP9kavD8sg6BjHMy+tm/aEvbtuFsZTkTq8TM2gZV0GvomY3RhlvdnfK+DZH0YrIIIAZhqR91K8DEZmwGRAehrGFLwCbiQ5KWl3J+DFXPHuBIDHvo0ui8/nn3swMs4/Y3rtduZXTdEIm6tkd1slxDYneH7BsPmqrRcvNjLjdxJO+LWq9t9unOYwi7cWbNoKxgWWoc0CYPjvaRSoBIl7lERB3sC17K1bsIJ+dPfOkqpYgF+D8zptN4oJJ9U= srini@localhost.localdomain"
}

