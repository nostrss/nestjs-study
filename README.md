### AWS EC2 생성 (Ubuntu)

- Free Tier 활용
- Key Pair 생성 및 저장

### Ubuntu 환경 설정

```bash
# EC2 접속
$ ssh -i ~/Documents/aws/nestjs-study.pem ubuntu@{ec2 public ip}

# dockercompose 파일 복사
$ ssh -i ~/Downloads/fastcampus-nestjs.pem docker-compose.yml ubuntu@{ec2 public ip}:/home/ubuntu

# docker 설치
# https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
$ sudo chmod 666 /var/run/docker.sock
$ sudo apt install docker-compose
```

### Github Actions 설정

- Personal access token(classic) 발급 및 등록

  - https://github.com/settings/tokens 에서 Personal access token(classic) 발급
  - https://github.com/<repository이름>/settings/secrets/actions 에서 GHCR_TOKEN 로 등록

- 다른 환경변수도 등록

  - dockerfile에서 참고하는 모든 환경변수 등록

- Ubuntu 서버에 Github Action Runner 설치

  - https://github.com/nostrss/nestjs-study/settings/actions/runners
  - 마지막 ./run.sh 실행은 nohup과 &(백그라운드) 를 활용해 세션이 끊어져도 종료없이 백그라운드에서 실행하도록 함

  ```bash
  $ nohup ./run.sh &
  ```

- .github/workflows/main.yml 작성
