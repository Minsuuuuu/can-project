# CAN Project
* CAN통신
* CAN 데이터 처리 및 시각화 협업 내용
## 목차
* [Information](#Information)
* [CAN Setting](#CAN통신-Setting)
* [Code Information](#코드-설명)
## Information
#### can process.ipynb
can 데이터 중 필요한 데이터만 수집하여 시각화하는 jupyter notebook

## CAN통신 Setting
준비물 : Jetson AGX Xavier, CAN tranciever, 
### 하드웨어 설정
  1. 선 연결
  
        ![](https://github.com/Minsuuuuu/can/assets/140566894/0e0a6b41-618c-462b-a9c4-c132ea209d66)
## 코드 설명
#### enable_can.sh
Jetson AGX Xavier에서 CAN 인터페이스 설정하는 .sh 파일

## 실행 방법
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

(참고. CAN통신 테스트 중 에러문구 확인하고 싶으면 $ dmesg -w 명령어를 통해 확인 가능)

