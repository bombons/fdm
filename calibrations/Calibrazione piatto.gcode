G90                  ; imposta le coordinate in assolute
G28 ; homing assi
M117 Regolazione punto 1
G1 Z20 F800               ; alza l'ugello di 20 mm
G1 X50 Y50 F1500           ; sposta il carrello alle coordinate x e y che indicate
M400
G1 Z0 F800            ; abbassa l'ugello
M400
M300 S100 P100 ; avviso acustico
M400
M0 Premi per punto 2  ; comando che attende la pressione del tasto dello schermo
M117 Regolazione punto 2
G1 Z20 F800               ; alza l'ugello di 20 mm
G1 X50 Y150 F1500           ; sposta il carrello alle coordinate x e y che indicate
M400
G1 Z0 F800         ; abbassa l'ugello
M400
M300 S200 P100 ; avviso acustico
M400
M0 Premi per punto 3  ; comando che attende la pressione del tasto dello schermo
M117 Regolazione punto 3
G1 Z20 F800               ; alza l'ugello di 20 mm
G1 X150 Y150 F1500           ; sposta il carrello alle coordinate x e y che indicate
M400
G1 Z0  F800          ; abbassa l'ugello
M400
M300 S300 P100 ; avviso acustico
M400
M0 Premi per punto 4  ; comando che attende la pressione del tasto dello schermo
M117 Regolazione punto 4
G1 Z20 F800               ; alza l'ugello di 20 mm
G1 X150 Y50 F1500           ; sposta il carrello alle coordinate x e y che indicate
M400
G1 Z0 F800           ; abbassa l'ugello
M400
M300 S400 P100 ; avviso acustico
M400
M0 Premi per punto 5  ; comando che attende la pressione del tasto dello schermo
M117 Regolazione punto 5
G1 Z20 F800               ; alza l'ugello di 20 mm
G1 X110 Y110 F1500           ; sposta il carrello alle coordinate x e y che indicate
M400
G1 Z0 F800           ; abbassa l'ugello
M400
M300 S500 P100 ; avviso acustico
M400
M0 Premi per terminare ; comando che attende la pressione del tasto dello schermo
G1 Z50 F800
M400
M300 S300 P100 ; avviso acustico
M400
M300 S300 P100 ; avviso acustico
G28 X Y
