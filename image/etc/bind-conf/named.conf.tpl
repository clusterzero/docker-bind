options {
        directory "/var/bind/cache";

        listen-on { any; };

        pid-file "/var/run/named/named.pid";

	//forwarders { $FORWARDERS };

        dnssec-validation auto;
        auth-nxdomain no;    # conform to RFC1035
        listen-on-v6 { any; };
};

zone "." {
        type hint;
        file "/etc/bind/db.root";
};

include "/var/named/autozones.conf";
