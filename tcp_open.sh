echo Installing Ngrok for TCP
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
echo Adding Token
ngrok authtoken 2OZdUk0gYOnt0rVa2o6CVSnuGTW_7gHwXfdJdfb5635tnBrXQ
echo Creating TCP
ngrok tcp 5900
