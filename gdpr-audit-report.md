# Audyt zgodnosci RODO/GDPR - kasiamalecphoto.pl

## Data audytu: 2026-02-16
## Audytor: Automatyczny audyt kodu zrodlowego
## Zakres: Wszystkie pliki HTML (17 stron), CSS, JS, zasoby zewnetrzne

---

## PODSUMOWANIE WYKONAWCZE

Strona kasiamalecphoto.pl (Kasia Malec Photography) zostala poddana audytowi zgodnosci z RODO, ustawa o swiadczeniu uslug droga elektroniczna (UUDE), prawem telekomunikacyjnym i innymi regulacjami. Strona jest statycznym serwisem HTML/CSS/JS hostowanym na GitHub Pages.

**Wynik ogolny: Strona NIE jest gotowa do uruchomienia produkcyjnego pod wzgledem prawnym.**

| Kategoria | Liczba znalezien |
|-----------|-----------------|
| KRYTYCZNE (ryzyko kary) | 5 |
| WAZNE (powinno byc naprawione) | 6 |
| INFORMACYJNE (do swiadomosci) | 4 |

---

## 1. DO NATYCHMIASTOWEGO WDROZENIA (naruszenia prawne)

---

### Znalezienie #1: Brak strony Polityki Prywatnosci

**Odniesienie do checklisty:** 1.1.1, 1.1.2, 1.1.4-1.1.15
**Waznosc: KRYTYCZNE**

**Stan obecny:**
- Brak jakiejkolwiek strony z polityka prywatnosci. Przeszukano cala strukture plikow - nie istnieje zadna strona `polityka-prywatnosci/`, `privacy-policy/`, `regulamin/` ani podobna.
- Brak linku do polityki prywatnosci w stopce (footer) na jakiejkolwiek podstronie. Wszystkie 17 plikow HTML maja identyczna sekcje `footer-bottom` zawierajaca jedynie: `© [rok] Kasia Malec Photography. Wszelkie prawa zastrzezone.`
- Brak linku do polityki prywatnosci gdziekolwiek w nawigacji.

**Przyklady plikow (kazda podstrona ma identyczny footer):**
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (linia 368-370)
- `/Users/lkaczmarek/Desktop/new-malecphoto/kontakt/index.html` (linia 183-185)
- `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html` (linia 400-402)

**Naruszenie:** RODO art. 12 ust. 1, art. 13 - obowiazek informacyjny. Strona zbiera dane (formularz kontaktowy w JS jest przygotowany, podstrona kontaktowa zawiera dane kontaktowe zachecajace do kontaktu), a jednoczesnie nie informuje uzytkownikow o przetwarzaniu ich danych.

**Wymagane dzialanie:**
1. Utworzyc strone `/polityka-prywatnosci/index.html` zawierajaca pelna polityke prywatnosci zgodna z art. 13 RODO (wszystkie elementy z checklisty 1.1.4-1.1.15)
2. Dodac link do polityki prywatnosci w sekcji `footer-bottom` na KAZDEJ z 17 podstron
3. Dodac link do polityki prywatnosci w sekcji "Szybkie linki" w footer

**Implementacja:**
W kazdym pliku HTML, w sekcji `<div class="footer-bottom">` dodac:
```html
<div class="footer-legal">
    <a href="/malec-photo-website/polityka-prywatnosci/">Polityka prywatnosci</a>
</div>
```

---

### Znalezienie #2: Brak NIP na stronie

**Odniesienie do checklisty:** 3.1.4, 8.1
**Waznosc: KRYTYCZNE**

**Stan obecny:**
- NIP nie pojawia sie nigdzie na stronie. Przeszukano wszystkie 17 plikow HTML - brak jakiejkolwiek wzmianki o NIP, numerze identyfikacji podatkowej ani numerze rejestrowym.
- Stopka kazdej podstrony zawiera jedynie: email, telefon i "Lodz, Polska"

