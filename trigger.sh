#!/bin/bash
. config.sh

if [ "$#" -lt 1 ]; then
  curl -s -i -X GET "https://api.telegram.org/bot${BOT_API_KEY}/sendMessage?chat_id=${TARGET_ID}&text=HelloWorld!" > /dev/null
else
  curl -s -i -X GET "https://api.telegram.org/bot${BOT_API_KEY}/sendMessage?chat_id=${TARGET_ID}&text=$1" > /dev/null
fi
