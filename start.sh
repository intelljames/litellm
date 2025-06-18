#!/bin/bash
set -e # 这行表示如果任何命令失败，脚本将立即退出

echo "Running Prisma DB Push..."
# 执行 Prisma 数据库模式迁移
python -m prisma db push

echo "Starting LiteLLM Proxy..."
# 启动 LiteLLM Proxy
litellm --config config.yaml --dashboard --host 0.0.0.0 --port $PORT
