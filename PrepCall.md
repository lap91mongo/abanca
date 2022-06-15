# Abanca


Integrantes
1. Manuel Project Manager
2. Francisco Lead Software Development
3. Maria


Aplicaciónes.

1. Banca Movil
2. Pcm


Deployment On Prem

1. Ops Manager -- 4.2.12
2. Cluster 4.0.16 - 4.2 
3. Cluster sharded - arbitro sobre cada shard - 4.2.8 - upgrade too
4. Kafka Connection 1.5 upgrade to latest problems to update.  ( importante)
5. Performance and Tuning.
6. Replication Lag - Oplog - Majority.
7. Driver  Support ticket


Upgrade Ops Manager.
Kafka Connection 1.5 upgrade to latest problems to update.
Performance and Tuning.
Replication Lag - Oplog - Majority.



Versiones Desarrollo


Ops Manager 4.4

Replicaset 4.2
Replicaset 4.0


Versiones PrePod
StandAlone 4.0



Ops Manager Prod


U354 == Dany
U869 == Jesus




. restore shard a replica set

. TLS - 1

. SHard Size -1

. Compact 

. Inserciones en API  Logs


. Actualizar primero los antes agentes que las bbddd ?


. S3  Backlog Ops Manager

Como respaldar la backdb catalogo de backups

Como guarda los s3 snapshot recursos


FCV 4.2 what is the role in the headDb


. How to convert Arbiter to Secondary

. How to dump 5TB data ?

. Write Concern 1 not majority PSA

. API NET 


. Terminate 


. Encrypt Password on configuration files

. How to recover from lost of LDAP for ops manager --- how to recover

. Ops manager user admin cant change any permissions LDAP -- resuelto permissos se heredan del active directory

. Window update massive updates can i bypass the oplog

6 de Junio


Porbelma Kafka 

Dos flujos

connector llevar a dato a kafka 100.000 registrso
dos flujos en paralelo

Confluent problema conector timeout, commit offset.s



Reunion con log api

Desarrollo
Explotacion
Testing
PSA -> PSS

Prodcution Notes
xxekmonomdbxi01
systemctl list-unit-files | grep ntp | grep -q enabled || echo "NTP is not Enabled"

/etc/security/limits.conf 64000
xxekmonomdbxi02
systemctl list-unit-files | grep ntp | grep -q enabled || echo "NTP is not Enabled"

/etc/security/limits.conf 64000


xxekmonbmsh1i01
NOT XFS
sudo systemctl list-unit-files | grep ntp | grep -q enabled || echo "NTP is not Enabled"
ulimits are not set
sudo blockdev --getra /dev/nvme1n1 | grep -q '^0$' || echo "Readahead on data disk is too high"

THP
${thp_path}/enabled never
${thp_path}/defrag alwasy
${thp_path}/khu/defrag 1



xxekmonbmsh1i02
NO XFS
NTP IS NOT
u limits SECURITY LIMITS
THP
${thp_path}/enabled never
${thp_path}/defrag alwasy
${thp_path}/khu/defrag 1