# crt.sh
Search in crt.sh and extract domains and subdomains with organization name.

```
USAGE: ./crt.sh [target] [-b|--both]

Search in crt.sh for domains and subdomains with organization name.

Switches:
	-b,--both	show both 'comman_name' and 'name_value' of certificate
```


### Usage
1. Clone repo:
```bash
git clone https://github.com/m333rl1n/crt.sh.git && cd crt.sh
```
2. Search an organization name:
```bash
./crt.sh "Ford"

# result
www.donchalmersford.com
store.kms-inc.net
*.idl-iaa.com
www.billbrownford.com
```
