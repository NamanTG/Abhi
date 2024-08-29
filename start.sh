if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/NamanTG/Abhi.git /Abhi
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Abhi
fi
cd /Abhi
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
