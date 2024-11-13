# 현재 돌고있는 컨테이너 확인
# -al : 죽어있는 컨테이너도 모두 보여줌.
docker ps
docker container ls

# docker run은 컨테이너를 생성하는 명령어
# start와 stop이 컨테이너를 시작하고 정지시키는 명령어
# docker start [컨테이너명]
# docker stop [컨테이너명]
docker start tomcat mariadb # 여러개도 가능

# 컨테이너 삭제
# -f : forced(강제적으로)
# docker container rm -f [컨테이너명]
docker container rm -f tomcat mariadb

# 이미지 삭제
# docker image rm -f [이미지명]
docker image rm -f tomcat:9.0
# docker rmi -f [이미지명]
docker rmi -f mariadb:11.4