**Przyklady plikow:**
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (linia 360-365) - footer "Kontakt" zawiera email, telefon, link do Google Maps
- `/Users/lkaczmarek/Desktop/new-malecphoto/kontakt/index.html` (linia 178-181) - identycznie
- Wszystkie pozostale podstrony - identycznie

**Naruszenie:** Art. 16 ust. 1 ustawy Prawo przedsiebiorcow (Dz.U. 2024 poz. 236) - obowiazek umieszczania NIP w ofertach. Art. 5 ust. 2 pkt 1 UUDE - obowiazek informacyjny uslugodawcy.

**Wymagane dzialanie:**
Dodac NIP w stopce kazdej podstrony, obok danych kontaktowych.

**Implementacja:**
W sekcji footer "Kontakt" kazdego pliku HTML dodac linie z NIP:
```html
<p>E-mail: kasiamalecphoto@gmail.com<br>
Tel: +48 609 228 085<br>
NIP: [NUMER NIP]<br>
Lodz, Polska</p>
```

---

### Znalezienie #3: Brak pelnych danych identyfikacyjnych administratora/przedsiebiorcy

**Odniesienie do checklisty:** 1.1.4, 1.4.1, 3.1.1, 3.1.2
**Waznosc: KRYTYCZNE**

**Stan obecny:**
- Na stronie widnieje jedynie "Kasia Malec Photography" jako nazwa marki (we wszystkich naglowkach, logo, schema.org markup)
- Brak pelnego imienia i nazwiska: "Katarzyna Malec" - nigdzie na stronie
- Brak pelnego adresu siedziby (jest jedynie "Lodz, Polska" bez ulicy, numeru, kodu pocztowego)
- Strona "O mnie" (`/Users/lkaczmarek/Desktop/new-malecphoto/o-mnie/index.html`, linia 103) uzywa jedynie "Kasia" jako imienia

**Przyklady:**
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` linia 77: `<a href="..." class="logo">Kasia Malec Photography</a>`
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` linia 47: schema.org: `"name": "Kasia Malec Photography"`
- `/Users/lkaczmarek/Desktop/new-malecphoto/o-mnie/index.html` linia 42: schema.org: `"name": "Kasia Malec"`

**Naruszenie:** RODO art. 13 ust. 1 lit. a (tozsamosc administratora), Art. 5 ust. 2 pkt 1 UUDE (pelna nazwa/imie i nazwisko przedsiebiorcy), Art. 5 ust. 2 pkt 1 UUDE (adres siedziby).

**Wymagane dzialanie:**
1. W stopce dodac pelne dane firmy: "Katarzyna Malec" (lub pelna nazwa JDG z CEIDG), pelny adres z CEIDG
2. Na stronie kontaktowej i "O mnie" wskazac pelne dane administratora

**Implementacja:**
W sekcji footer "O firmie" kazdego pliku HTML zmienic na:
```html
<h3>O firmie</h3>
<p>Katarzyna Malec<br>
[Ulica i numer, kod pocztowy Lodz]<br>
NIP: [NUMER]</p>
<p>Profesjonalna fotografia kulinarna i produktowa dla restauracji, marek spozywczych i agencji.</p>
```

---

### Znalezienie #4: Google Fonts ladowane z CDN Google (transfer IP do USA)

**Odniesienie do checklisty:** 1.2.6, 2.2.1, 2.2.2
**Waznosc: KRYTYCZNE**

**Stan obecny:**
Google Fonts (Inter i Playfair Display) sa ladowane z zewnetrznego CDN Google na KAZDEJ z 17 podstron + stronie 404. Lacznie znaleziono **44 odwolan** do `fonts.googleapis.com` i `fonts.gstatic.com`.

