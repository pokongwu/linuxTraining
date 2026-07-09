DIR1=/home/vagrant/ops
DIR2=/home/vagrant/dev

COUNT1=$(find "$DIR1" -type f | wc -l)
COUNT2=$(find "$DIR2" -type f | wc -l)

echo "$DIR1 files: $COUNT1"
echo "$DIR2 files: $COUNT2"

if [[ $COUNT1 -gt $COUNT2 ]]; then
    mkdir /home/vagrant/devops| cp /home/vagrant/ops/*.sh /home/vagrant/devops
else
    echo "Folder contents are modirate"
fi
