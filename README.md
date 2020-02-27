# Guitar Pro 7 Time Signature Changer

The script updates the current measure's time signature in Guitar Pro 7, by pressing the grave accent key (\`).
To get it work, save the point, the colon and all digits from 0 to 9 in PNG (see examples), then set the variables:

X, Y — coordinates of the first pixel of the very first digit<br>
W — four digits width + point area width (5) + colon width (2) + width of two spaces between digits (2+2) + 1<br>
H — height of a digit<br>
D — width of a digit (4, or 6 at 125% scaling)<br>
dir — digits' folder<br>
