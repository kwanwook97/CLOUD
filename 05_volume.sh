# 볼륨은 컨테이너와 로컬 사이에 공용폴더를 두는 개념.
# 컨테이너가 지워진다고 하더라도 데이터는 남아있게 된다.
# 이 후 컨테이너를 다시 생성해도 옵션을 통해 공용폴더를 보게하면 데이터가 유지된다.

# 공용폴더 만들기 (/home/ec2-user/db)
mkdir db #db라는 폴더생성

# 컨테이너 생성시 db폴더를 연결해준다.
docker run -d 
    --name mariadb
    -p 3306:3306
    -e MYSQL_ROOT_PASSWORD=gudi@kkw
    -v [로컬의공유폴더] : [컨테이너의연결폴더]
    mariadb:11.4

docker run -d --name mariadb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=gudi@kkw -v /home/ec2-user/db:/var/lib/mysql mariadb:11.4    

# 데이터 공유되는지 확인
cd db
# 프로세스 도는지 확인
docker ps

# 톰캣 연결
# 폴더 생성
mkdir webapps
# 톰캣 컨테이너 생성
docker run -d
    --name tomcat
    -p 80:8080
    -v /home/ec2-user/webapps:/usr/local/tomcat/webapps
    tomcat:9.0

docker run -d --name tomcat -p 80:8080 -v /home/ec2-user/webapps:/usr/local/tomcat/webapps tomcat:9.0
