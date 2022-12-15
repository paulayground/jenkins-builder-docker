# 도커를 통해 젠킨스 세팅

호스트의 컨테이너로 올라간 젠킨스가 호스트의 도커를 빌려쓰는 구조로 만들어짐

dood(docker out of docker)

## 실행
```
# start (docker-compose up -d)
make up

# test (docker-compose up)
make test

# shutdown(docker-compose down)
make down

# 젠킨스 계정
admin / paulayground
```

## 위 작업 기반으로 생성된 이미지
`docker pull paulayground/jenkins-dood`

## 컨테이너 실행 후
- 젠킨스 url 세팅 필요
- 젠킨스 관리자 비밀번호 변경 필요

# todo
- slack 플러그인 설치 및 이미지 업데이트
- 다른 서버에서 설치 시 동작 이상 여부 확인