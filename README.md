# Analiza-raspunsurilor-la-impuls

Ordin 1:
Încărcarea Datelor:

Se încarcă datele din fișierul lab4_order1_5.mat.
u și y sunt extrase din date.

Trasarea Intrării și Ieșirii:

Trasează intrarea (u) și ieșirea (y) în două subgrafice.

Identificarea Sistemului:

Se alege o submulțime a datelor (u_id, y_id, t_id) pentru identificarea sistemului.
Se setează valorile pentru variabilele statice (y_ss, u_ss).
Se calculează câteva caracteristici ale răspunsului la impuls ale sistemului de ordin 1, inclusiv constanta de timp (T) și câștigul (K).
Se construiește un model de stare (ssH) folosind matricele de stare A, B, C, D obținute din funcția de transfer.

Simularea și Evaluarea Performanței:

Se simulează răspunsul sistemului identificat (y2) folosind datele de validare.
Se calculează eroarea dintre răspunsul simulat și datele reale și se determină MSE (Eroarea Medie Pătratică).
Se trasează rezultatele.

 Ordin 2:
Încărcarea Datelor:

Se încarcă datele din fișierul lab4_order2_5.mat.

Trasarea Intrării și Ieșirii:

Trasează intrarea (u) și ieșirea (y) în două subgrafice.

Identificarea Sistemului:

Se alege o submulțime a datelor (u_id, y_id, t_id) pentru identificarea sistemului.
Se setează valorile pentru variabilele statice (y_ss, u_ss).
Se determină caracteristicile sistemului de ordin 2, cum ar fi perioada (T1), factorul de suprimare (zeta), și frecvența naturală (wn).
Se construiește un model de stare (H) și se simulează răspunsul sistemului.

Evaluarea Performanței și Trasarea Rezultatelor:

Se evaluează performanța sistemului identificat prin calcularea MSE.
Se trasează rezultatele comparând ieșirea reală cu cea simulată.
