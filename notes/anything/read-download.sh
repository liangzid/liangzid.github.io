
path163="http://music.163.com/song/media/outer/url?id="
mp3=".mp3"
# go to the path
cd /mnt/h/music/

for line in `cat /mnt/d/allDataForWindows/Desktop/musiclist.txt`
do
    
    
    name=${line%,*}
    ids=${line#*,}
    id=${ids%\n}
    # echo 1111111111111111111111111
    # echo $name
    # echo 22222222222222222222222
    # echo $id
    # echo 33333333333333333333333333
    
    
    wget -O "${name}$mp3" "${path163}${id}.mp3"
    echo "=============================================="
    echo "download ${name}$mp3 on ${path163}${id}$mp3 OK."
    echo "=============================================="

    
done



echo "done."