Kazdy plik HTML zawiera w sekcji `<head>`:
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
```

**Przyklady plikow:**
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (linie 35-37)
- `/Users/lkaczmarek/Desktop/new-malecphoto/kontakt/index.html` (linie 10-12)
- `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html` (linie 13-15)
- `/Users/lkaczmarek/Desktop/new-malecphoto/404.html` (linie 12-14)
- ...i wszystkie 14 pozostalych podstron identycznie

**Problem prawny:**
Ladowanie fontow z `fonts.googleapis.com` powoduje, ze przegladarka kazdego uzytkownika wykonuje zapytanie HTTP do serwerow Google, przekazujac adres IP uzytkownika do Google LLC (USA). Adres IP jest danym osobowa w rozumieniu RODO. Po wyroku LG Munchen z 20.01.2022 (sygn. 3 O 17493/20) jest to uznawane za naruszenie RODO, poniewaz odbywa sie bez zgody uzytkownika i bez podstawy prawnej.

Dodatkowo: brak polityki prywatnosci oznacza, ze uzytkownik nie jest w ogole informowany o tym transferze.

**Wymagane dzialanie:**
Self-hosting fontow Inter i Playfair Display - pobranie plikow fontow i zaladowanie ich lokalnie z serwera.

**Implementacja:**
1. Pobrac fonty z https://gwfh.mranftl.com/ (google-webfonts-helper) lub https://github.com/fontsource
2. Umiescic pliki .woff2 w katalogu `/fonts/` lub `/css/fonts/`
3. W `/css/style.css` dodac reguly `@font-face`
4. Z KAZDEGO z 17+ plikow HTML usunac 3 linie: `<link rel="preconnect" href="https://fonts.googleapis.com">`, `<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>`, `<link href="https://fonts.googleapis.com/css2?..." rel="stylesheet">`

---

### Znalezienie #5: Link do Google Maps w stopce i na stronie kontaktowej (transfer IP)

**Odniesienie do checklisty:** 1.1.7, 1.6.1
**Waznosc: WAZNE** (nize niz Google Fonts, bo to link - nie automatyczny transfer)

**Stan obecny:**
Link do Google Maps (`https://maps.app.goo.gl/JeP3frKNQ164ruku7`) pojawia sie w 6 lokalizacjach:

1. `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` linia 364: footer
2. `/Users/lkaczmarek/Desktop/new-malecphoto/kontakt/index.html` linia 114: karta "Lokalizacja" - "Zobacz na mapie Google"
3. `/Users/lkaczmarek/Desktop/new-malecphoto/kontakt/index.html` linia 180: footer
4. `/Users/lkaczmarek/Desktop/new-malecphoto/404.html` linia 106: footer
5. `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-warszawa/index.html` linia 174: footer
6. `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/index.html` linia 199: footer

**Ocena:** Link do Google Maps sam w sobie NIE jest problemem RODO - to jest zwykly hiperlink, ktory nie laduje zadnych zasobow z Google dopoki uzytkownik w niego nie kliknie (w przeciwienstwie do embeddowanej mapy iframe). Klikniecie jest swiadomym dzialaniem uzytkownika. Jednak:
- Nalezy o tym wspomnienic w polityce prywatnosci (odbiorcy danych)
- Brak jest osadzonych map Google (iframe) - to dobrze
- Linki maja poprawnie `target="_blank" rel="noopener"`

**Wymagane dzialanie:**
Wspomnienc o linku do Google Maps w polityce prywatnosci. Nie jest wymagana zmiana techniczna.

---

## 2. PRZED URUCHOMIENIEM PRODUKCJI

---

### Znalezienie #6: Testimoniale (opinie klientow) bez udokumentowanej zgody

**Odniesienie do checklisty:** 1.2.4, 5.2.1, 5.3.1
**Waznosc: WAZNE**

**Stan obecny:**
Opinie firm sa publikowane na 2 podstronach:

**Strona glowna** (`/Users/lkaczmarek/Desktop/new-malecphoto/index.html`):
- Linia 259-266: Sekcja "Zaufali mi" z nazwami firm: "Chata Wuja Toma", "Pizzeria Oliwa & Oregano"
- Linia 268-289: Sekcja "Co mowia o mnie klienci" z pelna trescia opinii i nazwami firm

**Strona szkolen** (`/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/szkolenia-fotografia-kulinarna/index.html`):
- Linia 251-267: Sekcja "Opinie uczestnikow szkolen" z pelna trescia tych samych opinii, plus informacja "Restauracja" jako podpis

