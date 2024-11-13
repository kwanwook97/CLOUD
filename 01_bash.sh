# 현재 경로 위치표시
pwd

# 현재 폴더의 파일 리스트 확인
ls

# 시간대 확인
date # 현재시간 확인
timedatectl # timezone 확인
timedatectl list-timezones # 사용할 수 있는 타임존 확인

# 파이프 라인(|) grep [문구] 앞의 내용에서 특정한 문구를 가져오는 것.
timedatectl list-timezones | grep Asia/Seoul

# 특정한 타임존으로 변경
# sudo : Super User Do
sudo timedatectl set-timezone Asia/Seoul

# Docker 설치 - AWS
sudo yum update -y # yum이라는 프로그램 설치 패키지를 업데이트
# yum install [설치하고 싶은 프로그램명]
sudo yum install docker -y

# docker를 실행시키는데 시스템과 함께 꺼지고 켜지겠다.
sudo systemctl start docker

# 현재 돌고있는 프로세스확인 -> docker라는 구문이 있는 녀석만 
ps -ef | grep docker

# 도커에 가지고 있는 이미지가 있는지 확인
docker images
# /var/run/docker.sock: connect: permission denied
# Change Directory
cd /var/run

# 히스토리 모든 상세정보를 확인 | docker라는 구문만 잡아채서 가져와.
ls -al | grep docker

drwxr-xr-x.  5 root   root            140 Nov 12 11:41 docker
-rw-r--r--.  1 root   root              5 Nov 12 11:41 docker.pid
srw-rw----.  1 root   docker            0 Nov 12 11:41 docker.sock

