$ttl 38400
cluster-zero.com.       IN      SOA     ns.cluster-zero.com. dns.cluster-zero.com. (
                        1463258938
                        10800
                        3600
                        604800
                        38400 )
cluster-zero.com.       IN      NS      ns.cluster-zero.com.
ns.cluster-zero.com.    IN      A       172.17.0.4 // Current docker IP
www.cluster-zero.com.   IN      A       172.17.0.3 // The rest of entries
