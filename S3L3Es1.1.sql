# creazione tabella "disco"
create table if not exists DISCO (
	nro_serie varchar (10) not null unique,
    titolo_album varchar (150) not null,
    anno year,
    prezzo float (2) not null
    );
# creazione tabella "contiene"
create table if not exists CONTIENE (
	nro_serie_disco varchar (10) not null unique,
	codice_registrazione text (10) not null,
	nro_prog int not null unique
	);
# creazione tabella "esecuzione"
create table if not exists ESECUZIONE (
	codice_registrazione text (10) not null,
    titolo_canzone varchar (150),
    anno year
    );
   # creazione tabella "autore"
create table if not exists AUTORE (
	nome text (120),
    titolo_canzone varchar (120)
    );
# creazione tabella "cantante"
create table if not exists CANTANTE (
    nome_cantante text (120),
    codice_registrazione text (10) 
    );
#inserimento valori in "disco"    
insert into DISCO values ("a111", "Thriller", 1982, 25.00);
insert into DISCO values ("a112", "The Dark Side Of The Moon", 1973, 25.00);
insert into DISCO values ("a113", "Abbey Road", 1969, 22.50);
insert into DISCO values ("a114", "Rumours", 1977, 15.25);
insert into DISCO values ("a115", "The Wall", 1979, 25.50);
insert into DISCO values ("a116", "Back in Black", 1980, 25.50);
insert into DISCO values ("a117", "Hotel California", 1976, 24.99);
insert into DISCO values ("a118", "Led Zeppelin IV", 1971, 19.99);
insert into DISCO values ("a119", "Nevermind", 1991, 24.99);
insert into DISCO values ("a120", "The Joshua Tree", 1987, 19.50);

#inserimento valori in "contiene"
insert into CONTIENE values ("a111", "gruppo", 1);
insert into CONTIENE values ("a112", "singolo", 2);
insert into CONTIENE values ("a113", "singolo", 3);
insert into CONTIENE values ("a114", "singolo", 4);
insert into CONTIENE values ("a115", "singolo", 5);
insert into CONTIENE values ("a116", "gruppo", 6);
insert into CONTIENE values ("a117", "gruppo", 7);
insert into CONTIENE values ("a118", "singolo", 8);
insert into CONTIENE values ("a119", "gruppo", 9);
insert into CONTIENE values ("a120", "singolo", 10);

#inserimento valori in "esecuzione"
insert into ESECUZIONE values ("gruppo","Thriller",1982);
insert into ESECUZIONE values ("singolo","The Dark Side Of The Moon",1973);
insert into ESECUZIONE values ("singolo","Abbey Road",1969);
insert into ESECUZIONE values ("singolo","Rumours",1977);
insert into ESECUZIONE values ("singolo","The Wall",1979);
insert into ESECUZIONE values ("gruppo","Back in Black",1980);
insert into ESECUZIONE values ("gruppo","Hotel California",1976);
insert into ESECUZIONE values ("singolo","Led Zeppelin IV",1971);
insert into ESECUZIONE values ("gruppo","Nevermind",1991);
insert into ESECUZIONE values ("singolo","The Joshua Tree",1987);

#inserimento valori in "autore"
insert into AUTORE values("Michael Jackson", "Thriller");
insert into AUTORE values("Pink Floyd", "The Dark Side Of The Moon");
insert into AUTORE values("The Beatles", "Abbey Road");
insert into AUTORE values("Fleetwood Mac", "Rumours");
insert into AUTORE values("Pink Floyd", "The Wall");
insert into AUTORE values("AC/DC", "Back in Black");
insert into AUTORE values("Eagles", "Hotel California"); 
insert into AUTORE values("Led Zeppelin", "Led Zeppelin IV");
insert into AUTORE values("Nirvana", "Nevermind"); 
insert into AUTORE values("U2", "The Joshua Tree"); 

#inserimento valori in "cantante"
insert into CANTANTE values ("Michael Jackson", "gruppo");
insert into CANTANTE values ("Pink Floyd", "singolo");
insert into CANTANTE values ("The Beatles", "singolo");
insert into CANTANTE values ("Fleetwood Mac", "singolo");
insert into CANTANTE values ("Pink Floyd", "singolo");
insert into CANTANTE values ("AC/DC", "gruppo");
insert into CANTANTE values ("Eagles", "gruppo");
insert into CANTANTE values ("Led Zeppelin", "singolo");
insert into CANTANTE values ("Nirvana", "gruppo");
insert into CANTANTE values ("U2", "singolo");

#controlliamo che le tabelle che abbiamo creato siano complete di tutti i dati e che l'inserimento sia andato a buon fine
select * from DISCO;
select * from CONTIENE;
select * from ESECUZIONE;
select * from AUTORE;
select * from CANTANTE

#interrogazioni









 

