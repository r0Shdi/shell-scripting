read -p "UserName: " user
read -p "your Instance Public IPv4 or DNS: " server
read -p "relative path to your credintials file: " credpath

ssh -i $credpath $user@$server