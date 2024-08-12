FROM python:3.10

# コマンド実行ディレクトリの指定
WORKDIR /code

RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# ローカルのファイルをコンテナにコピー
COPY . .

# ライブラリのインストール
RUN pip install --no-cache-dir --upgrade -r requirements.txt