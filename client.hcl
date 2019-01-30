# Increase log verbosity
log_level = "DEBUG"

# lets try logging to syslog with this bitch
enable_syslog = true

# Setup data dir
data_dir = "/tmp/client1"

# Give the agent a unique name. Defaults to hostname
name = "client1"

# Enable the client
client {
    enabled = true

    # For demo assume we are talking to server1. For production,
    # this should be like "nomad.service.consul:4647" and a system
    # like Consul used for service discovery.
    servers = ["192.168.1.200:4647"]
}

# Modify our port to avoid a collision with server1
ports {
    http = 5656
}