**Ocena prawna:**
- Nazwy firm (Chata Wuja Toma, Pizzeria Oliwa & Oregano) NIE sa danymi osobowymi w rozumieniu RODO (art. 4 pkt 1 - dane osobowe to dane osob fizycznych)
- Jednak publikacja opinii przypisanych do firmy wymaga zgody tej firmy (ochrona dobrego imienia - art. 43 KC w zw. z art. 23 KC)
- Wymog Dyrektywy Omnibus (od 01.01.2023): opinie musza byc autentyczne

**Wymagane dzialanie:**
1. Uzyskac pisemna lub mailowa zgode od obu firm na publikacje opinii na stronie. Wzor: "Wyrazam zgode na publikacje powyzszej opinii na stronie kasiamalecphoto.pl."
2. Zachowac dowod zgody (email, wiadomosc)

---

### Znalezienie #7: Brak klauzuli informacyjnej przy funkcjonalnosci kontaktowej

**Odniesienie do checklisty:** 1.3.1, 1.3.3
**Waznosc: WAZNE**

**Stan obecny:**
- W pliku `/Users/lkaczmarek/Desktop/new-malecphoto/js/main.js` (linie 298-346) znajduje sie pelna implementacja walidacji formularzy, wlacznie z walidacja checkboxa "RODO" (linie 327-332):
```javascript
// Checkbox validation (RODO)
const checkbox = form.querySelector('input[type="checkbox"][required]');
if (checkbox && !checkbox.checked) {
    isValid = false;
    alert('Musisz zaakceptowac polityke prywatnosci.');
}
```
- Jednak ZADEN plik HTML aktualnie nie zawiera znacznika `<form>` - formularz kontaktowy nie jest zaimplementowany w HTML
- Strona kontaktowa (`/Users/lkaczmarek/Desktop/new-malecphoto/kontakt/index.html`) zawiera jedynie karty z danymi kontaktowymi (email, telefon, social media) bez formularza

**Ocena:**
- Obecnie nie ma formularza, wiec klauzula informacyjna przy formularzu nie jest pilna
- Jednak JS jest przygotowany na formularz z checkboxem RODO, co sugeruje plan dodania formularza
- Strona kontaktowa zacheca do kontaktu emailowego - email tez jest forma zbierania danych osobowych, ale obowiazek informacyjny zostanie spelniony przez polityke prywatnosci

**Wymagane dzialanie:**
1. Jesli formularz kontaktowy zostanie dodany, MUSI zawierac klauzule informacyjna pod formularzem
2. Tresc checkboxa powinna brzmiec: "Zapoznalem/am sie z Polityka Prywatnosci" (a NIE "Wyrazam zgode na przetwarzanie danych")
3. Klauzula pod formularzem: "Administratorem Twoich danych osobowych jest Katarzyna Malec, [adres]. Dane przetwarzam w celu odpowiedzi na Twoje zapytanie (art. 6 ust. 1 lit. b RODO). Wiecej informacji w Polityce Prywatnosci."

---

### Znalezienie #8: Ceny oznaczone jako "netto" bez informacji dla konsumentow

**Odniesienie do checklisty:** 4.2.1, 8.2
**Waznosc: WAZNE**

**Stan obecny:**
Ceny netto pojawiaja sie na wielu podstronach:

- `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html`:
  - Linia 119-120: "od 1500 zl" / "netto / sesja"
  - Linia 140-141: "od 2500 zl" / "netto / sesja"
  - Linia 162-163: "od 4000 zl" / "netto / sesja"
  - Linia 204: Zastrzezenie o cenach orientacyjnych (prawidlowe)
  - Linia 325: FAQ "Czy ceny zawieraja VAT?" - UWAGA: literowka "odpowiedniąstawkę" (brak spacji)

- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna/index.html` linia 284-285: "od 1500 zl" / "netto"
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/dla-restauracji-i-kawiarni/index.html` linia 148: "netto"
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/dla-marek-i-agencji/index.html` linia 194: "netto"
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-produktowa-zywnosci/index.html` linia 260: "netto"
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/szkolenia-fotografia-kulinarna/index.html` linia 279: "netto / osoba"
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/stylizacja-zywnosci/index.html` linia 238: "netto / dzien"
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/opracowanie-przepisow/index.html` linia 235: "netto / przepis"
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-warszawa/index.html` linia 123: "netto"
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-lodz/index.html` linia 184: "netto"

**Ocena:**
- Oznaczenie "netto" jest klarowne - uzytkownik wie, ze ceny sa bez VAT
- Oferta jest kierowana glownie do B2B (restauracje, marki, agencje), wiec ceny netto sa standardowa praktyka
- FAQ na stronie cennika wyjasnia kwestie VAT
- JEDNAK: jesli oferta obejmuje tez konsumentow (osoby fizyczne), ceny powinny byc podawane brutto (art. 3 ustawy o informowaniu o cenach)
- Literowka w FAQ: "odpowiedniąstawkę" (brak spacji) - plik cennik, linia 325

**Wymagane dzialanie:**
1. Na stronie cennikowej dodac adnotacje: "Podane ceny sa cenami netto. Osobom fizycznym (konsumentom) przysluguje cena brutto - prosimy o kontakt w celu uzyskania ceny brutto z VAT."
2. Poprawic literowke w FAQ: "odpowiednia stawke" (dodac spacje)

---

### Znalezienie #9: Brak Regulaminu swiadczenia uslug droga elektroniczna

**Odniesienie do checklisty:** 3.2.1, 3.2.2, 3.2.3
**Waznosc: WAZNE**

**Stan obecny:**
- Brak strony z regulaminem. Przeszukano cala strukture - nie istnieje zadna strona `regulamin/`, `terms/` ani podobna.
- Brak linku do regulaminu w stopce ani nawigacji.

**Ocena:**
Art. 8 UUDE wymaga okreslenia regulaminu przez uslugodawce swiadczacego uslugi droga elektroniczna. Strona firmowa z formularzem kontaktowym i prezentacja oferty jest usluga elektroniczna. Jednak w praktyce kontrole UKE w tym zakresie sa rzadkie dla mikroprzedsiebiorcow, a konsekwencje mniejsze niz w przypadku naruszen RODO.

**Wymagane dzialanie:**
Stworzyc prosty regulamin lub polaczyc go z polityka prywatnosci w jeden dokument "Regulamin i Polityka Prywatnosci".

---

### Znalezienie #10: Social media - linki bez skryptow sledzacych (POZYTYWNE)

**Odniesienie do checklisty:** 9.1.2
**Waznosc: INFORMACYJNE**

**Stan obecny:**
Linki do social mediow (Instagram, Facebook) sa obecne na KAZDEJ podstronie w footerze oraz na stronie kontaktowej. Linki sa implementowane jako proste hiperlinki `<a>`:

- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` linia 334-335:
```html
<a href="https://www.instagram.com/kasia_malec_photography/" class="social-link" aria-label="Instagram" target="_blank" rel="noopener">IG</a>
<a href="https://www.facebook.com/kasiamalecphotography/" class="social-link" aria-label="Facebook" target="_blank" rel="noopener">FB</a>
```

**Ocena POZYTYWNA:**
- Linki NIE laduja zadnych skryptow, pikseli, widgetow ani osadzonych elementow z Facebooka/Instagrama
- Uzyto `rel="noopener"` - prawidlowe zabezpieczenie
- Uzyto `target="_blank"` - otwiera w nowej karcie
- Brak pikseli Facebook Pixel, Instagram embeds, czy innych skryptow sledzacych
- To jest prawidlowe podejscie z perspektywy RODO - link sam w sobie nie transferuje danych

**Wymagane dzialanie:** Brak - obecna implementacja jest prawidlowa.

---

### Znalezienie #11: Brak cookies, localStorage i skryptow sledzacych (POZYTYWNE)

**Odniesienie do checklisty:** 2.1.1, 2.3.1
**Waznosc: INFORMACYJNE**

