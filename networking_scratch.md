
LAN: Local area network

Subnet: 10.44.4.0/24 (CIDR)
        10.44.4.1 - 10.44.4.256

Gateway: 10.44.4.1 

vm-1: 10.44.4.7
vm-2: 10.44.4.8
vm-2: 10.44.4.9
...
vm-256: 10.44.4.256

Network Info:
10.44.4.7 255.255.255.0 => 10.44.4.0/24 (looking at the subnet cheat sheet)

CIDR    IP addresses     Usable Netmask
24	256	         254	255.255.255.0 (

## to view the ip address on a linux system
```console
  $ ifconfig -a
```

## Ping other system on the network
```console
  $ ping 10.44.4.8
```

## Get the routing table for my linux system 
## Look for default to get the LAN gateway
```console
  $ route
  $ route | grep default
```

