#!/usr/bin/env bash

# 이 스크립트는 Proxmox 호스트에서 특정 LXC 컨테이너에 대해
# TUN 디바이스를 사용할 수 있도록 필요한 설정 두 줄을
# 컨테이너 설정 파일(/etc/pve/lxc/[ID].conf)의 맨 아래에 추가합니다.
#
# 작성자 메모:
# - 사람이 보기 좋은 형태로 간단한 안내/검증 로직을 넣었습니다.
# - 동일한 설정이 이미 있으면 중복 추가하지 않습니다.
# - 루트 권한으로 실행해야 /etc/pve 경로에 쓸 수 있습니다.

set -o errexit
set -o nounset
set -o pipefail

# 프롬프트 출력 시 이스케이프 문자를 사용하지 않도록 read -p 옵션 사용
read -r -p "[proxmox LXC ID를 입력해주세요 >>> ] " LXC_ID

# 숫자 형태인지 먼저 확인
if ! [[ "$LXC_ID" =~ ^[0-9]+$ ]]; then
  echo "오류: 숫자만 입력할 수 있습니다. (예: 101)" >&2
  exit 1
fi

# 허용 범위(1~65500) 확인
if (( LXC_ID < 1 || LXC_ID > 65500 )); then
  echo "오류: LXC ID는 1부터 65500 사이의 값이어야 합니다." >&2
  exit 1
fi

CONF_PATH="/etc/pve/lxc/${LXC_ID}.conf"

# 대상 컨테이너 설정 파일 존재 여부 확인
if [[ ! -f "$CONF_PATH" ]]; then
  echo "오류: 컨테이너 설정 파일을 찾을 수 없습니다: $CONF_PATH" >&2
  echo "힌트: 'pct list'로 컨테이너 목록을 확인하거나 ID를 다시 확인하세요." >&2
  exit 1
fi

# 추가할 설정 라인들 (요구사항 그대로)
LINE1="lxc.cgroup2.devices.allow: c 10:200 rwm"
LINE2="lxc.mount.entry: /dev/net/tun dev/net/tun none bind,create=file 0 0"

# 파일에 라인이 없는 경우에만 추가하는 함수
append_if_missing() {
  local line="$1"
  local path="$2"
  if grep -qxF "$line" "$path"; then
    echo "이미 포함됨: $line"
  else
    echo "$line" >> "$path"
    echo "추가됨: $line"
  fi
}

echo "대상 파일: $CONF_PATH"
append_if_missing "$LINE1" "$CONF_PATH"
append_if_missing "$LINE2" "$CONF_PATH"

echo "완료: $CONF_PATH 파일의 마지막에 필요한 설정이 적용되었습니다."
