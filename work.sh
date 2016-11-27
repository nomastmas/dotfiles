#!/usr/bin/sh

klondike_health(){
    domain=$1
    echo "curl https://$domain-api-stg.2u.com/prospects/health"
    curl https://$domain-api-stg.2u.com/prospects/health
    echo ""
}

greenlight_health(){
    domain=$1
    echo "curl https://$domain-api-stg.2u.com/accounts/health"
    curl https://$domain-api-stg.2u.com/accounts/health
    echo ""
}

klondike_verify(){
    domain=$1
    degree_offering=$2
    uuid=$3
    echo "curl https://$domain-api-stg.2u.com/prospects/$degree_offering/$uuid/tasks"
    curl https://$domain-api-stg.2u.com/prospects/$degree_offering/$uuid/tasks
}
