if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/gangstar1010/Leo-filter-Bot.git /Leo-filter-Bot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Leo-filter-Bot 
fi
cd /Leo-filter-Bot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
