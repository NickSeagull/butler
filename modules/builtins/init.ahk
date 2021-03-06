﻿;;
;; Hibiscus builtins
;;
;; These functions are included under the `hs` class,
;; so they are actually static methods
;;

;;
;; Sends a key press with the appropriate modifiers
;;
press(key){
  modifier := ""
  if (GetKeyState("Shift", "P")){
    modifier := modifier . "+"
  }
  if (GetKeyState("Ctrl", "P")){
    modifier := modifier . "^"
  }
  if (GetKeyState("Alt", "P")){
    modifier := modifier . "!"
  }
  if (GetKeyState("RWin", "P")){
    modifier := modifier . "`#"
  }
  Send % modifier . key
  modifier := ""
}

;;
;; Sends a key press as its AHK keystring
;;
rawPress(key){
  SendInput % key
}

;;
;; Shows a popup near the task bar with some message
;;
popup(message) {
  TrayTip, % message, % " ", 0, 16
}

;;
;; Holds a key
;;
hold(key, isDown) {
  SendInput % "{" key " " (isDown? "down" : "up") "}"
}