#!/bin/sh
# 내부 하무를 만들어 ls 실행
# 입력 인자를 내부 함수 내의 리눅스 명령어 옵션으로 전달
function() {
echo "함수 안으로 들어 왔음"
eval "ls $1"
echo "프로그램을 종료합니다."
}
echo "프로그램을 시작합니다."
order=$1
function $order
exit 0
