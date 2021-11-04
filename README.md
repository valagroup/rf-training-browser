# Testiautomaatio koulutuksen ennakko-ohjeet:

Koulutuksen aikana tullaan opettelemaan testien tekemistä Robot Frameworkkia apuna käyttäen ja ensimmäisen päivän sujuvuuden vuoksi olisi suotavaa, että osallistujilla olisi tarvittavat ohjelmistot valmiiksi asennettuina, jolloin voisimme keskittyä käytännön tekemiseen. Ohjeissa kaikki lainausmerkein merkityt komennot on tarkoitus kirjoittaa komentoriville. Käytä komentoriviä admin roolissa.
Tarvittavia ohjelmia ovat:

### Python:

1. Windowsille:
   Lataa python3 installer osoitteessa https://www.python.org/downloads/windows/
   Seuraa installerin ohjeita ja varmista lopuksi että python on asentunut oikein tarkistamalla versio komennolla “python3 --version”
   Myös pip pitäisi löytyä asennettuna voi tarkistaa komennolla “pip --version” tai “pip3 --version”
   Vaihtoehtoisesti voi myös seurata ohjeita täältä https://phoenixnap.com/kb/how-to-install-python-3-windows jossa kohdan 7 voi jättää tekemättä.
1. Macille:
   Jos koneelta löytyy jo homebrew, niin “brew install python”
   Jos homebrewiä ei ole asennettu, niin sen asentamiseen löytyy ohjeet täältä: https://brew.sh/
   Ilman homebrewiä asentaminen tapahtuu lataamalla installeri täältä: https://www.python.org/downloads/macos/ ja seuraamalla installerin ohjeita.

### Robot Framework:

Kun python ja pip löytyvät koneelta RF asennukseen riittää:
“pip3 install robotframework”

### Node.js:

1. Windowsille:
   Installeri on ladattavissa täältä: https://nodejs.org/en/
1. Macille:
   Installerin löytää täältä: https://nodejs.org/en/
   Homebrewn kanssa “brew install node”

https://nodejs.org/download/release/v14.15.0/ Browser Library vaatii version <15

### Browser-library:

Tarvitsee pythonin/pipin sekä node.js:n asennukset toimiakseen, kun ne on asennettu:
“Pip3 install robotframework-browser”
“Rfbrowser init”
Näillä komennoilla kirjasto asentuu ja init komento lataa tarvittavat riippuvuudet
Lisä ohjeita löytyy kirjaston github sivulta: https://github.com/MarketSquare/robotframework-browser#installation-instructions

### Git:

Ohjeet windowsille ja macille löytyy https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

### Vs Code (ei pakollinen, kunhan on joku editori):

Installerit löytyvät https://code.visualstudio.com/download
