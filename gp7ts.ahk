X := 592, Y = 69, D = 4, H = 8, P = 5, C = 2, S = 2, E = 1
dir = %A_ScriptDir%\digits

#SingleInstance Force
CoordMode Pixel, Screen

N(IX) {
  global Y, D, H, dir
  n := 0
  loop {
    ImageSearch, , , IX, Y, IX+D, Y+H, %dir%\%n%.png
    if !ErrorLevel
      return n
    n++
  }
}

bc := [0.125, 0.25, 0.375, 0.5, 0.625, 0.75, 0.875, 1.0, 1.125, 1.25, 1.375, 1.5, 1.625, 1.75, 1.875, 2.0, 2.125, 2.25, 2.375, 2.5, 2.625, 2.75, 2.875, 3.0, 3.125, 3.25, 3.375, 3.5, 3.625, 3.75, 3.875, 4.0, 4.25, 4.5, 4.75, 5.0, 5.25, 5.5, 5.75, 6.0, 6.25, 6.5, 6.75, 7.0, 7.25, 7.5, 7.75, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5, 11.0, 11.5, 12.0, 12.5, 13.0, 13.5, 14.0, 14.5, 15.0, 15.5, 16.0, 17.0, 18.0, 19.0, 20.0, 21.0, 22.0, 23.0, 24.0, 25.0, 26.0, 27.0, 28.0, 29.0, 30.0, 31.0, 32.0, 34.0, 36.0, 38.0, 40.0, 42.0, 44.0, 46.0, 48.0, 50.0, 52.0, 54.0, 56.0, 58.0, 60.0, 62.0, 64.0, 68.0, 72.0, 76.0, 80.0, 84.0, 88.0, 92.0, 96.0, 100.0, 104.0, 108.0, 112.0, 116.0, 120.0, 124.0, 128.0]

sigs := [[1.32], [1.16, 2.32], [3.32], [1.8, 2.16, 4.32], [5.32], [3.16, 6.32], [7.32], [1.4, 2.8, 4.16, 8.32], [9.32], [5.16, 10.32], [11.32], [3.8, 6.16, 12.32], [13.32], [7.16, 14.32], [15.32], [2.4, 1.2, 4.8, 8.16, 16.32], [17.32], [9.16, 18.32], [19.32], [5.8, 10.16, 20.32], [21.32], [11.16, 22.32], [23.32], [3.4, 6.8, 12.16, 24.32], [25.32], [13.16, 26.32], [27.32], [7.8, 14.16, 28.32], [29.32], [15.16, 30.32], [31.32], [4.4, 2.2, 1.1, 8.8, 16.16, 32.32], [17.16], [9.8, 18.16], [19.16], [5.4, 10.8, 20.16], [21.16], [11.8, 22.16], [23.16], [6.4, 3.2, 12.8, 24.16], [25.16], [13.8, 26.16], [27.16], [7.4, 14.8, 28.16], [29.16], [15.8, 30.16], [31.16], [8.4, 4.2, 2.1, 16.8, 32.16]]

_sigs := [[17.8], [9.4, 18.8], [19.8], [10.4, 5.2, 20.8], [21.8], [11.4, 22.8], [23.8], [12.4, 6.2, 3.1, 24.8], [25.8], [13.4, 26.8], [27.8], [14.4, 7.2, 28.8], [29.8], [15.4, 30.8], [31.8], [16.4, 8.2, 4.1, 32.8], [17.4], [18.4, 9.2], [19.4], [20.4, 10.2, 5.1], [21.4], [22.4, 11.2], [23.4], [24.4, 12.2, 6.1], [25.4], [26.4, 13.2], [27.4], [28.4, 14.2, 7.1], [29.4], [30.4, 15.2], [31.4], [16.2, 8.1, 32.4], [17.2], [18.2, 9.1], [19.2], [20.2, 10.1], [21.2], [22.2, 11.1], [23.2], [24.2, 12.1], [25.2], [26.2, 13.1], [27.2], [28.2, 14.1], [29.2], [30.2, 15.1], [31.2], [32.2, 16.1], [17.1], [18.1], [19.1], [20.1], [21.1], [22.1], [23.1], [24.1], [25.1], [26.1], [27.1], [28.1], [29.1], [30.1], [31.1], [32.1]]

sigs.push(_sigs*)

MW := D*4 + P + C + S*2 + E

#IfWinActive ahk_exe GuitarPro7.exe
  loop {
    `::
      ImageSearch PX, , X, Y, X+MW, Y+H, %dir%\point.png
      ImageSearch CX, , X, Y, X+MW, Y+H, %dir%\colon.png

      if ErrorLevel
        continue

      res := N(X) (PX = X+D+E ? ("." N(X+D+P) (CX = X+D+P+D+E ? "" : (N(X+D+P+D+S) (CX = X+D+P+D+S+D+E ? "" : N(X+D+P+D+S+D+S))))) : (N(X+D+S) (PX = X+D+S+D+E ? ("." N(X+D+S+D+P) (CX = X+D+P+D+S+D+E ? "" : N(X+D+S+D+P+D+S))) : (N(X+D+S+D+S) "." N(X+D+S+D+S+D+P)))))

      if res not between 0.125 and 128.0
        continue

      i := 0
      while bc[++i] < res
        continue

      (ts = bc[i]) ? (sigs[i][++j] or j := 1) : j := 1
      ts := bc[i]

      nums := strsplit(sigs[i][j], "."), tn = nums[1], bn = nums[2]

      send {CtrlDown}{t}{CtrlUp}{Tab 8}
      if tn[1] <= 2
        send {End}
      else
        send {Home}
      send %tn%{Tab}
      if bn[1] = 3
        send {Home}
      else
        send {End}
      send %bn%{Enter}
    return
  }
#IfWinActive
