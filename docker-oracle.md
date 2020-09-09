# Docker Oracle

## 安装
~~~
yum -y install docker
~~~

## 配置
- 启动
~~~
systemctl start docker.service
~~~
- 线程守护
~~~
systemctl daemon-reload
~~~
- 开启自启
~~~
systemctl enable docker.service
~~~
- 查看状态
~~~
systemctl status docker.service
~~~
- 查看自启状态
~~~
systemctl list-unit-files | grep docker.service
~~~

### 镜像与位置
- 停止
~~~
systemctl stop docker
~~~
- 镜像、位置
    - 创建文件夹
    ~~~
    mkdir /500g/data
    mv /var/lib/docker/ /500g/data
    ln -s /500g/data/docker/ /var/lib/docker
    ~~~
    - 编辑 daemon.json
    ~~~
    vim /etc/docker/daemon.json
    ~~~
    - 新增
    ~~~
    "registry-mirrors": ["https://hnkfbj7x.mirror.aliyuncs.com"],
    "graph": "/500g/data/docker"
    ~~~
- 启动
~~~
systemctl start docker
~~~
- 查看配置
~~~
docker info | grep "Docker Root Dir"
docker info | grep "Registry Mirrors"
~~~

## 安装配置 Oracle
- 拉取镜像
~~~
docker pull registry.cn-hangzhou.aliyuncs.com/helowin/oracle_11g
~~~
- 查看镜像
~~~
docker images
~~~
- 配置容器
~~~
docker run --restart=always -p 11521:1521 --name oracle_11g -d registry.cn-hangzhou.aliyuncs.com/helowin/oracle_11g
~~~
- 查看容器（所有）
~~~
docker ps -a
~~~
- 开通端口
~~~
firewall-cmd --zone=public --add-port=11521/tcp --permanent
firewall-cmd --reload
firewall-cmd --list-all
~~~
- 进入容器
~~~
docker exec -it oracle_11g bash
~~~
- 刷新环境变量（绝对位置）
~~~
source /home/oracle/.bash_profile
~~~
- 查看监听
~~~
lsnrctl status
~~~
- Oracle 服务名
    - helowin
    - helowinXDB
- 用户名
|        | 用户名 | 密码  |
| ------ | ------ | ------- |
| Oracle | system | helowin |
| CentOS | root   | helowin |

### 模式/用户
- 创建表空间
~~~
CREATE TABLESPACE "HIS_PERMANENT"
 DATAFILE  'his_permanent_01' SIZE 1 G AUTOEXTEND ON NEXT 1 G
~~~
- 表空间添加数据文件
~~~
ALTER TABLESPACE "HIS_PERMANENT" ADD DATAFILE 'his_permanent_02' SIZE 1 G AUTOEXTEND ON NEXT 1 G
~~~
- 创建临时表空间
~~~
CREATE TEMPORARY TABLESPACE "HIS_TEMPORARY"
 TEMPFILE  'his_temporary_01' SIZE 1 G AUTOEXTEND ON NEXT 1 G
~~~
- 新建用户
~~~
CREATE USER "HIS" IDENTIFIED BY "his" DEFAULT TABLESPACE "HIS_PERMANENT" TEMPORARY TABLESPACE "HIS_TEMPORARY"
~~~
- 分配权限
~~~
GRANT "CONNECT" TO "HIS";
GRANT "RESOURCE" TO "HIS";
~~~
- 权限说明
    - 参见 DBA_SYS_PRIVS 表（需要有管理员权限）
    - CONNECT
        - CREATE SESSION
    - RESOURCE
        - CREATE TRIGGER
        - CREATE SEQUENCE
        - CREATE TYPE
        - CREATE PROCEDURE
        - CREATE CLUSTER
        - CREATE OPERATOR
        - CREATE INDEXTYPE
        - CREATE TABLE
- PLSQL
    - 查看 Oracle 编码
    ~~~
    select * from v$nls_parameters
    ~~~
    - 设置环境变量
    ~~~
    NLS_LANG=SIMPLIFIED CHINESE_CHINA.ZHS16GBK
    ~~
