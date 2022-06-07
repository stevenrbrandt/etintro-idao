export USER=$(python3 -c 'import pwd, os; print(pwd.getpwuid(os.getuid()).pw_name)')
cp -nr /etc/skel/* $HOME/
