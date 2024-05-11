#! /bin/bash

query='.common_name'

if [ $# -lt 1 ]; then
    echo "USAGE: $0 [target] [-a|-all]"
    echo -e "\nSearch in crt.sh with organization name or domain name."
    echo -e "\nSwitches:"
    echo -e "\t-a,-all\tshow 'comman_name' and 'name_value' of certificate"
    exit 0
fi

if [ "$2" = "-a" ] || [ "" = "-all" ]; then
    query+='+"\n"+.name_value' # update query
fi

# Send request and clean data
curl -s "https://crt.sh/?q=$1&output=json" | jq -r ".[] | $query"
