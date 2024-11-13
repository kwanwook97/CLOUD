# 덤프(백업)
# [mysqldump|mariadb-dump] -u root -p [데이터베이스이름] > [저장경로]
mariadb -u root -p gdj85_semi_3 > c:\mariadbDump.sql

# 복원(해당 데이터베이스가 있어야 한다.)
# [mysql|mariadb] -u root -p [데이터베이스이름] < [파일경로]
mariadb -u root -p gdj85_semi_3 < c:\mariadbDump.sql

# DB 버전확인
SELECT VERSION(); # 11.4.2

# docker.sock 권한변경
cd /var/run
sudo chmod 777 docker.sock

# 1. mariadb 이미지 다운로드
docker search mariadb
docker pull mariadb:11.4
docker images

# 2. container 실행
# docker run --name [생성할 컨테이너이름]
# -p : 어떤 포트로 요청이오면:이 포트로 연결
# -e : 초기환경설정
# 사용이미지
# -d : 백그라운드로 실행
docker run -d --name mariadb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1111 mariadb:11.4

# 3. 서버에 있는 dump파일을 container에 복사
# 컨테이너 안으로 들어가보기
docker exec -it mariadb bin/bash

cd home

pwd

cd /home/ec2-user

# 복사
docker cp ./mariadbDump.sql mariadb:/home/

# 덤프파일 복원
# 컨테이너 안에 들어와서...
# 4. 복원
mariadb -u root -p gdj85_semi_3 < /home/mariadbDump.sql