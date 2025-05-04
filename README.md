disable internet acess for Jupyter container

[root@ip-172-31-22-198 ~]# docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' current_hoe-jupyter_1
172.18.0.3
[root@ip-172-31-22-198 ~]# sudo iptables -I DOCKER-USER -s 172.18.0.4 -d 0.0.0.0/0 -j DROP
[root@ip-172-31-22-198 ~]# sudo iptables -I DOCKER-USER -s 172.18.0.3 -d 0.0.0.0/0 -j DROP
[root@ip-172-31-22-198 ~]# 
[root@ip-172-31-22-198 ~]# 
[root@ip-172-31-22-198 ~]# sudo iptables -I DOCKER-USER -s 172.18.0.4 -d 172.18.0.0/16 -j ACCEPT
[root@ip-172-31-22-198 ~]# sudo iptables -I DOCKER-USER -s 172.18.0.3 -d 172.18.0.0/16 -j ACCEPT
