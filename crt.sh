#! /bin/bash

# defautl query
q='.common_name'

# iterate args
for i in "$@"; do
  case $i in
    -h|--help)
      # show help message
      echo "USAGE: $0 [target] [-b|--both]"
      echo -e "\nSearch in crt.sh for domains and subdomains with organization name."
      echo -e "\nSwitches:"
      echo -e "\t-b,--both\tshow both 'comman_name' and 'name_value' of certificate"
      exit 0
      ;;

    -b|--both)
        # update query and add name value to result
        q=$q'+"\n"+.name_value'
        ;;
    esac
done

# Send request and clean data
curl -s "https://crt.sh/?q=$1&output=json" | jq -r ".[] | $q"
