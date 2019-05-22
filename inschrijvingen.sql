USE lo8e_sql2;

SELECT studenten.ov_nummer, CONCAT(studenten.voornaam, ' ', studenten.tussenvoegsel, ' ', studenten.achternaam) AS VolledigeNaamStudent, klassen_studenten.klas_code, klassen.cohort, CONCAT(docenten.voorletters, ' ', docenten.tussenvoegsel, ' ', docenten.achternaam) AS VolledigeNaamDocenten
FROM studenten
INNER JOIN klassen_studenten ON studenten.ov_nummer = klassen_studenten.ov_nummer
INNER JOIN klassen ON klassen_studenten.klas_code = klassen.klas_code
INNER JOIN docenten ON klassen.slb_code = docenten.docent_code
ORDER BY klas_code, studenten.achternaam ASC;