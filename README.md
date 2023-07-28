# CAN Project
* Xavier와 Tranciever을 통한 CAN통신
* CAN 데이터 처리 및 시각화
## 목차
* [Information](#Information)
* [CAN Setting](#CAN통신-Setting)
* [Code Information](#코드-설명)
* [Run CAN test](#CAN통신-테스트-실행-방법)
## Information

## CAN통신 Setting
필요 장비 : Jetson AGX Xavier, CAN tranciever
### 하드웨어 설정
  1. 선 연결
  
        ![](https://github.com/Minsuuuuu/can/assets/140566894/0e0a6b41-618c-462b-a9c4-c132ea209d66)
  2. 전원 공급

### 소프트웨어 설정
  1. Terminal 1에서 enable_can.sh 파일 실행 
``` 
$ sh enable_can.sh
```

2. Terminal 2에서 CAN 데이터 송신할 준비
```
$ candump -x any
```

3. Terminal 3에서 CAN 데이터 송신 테스트
```
$ cansend can0 123#abcdabcd
```

실행 후, cansend 성공시 candump Terminal에 데이터 출력됨

(참고. CAN통신 테스트 중 에러문구 확인하고 싶으면 $ dmesg -w 명령어를 통해 확인 가능)
## 코드 설명
#### enable_can.sh
Jetson AGX Xavier에서 CAN 인터페이스 설정하는 .sh 파일

#### can process.ipynb
can 데이터 중 필요한 데이터만 수집하여 시각화하는 jupyter notebook




