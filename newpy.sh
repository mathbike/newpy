echo "enter the name of the directory:" && read NAME
git clone https://github.com/mathbike/newpy ~/$NAME
rm -rf .git newpy.sh
cd $NAME
python3 -m venv .venv
COMMANDS_TXT="z.1_commands.txt"
echo -e "########## COMMANDS ##########\n" > $COMMANDS_TXT
echo "pip freeze > requirements.txt" >> $COMMANDS_TXT
code .