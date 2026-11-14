#!/bin/sh
# cliphist + fuzzel: 選択項目をクリップボードにコピーし、
# テキストならフォーカス中のウィンドウにそのまま入力もする
sel="$(cliphist list | fuzzel --dmenu)" || exit 0
[ -n "$sel" ] || exit 0

# 画像などのバイナリはコピーのみ
case "$sel" in
*"[[ binary data"*)
    printf '%s' "$sel" | cliphist decode | wl-copy
    exit 0
    ;;
esac

# decode は 1 回だけ行う。wl-copy すると store 側の watcher が
# 同内容を再保存して id が変わり、2 回目の decode が失敗するため。
tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT
printf '%s' "$sel" | cliphist decode >"$tmp"
wl-copy <"$tmp"

# fuzzel が閉じて元のウィンドウにフォーカスが戻るのを待ってから入力
wtype -s 200 - <"$tmp"
