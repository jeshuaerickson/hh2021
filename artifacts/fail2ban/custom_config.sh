echo "[custom_jail]

enabled = true
logpath = /var/log/hohono.log
findtime = 60m
maxretry = 10
bantime = 30m
filter = custom_filter
action = custom_action
" > /etc/fail2ban/jail.d/custom_jail.conf

echo "[Definition]

actionban   = /root/naughtylist add <ip> 
actionunban = /root/naughtylist del <ip> 

" > /etc/fail2ban/action.d/custom_action.conf

echo "[Definition]

failregex = [Ll]ogin from <HOST> rejected
            [Ff]ailed login from <HOST> for
            [Ii]nvalid heartbeat\s'([^']*)'\sfrom\s<HOST>
            <HOST> sent a malformed request
" > /etc/fail2ban/filter.d/custom_filter.conf

cat /etc/fail2ban/jail.d/custom_jail.conf
cat /etc/fail2ban/filter.d/custom_filter.conf
cat /etc/fail2ban/action.d/custom_action.conf

fail2ban-regex /var/log/hohono.log /etc/fail2ban/filter.d/custom_filter.conf

service fail2ban restart

/root/naughtylist refresh


^Registration from '[^']*' failed for '<HOST>(:\d+)?'


2021-12-22 05:28:08 Failed login from 194.73.239.169 for shinny
2021-12-22 05:28:39 Failed login from 194.73.239.169 for alabaster
2021-12-22 05:28:50 Failed login from 126.109.131.53 for angel
2021-12-22 05:28:59 Failed login from 194.73.239.169 for ribb
2021-12-22 05:30:04 Failed login from 6.53.176.31 for jewel
2021-12-22 05:30:38 Failed login from 52.47.84.145 for jewel
2021-12-22 05:30:42 Failed login from 142.242.213.51 for wunorse
2021-12-22 05:31:27 Failed login from 142.242.213.51 for pepper
2021-12-22 05:31:58 Failed login from 6.53.176.31 for rudolph
2021-12-22 05:32:14 Failed login from 52.47.84.145 for piney

2021-12-22 01:42:36 148.181.62.23 sent a malformed request
2021-12-22 01:41:28 Invalid heartbeat 'alpha' from 74.85.132.101
2021-12-22 01:48:04 Invalid heartbeat 'charlie' from 143.156.19.136

