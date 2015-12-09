mkdir ~/.tmp
mkdir ~/.tmp/i3lock
# Take a picture, put it in /tmp
scrot -z 'scrot.png' -e 'mv $f ~/.tmp/i3lock/scrot.png'

# Blur the picture, delete the source
convert ~/.tmp/i3lock/scrot.png -scale 10% -scale 1000% ~/.tmp/i3lock/scrot1.png
rm ~/.tmp/i3lock/scrot.png
#convert ~/.tmp/i3lock/scrot1.png ~/.config/i3/lockicon.png -gravity NorthEast -composite -matte ~/.tmp/i3lock/scrot1.png
# Lock the screen, delete the source
i3lock -i ~/.tmp/i3lock/scrot1.png && rm ~/.tmp/i3lock/scrot1.png
rm -r ~/.tmp
