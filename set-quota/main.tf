# provider "openstack" {
#   user_name   = "admin"
#   tenant_name = "admin"
#   password    = "9Mw5U8CwAOj6moWLzgoaXXz0mUqVgVwdt0g2QIrh"
#   auth_url    = "http://192.168.122.250:5000/v2.0"
#   region      = "RegionOne"
# }


resource "openstack_identity_project_v3" "project_1" {
  name = "project_1"
}

# resource "openstack_blockstorage_quotaset_v3" "quotaset_1" {
#   project_id = "${openstack_identity_project_v3.project_1.id}"
#   volumes   = 10
#   snapshots = 4
#   gigabytes = 100
#   per_volume_gigabytes = 10
#   backups = 4
#   backup_gigabytes = 10
#   groups = 100
# }

resource "openstack_compute_quotaset_v2" "quotaset_1" {
  project_id = openstack_identity_project_v3.project_1.id
  key_pairs            = 100
  ram                  = 40960
  cores                = 32
  instances            = 20
  server_groups        = 4
  server_group_members = 8
}

resource "openstack_networking_quota_v2" "quota_1" {
  project_id = openstack_identity_project_v3.project_1.id
  floatingip          = 100
  network             = 40
  port                = 100
  rbac_policy         = 10
  router              = 40
  security_group      = 10
  security_group_rule = 100
  subnet              = 8
  subnetpool          = 2
}
