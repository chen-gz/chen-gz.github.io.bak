### generate key

```bash
wg genkey | tee /etc/wireguard/privatekey | wg pubkey | tee /etc/wireguard/publickey
```



```
wg set wg0 peer ELNgspFPj3SWPjTJcvWEfMu7o72oYAo0IPlU9CkmFUk= allowed-ips 10.10.0.2/32,fd86:ea04:1111::2/128
```