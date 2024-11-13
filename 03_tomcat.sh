# 1. tomcat 이미지를 다운로드
# 1-1. tomcat이라는 이미지가 다운로드 받을 수 있는지 확인
# docker search [프로그램 이름]
docker search tomcat

# 1-2. 다운로드 받기
# docker pull [프로그램명]:[버전]
docker pull tomcat:9.0

# 1-3. 다운로드 받은 이미지 확인
docker images

# 2. 컨테이너 생성
# docker run --name [생성할컨테이너이름] -p 어떤포트로 요청이오면: 이포트로 연결해라 사용이미지
# -d : 백그라운드로 실행해라
docker run -d --name tomcat -p 8080:8080 tomcat:9.0

# 모든 컨테이너 확인
# -al 이 옵션이 빠지면 현재 실행중인 컨테이너만 보여준다.
docker ps -al

# 컨테이너 삭제
# docker rm [컨테이너이름]
docker rm tomcat

# 컨테이너 내부로 접근하는 명령어
# docker exec -it [컨테이너이름] /bin/bash
docker exec -it tomcat /bin/bash

# webapp폴더안에 ROOT폴더 생성.
cd webapp
mkdir ROOT

exit

# 서버에 있는 파일을 도커 컨테이너 내부로 이동하는 명령어
# docker cp [서버내 경로] [컨테이너명]:[컨테이너에서의 위치]
docker cp ./index.jsp tomcat:/usr/local/tomcat/webapps/ROOT/

# 컨테이너 정지 및 실행 
docker stop tomcat
docker start tomcat
