# 使用官方Python运行时作为父镜像
FROM python:3.8

# 设置工作目录为/app
WORKDIR /app

# 将当前目录内容复制到容器的/app
COPY . /app

# 安装requirements.txt中指定的任何所需包
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# 让端口80可用于世界外部
EXPOSE 80

# 定义环境变量
ENV NAME World

# 在容器启动时运行app.py
CMD ["python", "app.py"]
