drwxr-xr-x.  5 root   root            140 Nov 12 11:41 docker

# 권한부여
# d : 폴더
# s : 바로가기
# 소유주 : r읽고/w쓰고/x실행
# 그룹 : r읽고/x실행
# 일반 : x실행


# 1. chmod : 권한을 변경
# chmod [변경할 권한 값] [해당폴더 및 파일경로]
sudo chmod rwxrwxrwx docker
# r:4, w:2, x:1
sudo chmod 777 docker

# docker 하위의 모든 내용의 권한을 변경할 경우
# rwx rx x -> 751
# rwx rx rx -> 755
sudo chmod -R 755 docker

# 2. choown: 소유주 변경 : 보안상으로는 소유주를 변경하는 것이 더 안전하다.
# chown [소유주] [대상 디렉토리 또는 파일경로]
# chown [소유주]: [그룹] [대상 디렉토리 또는 파일경로]
sudo chown -R ec2-user docker

sudo chown ec2-user:ec2-user docker.pid
sudo chown ec2-user:ec2-user docker.sock