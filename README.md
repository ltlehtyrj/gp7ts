# Guitar Pro 7 Time Signature Changer

The script updates the current measure's time signature in Guitar Pro 7, by pressing the grave accent key (\`).<br>

![usage](https://raw.githubusercontent.com/ltlehtyrj/gp7ts/master/usage.png)

To get it work, install [AutoHotkey](http://autohotkey.com) first. Then save the point, the colon and all digits from 0 to 9 in PNG (see examples), set the variables in the first line of the script, then finally run it.

X, Y — coordinates of the first pixel of the very first digit<br>
D — width of a digit (4, or 6 at 125% scaling)<br>
H — height of a digit (8, or 10 at 125% scaling)<br>
P — point area width (5)<br>
C — colon width (2)<br>
S — space between two digits (2)<br>
E — extra space (1)<br>
dir — digits folder<br>
