# Middle Low German Future

Dieses Repositorium enthält die verwendeten Daten und Skripte für den Aufsatz "Ihden, Sarah / Schnee, Lena (i. E.): Expressing future reference in Middle Low German. In: Hartmann, Stefan / Schnee, Lena (eds.): Futures of the Past: The diachrony of future constructions across language. Berlin: Language Science Press (Advances in Historical Linguistics)." 

Die Daten zu den qualitativen und der quantitativen Analyse (Abschnitt 4.1 bzw. 4.2) liegen jeweils in den Ordnern "qualitativ" bzw. quantitativ. Alle verwendeten Skripte liegen im Ordner "Skripte". Damit letztere auf die Daten zugreifen können, muss die Ordnerstruktur beibehalten werden.

## Qualitative Analysen (Abschnitt 4.2)

### Übersicht 

| directory   | content | 
| :-------- | :------- |
|1_pdf_niederdeutsche_Bibeln | pdf der drei Bibeln im ReN, mit Markierung der gemeinsamen Passagen |	
| 2_txt_files_vulgata | von https://www.ub.uni-freiburg.de/fileadmin/ub/referate/04/bibelinh.htm#anfangvg |
| 3_collatinus_annotated_files | Output aus Collatinus |
| 4_annotationsdatei | A. Abgleich_Genesis_Exodus[datum].xlsx: annotation file: horizontally left latin vlugate with annotations, separate annotationcolumns for the mlg bibles |
| 5_analysedatei_futurbelege | B1. Futurbelege_Vulgata_[datum].xlsx vertikalisiert, 1 zeile pro Übersetzung, alle Annotationen in einer Spalte vereint, filterbar nach mlg bible |
| 6_analysedatei_bibelstellenübersicht | B2. Uebersicht_Bibelstellen[datum].xlsx: horizontale Ansicht mit Konstruktionen, Formen und Zeilen der MLG pro Beleg (1 Zeile 1 Stelle)| 
| 7_passivbelege | Analysedateien für Passivbelege (Entsprechung B1 und B2) |

### Vorgehen 

- Die lat. Bibelpassagen (im Ordner: 2_txt_files_vulgata) werden mit dem Programm *Collatinus*  ((https://github.com/biblissima/collatinus))  pos getagged und lemmatisiert.
- Der *Collatinus*-Output (im Ordner: 3_collatinus_annotated_files) wird mit dem Python-Skript **1_csv_from_Collatinus.ipynb** in ein tidy Format gebracht und zu einer Datei (im Ordner: 4_annotationsdatei) zusammengeführt. 
- Mit dem R-Skript **2_ident_futur2.r** werden formal mögliche Futur2 Belege (lat.) markiert, die manuell überprüft werden müssen. 
- Die potentiellen Futurbelege (lat.) werden unter Zuhilfename der Bibelstellenangabe und einer neuhochdeutschen Bibel in den mnd. Bibelausschnitten (im Ordner: 1_pdf_niederdeutsche_Bibeln) identifiziert.
- Dabei werden Fehltreffer aussortiert. Die verschiedenen Annotationsebenen sowie Inhalt und Herkunft der Spalten sind im  **Datadict**  (mehrere Datenblätter für A, B1, B2) dokumentiert. 
- Alle Annotationen werden in der Annotationsdatei A vorgenommen.
- Dateien B1 und B2  werden auf Grundlage von A mittels der folgenden Skripte erstellt.
    - **3_modify_dataset.r (A-->B1)**
    - **4_make_overview_futurates.r (B1-->B2)**
- Abbildungen werden mit dem Skript **4_make_figures.R** erstellt
- Nachträglich wurden die entsprechende Übersicht bzw. Abbildungen für die passivischen Belege mit den folgenden Skripten vorgenommen:
    - **5_make_overview_futurates_PASSIV.r**
    - **6_make_figure_passive.r**


## Quantitative Analyse (Abschnitt 4.1)

### Übersicht 

| file   | description | 
| :-------- | :------- |
| werden_inf+werden_vvps[Datum].xlsx | Datenset                                                   | 
| Textübersicht_REN.xlsx | Metadatenübersicht ReN Korpus |
| finite_verbs_per_text_ren.xlsx |Anzahl als finit getaggter Verben pro Text |
| finite_modals_per_text_ren.xlsx | Anzahl als finit getaggter Modalverben pro Text |

### Vorgehen

Auswertung mit folgendem Skript:

**quantitative.r**
