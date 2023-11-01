machine:
  nodeLabels:
    topology.kubernetes.io/zone: ${topology_zone}
  certSANs:
    - ${hostname}
    - ${ipv4_local}

  network:
    hostname: ${hostname}
    interfaces:
      - interface: ${network_interface}
        dhcp: false
        addresses:
          - ${ipv4_local}/${network_ip_prefix}
        routes:
          - network: 0.0.0.0/0
            gateway: ${network_gateway}

    extraHostEntries:
      - ip: ${ipv4_vip}
        aliases:
          - ${cluster_domain}

  install:
    extensions:
      - image: ghcr.io/siderolabs/iscsi-tools:v0.1.4@sha256:3ab305068aa28513b26ab3c5b1f2937dbe3f63b9c50abe290287cc58eb454bb9
