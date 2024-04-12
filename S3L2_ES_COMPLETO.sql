# creazione "aereoporto"
create table if not exists AEREOPORTO  (
    CITTà TEXT(20) NOT NULL, 
    NAZIONE TEXT(20) NOT NULL, 
    NUMPISTE INT
    );
# inserimento campi
INSERT INTO AEREOPORTO VALUES ("NAPOLI", "ITALIA", NULL );
INSERT INTO AEREOPORTO VALUES ("MILANO", "ITALIA", 12);
INSERT INTO AEREOPORTO VALUES ("AMSTERDAM", "OLANDA", 10);
INSERT INTO AEREOPORTO VALUES ("PARIGI", "FRANCIA", 10);
INSERT INTO AEREOPORTO VALUES ("MADRID", "SPAGNA", 8);
# creazione tabella "volo"
CREATE TABLE if not exists VOLO (
    ID_VOLO VARCHAR(255) NOT NULL,
    GIORNO_SETT TEXT (10) NOT NULL,
    CITTA_PARTENZA TEXT (20) NOT NULL,
    ORA_PARTENZA TIME NOT NULL,
    CITTA_ARRIVO TEXT (20) NOT NULL,
    ORA_ARRIVO TIME NOT NULL,
    TIPO_AEREO VARCHAR (50) NOT NULL
);
# inserimento campi
INSERT INTO VOLO VALUES ("1", "MARTEDI", "NAPOLI", "12:30:00", "MILANO", "13:30:00", "BOEING747");
INSERT INTO VOLO VALUES ("2", "SABATO", "MILANO", "11:15:00", "MADRID", "13:30:00", "BOEING737");
INSERT INTO VOLO VALUES ("3", "DOMENICA","MADRID", "17:00:00", "AMSTERDAM", "19:30:00", "JET");
INSERT INTO VOLO VALUES ("4", "LUNEDI", "AMSTERDAM", "09:15:00", "PARIGI", "10:45:00", "BOEING747");
INSERT INTO VOLO VALUES ("5", "MARTEDI", "PARIGI", "08:00:00", "NAPOLI", "09:30:00", "JET");
# creazione tabella "aereo"
CREATE TABLE if not exists AEREO (
    TIPO_AEREO VARCHAR (50) NOT NULL,
    NUMERO_PASSEGGERI INT NOT NULL,
    Q_TA_MERCI INT NOT NULL
);
# INSERIMENTO CAMPI
INSERT INTO AEREO VALUES ("BOEING747", 25, 100);
INSERT INTO AEREO VALUES ("BOEING737", 32, 120);
INSERT INTO AEREO VALUES ("JET", 8, 20);
INSERT INTO AEREO VALUES ("BOEING747", 35, 85);
INSERT INTO AEREO VALUES ("JET", 6, 15);
# città per le quali è sconosciuto il numero delle piste
 SELECT DISTINCT CITTà FROM AEREOPORTO WHERE NUMPISTE IS NULL;
# OPPURE ANCHE 
 SELECT DISTINCT * FROM AEREOPORTO WHERE NUMPISTE IS NULL;
# tipo di aereo in partenza da napoli
SELECT DISTINCT TIPO_AEREO FROM VOLO WHERE CITTA_PARTENZA = "NAPOLI";
#citta dalle quali partono voli per parigi
SELECT DISTINCT CITTA_PARTENZA FROM VOLO WHERE CITTA_ARRIVO = 'PARIGI';
# aereoporti con almeno 10 piste
SELECT DISTINCT CITTà FROM AEREOPORTO WHERE NUMPISTE >= 10;
# aereoporti con meno di 10 piste
SELECT DISTINCT CITTà FROM AEREOPORTO WHERE NUMPISTE <10;
# da quali città partono i Boeing747?
SELECT DISTINCT CITTA_PARTENZA FROM VOLO WHERE TIPO_AEREO = "BOEING747"
