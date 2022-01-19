echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Oamau8/streamuhng /streamuhng
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Oamau8/streamuhng -b $BRANCH /streamuhng
fi
cd /VCPlayerBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
