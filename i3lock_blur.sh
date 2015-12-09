mkdir ~/.tmp
mkdir ~/.tmp/i3lock
# Take a picture, put it in /tmp
scrot -z 'scrot.png' -e 'mv $f ~/.tmp/i3lock/scrot.png'

# Blur the picture, delete the source
convert ~/.tmp/i3lock/scrot.png -blur 0x6 ~/.tmp/i3lock/scrot1.png
rm ~/.tmp/i3lock/scrot.png

# Lock the screen, delete the source
i3lock -i ~/.tmp/i3lock/scrot1.png && rm ~/.tmp/i3lock/scrot1.png
rm -r ~/.tmp
