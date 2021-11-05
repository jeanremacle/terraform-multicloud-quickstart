
variable "users" {
  default = {
    alice = {
      username   = "jean"
      ssh_pubkey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDEyEbdO90Acv4U+BhS1wQuZYuf75+NBcyoeBzTWBPJrgDO4C7bb4TrO9r+Sw3bi2QWTrc1ZnC9uByvTtMXZcoOz0q5Xxoc4/xfia5Ktqqv2FiZYBvFwMDsQI9A5X/7cu+7jhORwpnF8ZqFOIlHaQLwndrznnKxzGhqIQBFQIg+U63X3ht4gnarYUZ+V9HxdzkbXm+vX+r40OzJnwHpQ2e9MGmIOekmtG6IkrYLffshwYtWGVL+iD+1CkGVsEEhovhfX6nHZAlUeCsH40Li6VGA0ikFFqeCcYmA++i4d8W2Rkwl3VhOaS3fhZraPgs+EukPzEAmSTgtqsXwz1aJ15/GgUACVesWbGhuVXh3niz4bZmxGo5XX5LdaaI57uWN2un95uFCsJihCml9j64qWQajvdBInljUelr5GWJBzI0xEHueZpgD6krwTo89CdulVjNumyY64oXXMzkf2U4hP8HfURug4rOc9r33TrShb8aV5LsHmNuutr8dKPnGNg7ySqcPXnkbgba4tKsnmS/jCnx24KxT+LztERyi0PrIc1ifkER1T/zf2R+f8+rnAsZMU68UwSZU83Gcb3/rAu3DC1+GTKHeEq3avw0CihCE9wLGEE3ganCedLhvfs8DjOVrE9V4h6nCdWUs0vHP0zWH+r96det9hQ1sVxMG9CoteTVwgQ== MPro-01@remacle.eu"
    }
  }
}

variable "devices" {
  default = {
    mbpro = {
      member_id   = "dffeed2ff4"
      description = "Jean's mb pro"
    }
    ipad = {
      member_id   = "39a366f92a"
      description = "Jean's ipad-pro"
    }
  }
}

variable "instances" {
  default = {
    do = {
      description   = "Digital Ocean"
      ip_assignment = "10.0.1.1"
      enabled       = false
    }
    aws = {
      description   = "Amazon Web Services"
      ip_assignment = "10.0.2.1"
      enabled       = true
    }
    gcp = {
      description   = "Google Compute Platform"
      ip_assignment = "10.0.3.1"
      enabled       = false
    }
    azu = {
      description   = "Microsoft Azure"
      ip_assignment = "10.0.4.1"
      enabled       = false
    }
    oci = {
      description   = "Oracle Cloud Infrastructure"
      ip_assignment = "10.0.5.1"
      enabled       = true
    }
    ibm = {
      description   = "IBM Cloud"
      ip_assignment = "10.0.6.1"
      enabled       = false
    }
    vul = {
      description   = "Vultr"
      ip_assignment = "10.0.7.1"
      enabled       = false
    }
    ali = {
      description   = "Alibaba Cloud"
      ip_assignment = "10.0.8.1"
      enabled       = false
    }
    eqx = {
      description   = "Equinix Metal"
      ip_assignment = "10.0.9.1"
      enabled       = false
    }
  }
}