**Stan obecny:**
- Plik `/Users/lkaczmarek/Desktop/new-malecphoto/js/main.js` (446 linii) NIE zawiera zadnych odwolan do:
  - `document.cookie`
  - `localStorage`
  - `sessionStorage`
  - Google Analytics (`gtag`, `ga(`, `analytics`)
  - Facebook Pixel (`fbq`)
  - Hotjar, Mixpanel, ani zadnych innych narzedzi analitycznych
- Zaden plik HTML nie zawiera skryptow analitycznych ani sledzacych (zweryfikowano grep po calym katalogu)
- Brak iframe, brak osadzonych widgetow, brak skryptow z zewnetrznych domen (poza Google Fonts)
- CSS (`/Users/lkaczmarek/Desktop/new-malecphoto/css/style.css`) nie importuje zadnych zewnetrznych zasobow (brak `@import url(http...)`)

**Ocena POZYTYWNA:**
W obecnym stanie strona NIE wymaga bannera cookies (art. 173 Prawa telekomunikacyjnego), poniewaz nie ustawia zadnych cookies ani nie przechowuje danych w urzadzeniu koncowym uzytkownika. Jedynym zewnetrznym zasobem sa Google Fonts (patrz #4).

**Uwaga:** GitHub Pages moze technicznie ustawiac wlasne cookies serwerowe - to nalezy zweryfikowac po uruchomieniu produkcji.

**Wymagane dzialanie:** Brak - utrzymac obecny stan. Jesli w przyszlosci zostanie wdrozona analityka (GA4), banner cookies bedzie wymagany.

---

## 3. PO URUCHOMIENIU (nizszy priorytet)

---

### Znalezienie #12: Brak informacji o przekazywaniu danych do USA w kontekscie hostingu

**Odniesienie do checklisty:** 1.5.1, 1.6.1, 1.6.2
**Waznosc: WAZNE (rozwiaze sie przez polityke prywatnosci)**

**Stan obecny:**
- Strona jest hostowana na GitHub Pages (serwery w USA) - wynika z checklisty i konfiguracji repo
- GitHub przetwarza adresy IP odwiedzajacych (logi serwera)
- Brak jakiejkolwiek informacji na stronie o tym fakcie (brak polityki prywatnosci)

**Ocena:**
Transfer danych (adresow IP) do USA odbywa sie legalnie na podstawie EU-US Data Privacy Framework (DPF) - decyzja Komisji Europejskiej 2023/1795 z 10.07.2023. Zarowno GitHub/Microsoft jak i Google sa certyfikowane w ramach DPF. Jednak uzytkownik MUSI byc o tym poinformowany.

**Wymagane dzialanie:**
W polityce prywatnosci (patrz #1) uwzglednic:
1. GitHub Inc. (Microsoft) jako dostawce hostingu
2. Informacje o przekazywaniu danych do USA
3. Podstawe prawna transferu (EU-US Data Privacy Framework)

---

### Znalezienie #13: Schema.org markup nie zawiera pelnych danych firmy

**Odniesienie do checklisty:** 3.1.1, 3.1.2
**Waznosc: INFORMACYJNE**

**Stan obecny:**
Schema.org JSON-LD na stronie glownej (`/Users/lkaczmarek/Desktop/new-malecphoto/index.html`, linie 43-68):
```json
{
    "@type": "ProfessionalService",
    "name": "Kasia Malec Photography",
    "address": {
        "@type": "PostalAddress",
        "addressLocality": "Lodz",
        "addressCountry": "PL"
    }
}
```
- Brak `streetAddress` (pelny adres)
- Brak `taxID` (NIP)
- Brak `legalName` (pelna nazwa prawna)

**Wymagane dzialanie:**
Uzupelnic schema.org o pelne dane firmy po ich dodaniu na strone.

---

### Znalezienie #14: Formularz kontaktowy - brak backendu (dane nie sa wysylane)

**Odniesienie do checklisty:** 9.2.2
**Waznosc: INFORMACYJNE**

**Stan obecny:**
- JS w `/Users/lkaczmarek/Desktop/new-malecphoto/js/main.js` (linia 334-339) zawiera komentarz:
```javascript
if (isValid) {
    // Show success message
    showFormSuccess(form);
    // In production, you would send the form data here
    // form.submit() or AJAX request
}
```
- Formularz jest walidowany front-endowo, ale dane NIE sa nigdzie wysylane
- W HTML brak jakiejkolwiek formy (`<form>`) na zadnej podstronie

**Ocena:**
To nie jest problem RODO sam w sobie - jesli formularz nie zbiera danych, nie przetwarza ich. Problem pojawi sie, gdy formularz zostanie podlaczony do backendu (np. Formspree, Netlify Forms, wlasny serwer).

**Wymagane dzialanie (na przyszlosc):**
1. Jesli formularz bedzie wysilal dane przez Formspree/podobne - nalezy dodac DPA z dostawca
2. Jesli formularz bedzie wysilal dane przez `mailto:` - dane przechodza przez Gmail (Google LLC)
3. Klauzula informacyjna przy formularzu (patrz #7)

---

### Znalezienie #15: Brak informacji o braku automatycznego podejmowania decyzji

**Odniesienie do checklisty:** 1.1.14
**Waznosc: INFORMACYJNE**

**Stan obecny:**
Brak jakiejkolwiek wzmianki o zautomatyzowanym podejmowaniu decyzji lub profilowaniu. To informacja wymagana w polityce prywatnosci (art. 13 ust. 2 lit. f RODO).

**Wymagane dzialanie:**
W polityce prywatnosci dodac: "Administrator nie podejmuje decyzji w sposob zautomatyzowany i nie profiluje osob, ktorych dane dotycza."

---

## TABELA PODSUMOWUJACA

| # | Opis znalezienia | Checklist ref. | Waznosc | Status | Pilnosc |
|---|------------------|----------------|---------|--------|---------|
| 1 | Brak strony Polityki Prywatnosci | 1.1.1-1.1.15 | KRYTYCZNE | DO ZROBIENIA | Natychmiast |
| 2 | Brak NIP na stronie | 3.1.4, 8.1 | KRYTYCZNE | DO ZROBIENIA | Natychmiast |
| 3 | Brak pelnych danych identyfikacyjnych (imie, nazwisko, adres) | 1.1.4, 1.4.1, 3.1.1-3.1.2 | KRYTYCZNE | DO ZROBIENIA | Natychmiast |
| 4 | Google Fonts z CDN (transfer IP do Google/USA) | 1.2.6, 2.2.1-2.2.2 | KRYTYCZNE | DO ZROBIENIA | Natychmiast |
| 5 | Link do Google Maps (w stopce i na kontakcie) | 1.1.7, 1.6.1 | WAZNE | DO OPISANIA w polityce pryw. | Przed produkcja |
| 6 | Testimoniale bez udokumentowanej zgody firm | 1.2.4, 5.2.1, 5.3.1 | WAZNE | DO ZROBIENIA | Przed produkcja |
| 7 | Brak klauzuli informacyjnej przy formularzu (gdy bedzie) | 1.3.1, 1.3.3 | WAZNE | PLANOWANE | Przy dodaniu formularza |
| 8 | Ceny netto bez informacji dla konsumentow + literowka | 4.2.1, 8.2 | WAZNE | DO POPRAWIENIA | Przed produkcja |
| 9 | Brak Regulaminu uslug elektronicznych | 3.2.1-3.2.3 | WAZNE | DO ZROBIENIA | Przed produkcja |
| 10 | Social media - tylko linki, brak skryptow | 9.1.2 | INFORMACYJNE | OK - POZYTYWNE | -- |
| 11 | Brak cookies, localStorage, tracking | 2.1.1, 2.3.1 | INFORMACYJNE | OK - POZYTYWNE | -- |
| 12 | Brak info o transferze danych (GitHub/USA) | 1.5.1, 1.6.1-1.6.2 | WAZNE | DO ZROBIENIA w polityce pryw. | Przy polityce pryw. |
| 13 | Schema.org bez pelnych danych firmy | 3.1.1-3.1.2 | INFORMACYJNE | DO UZUPELNIENIA | Po uzupelnieniu danych |
| 14 | Formularz bez backendu | 9.2.2 | INFORMACYJNE | SWIADOMOSC | Przy podlaczeniu backendu |
| 15 | Brak info o braku profilowania | 1.1.14 | INFORMACYJNE | DO ZROBIENIA w polityce pryw. | Przy polityce pryw. |

---

## ELEMENTY POZYTYWNE (nie wymagajace zmian)

1. **SSL/HTTPS**: GitHub Pages zapewnia HTTPS automatycznie - zgodnosc z RODO art. 32
2. **Brak cookies i tracking**: Strona nie ustawia zadnych cookies ani nie uzywa narzedzi sledzacych - brak potrzeby bannera cookies
3. **Social media jako linki**: Linki do Instagrama i Facebooka sa prostymi hiperlinkami z `rel="noopener"`, nie laduja skryptow
4. **Brak iframe/embed**: Strona nie osadza zadnych zewnetrznych widgetow (mapy Google, filmy YouTube itp.)
5. **Dostepnosc**: Skip-to-content link, `lang="pl"`, alt text na obrazkach, ARIA labels - dobre praktyki
6. **Ceny oznaczone jako netto**: Jasne oznaczenie, ze ceny sa netto, wlacznie z FAQ o VAT
7. **Zastrzezenie o cenach orientacyjnych**: Prawidlowe zastrzezenie prawne na stronie cennika
8. **Copyright**: Prawidlowy znak "(c) [rok] Kasia Malec Photography"
9. **Brak zewnetrznych zasobow w CSS**: Plik style.css nie importuje niczego z zewnetrznych serwerow
10. **Brak formularza w HTML**: Aktualnie formularz nie zbiera danych - nie ma problemu z przetwarzaniem

---

## PLAN WDROZENIA - REKOMENDACJA KOLEJNOSCI

### Krok 1 (natychmiast, szacunkowo 4-6h pracy developera):
1. Self-hosting Google Fonts (Inter, Playfair Display) - pobranie, @font-face, usuniecie linkow z 17+ plikow HTML
2. Dodanie NIP w stopce kazdej podstrony
3. Dodanie pelnego imienia i nazwiska (Katarzyna Malec) oraz adresu w stopce

### Krok 2 (w ciagu 1-2 dni, wymaga przygotowania treści prawnych):
4. Utworzenie strony Polityki Prywatnosci ze wszystkimi elementami art. 13 RODO
5. Dodanie linku do Polityki Prywatnosci w footer-bottom kazdej podstrony
6. Poprawienie literowki "odpowiedniąstawkę" -> "odpowiednia stawke" na stronie cennika

### Krok 3 (w ciagu tygodnia):
7. Dodanie adnotacji o cenach brutto dla konsumentow
8. Uzyskanie pisemnej zgody od Chata Wuja Toma i Pizzeria Oliwa & Oregano na publikacje opinii
9. Utworzenie Regulaminu swiadczenia uslug elektronicznych (moze byc czescia polityki prywatnosci)

### Krok 4 (przy dodawaniu formularza kontaktowego):
10. Klauzula informacyjna pod formularzem
11. Checkbox "Zapoznalem/am sie z Polityka Prywatnosci"
12. Podlaczenie backendu formularza z DPA od dostawcy

---

## NOTA PRAWNA

Ten raport ma charakter techniczny i informacyjny. Zostal przygotowany na podstawie analizy kodu zrodlowego strony i checklisty zgodnosci prawnej. Nie stanowi porady prawnej. W przypadku watpliwosci zaleca sie konsultacje z prawnikiem specjalizujacym sie w prawie ochrony danych osobowych.

Liczba zaudytowanych plikow: 17 HTML, 1 CSS, 1 JS
Data generacji raportu: 2026-02-16
