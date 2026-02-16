# Checklista zgodnosci prawnej strony internetowej
## Kasia Malec Photography - kasiamalecphoto.pl

**Data utworzenia:** 2026-02-16
**Dotyczy:** strona firmowa jednoosobowej dzialalnosci gospodarczej (fotografia kulinarna)
**Hosting:** GitHub Pages (serwery w USA)
**Technologie:** statyczny HTML, Google Fonts (CDN), brak cookies wlasnych, brak analityki (planowana)

---

## PODSUMOWANIE AUDYTU - STAN OBECNY

**KRYTYCZNE BRAKI (wymagaja natychmiastowego dzialania):**
- [ ] Brak Polityki Prywatnosci (RODO art. 13) - WYMAGANE PRAWNIE
- [ ] Brak klauzuli informacyjnej przy formularzu kontaktowym - WYMAGANE PRAWNIE
- [ ] Brak informacji o administratorze danych (imie, nazwisko, dane kontaktowe) - WYMAGANE PRAWNIE
- [ ] Brak linku do Polityki Prywatnosci w stopce - WYMAGANE PRAWNIE
- [ ] Google Fonts ladowane z CDN Google bez informacji o tym w polityce prywatnosci - WYMAGANE PRAWNIE
- [ ] Brak NIP na stronie (obowiazek wg ustawy o swiadczeniu uslug droga elektroniczna) - WYMAGANE PRAWNIE
- [ ] Opinie klientow (testimoniale) - brak udokumentowanej zgody na publikacje - RYZYKO

**BRAKI ISTOTNE (do wdrozenia w najblizszym czasie):**
- [ ] Brak Regulaminu swiadczenia uslug droga elektroniczna (lub odpowiednika)
- [ ] Ceny na stronie cennika - niejasne oznaczenie netto/brutto
- [ ] Brak informacji o przekazywaniu danych do USA (GitHub Pages, Google Fonts)

---

## 1. RODO (GDPR) - OCHRONA DANYCH OSOBOWYCH

### 1.1 Polityka Prywatnosci

| # | Wymaganie | Podstawa prawna | Priorytet | Status |
|---|-----------|----------------|-----------|--------|
| 1.1.1 | **Utworzyc osobna strone z Polityka Prywatnosci** dostepna pod stalym adresem URL (np. /polityka-prywatnosci/) | RODO art. 12 ust. 1 - informacje w zwiezlej, przejrzystej, zrozumialej formie | WYMAGANE | [ ] |
| 1.1.2 | **Link do Polityki Prywatnosci w stopce** na kazdej podstronie | RODO art. 12 ust. 1 - latwo dostepne | WYMAGANE | [ ] |
| 1.1.3 | **Link do Polityki Prywatnosci przy formularzu kontaktowym** (jesli zostanie dodany) | RODO art. 13 - informacja w momencie zbierania danych | WYMAGANE | [ ] |

**Co musi zawierac Polityka Prywatnosci (art. 13 RODO):**

| # | Element | Podstawa prawna | Priorytet | Tresc do umieszczenia |
|---|---------|----------------|-----------|----------------------|
| 1.1.4 | **Tozsamosc i dane kontaktowe administratora** | RODO art. 13 ust. 1 lit. a | WYMAGANE | Imie i nazwisko (Katarzyna Malec), adres siedziby dzialalnosci, email (kasiamalecphoto@gmail.com), telefon (+48 609 228 085). Nie wystarczy sama nazwa "Kasia Malec Photography" - musi byc pelne imie i nazwisko jako administrator. |
| 1.1.5 | **Inspektor Ochrony Danych (IOD)** - informacja, ze NIE zostal powolany | RODO art. 13 ust. 1 lit. b | WYMAGANE | Jednoosobowa dzialalnosc o tym profilu NIE ma obowiazku powolania IOD (art. 37 RODO - obowiazek dotyczy organow publicznych, podmiotow przetwarzajacych dane na duza skale, lub przetwarzajacych dane wrazliwe na duza skale). Wystarczy napisac: "Administrator nie powolal Inspektora Ochrony Danych." |
| 1.1.6 | **Cele przetwarzania i podstawy prawne** | RODO art. 13 ust. 1 lit. c | WYMAGANE | Dla kazdego celu osobno - patrz punkt 1.2 |
| 1.1.7 | **Odbiorcy danych lub kategorie odbiorcow** | RODO art. 13 ust. 1 lit. e | WYMAGANE | Wymienic: dostawca hostingu (GitHub Inc.), dostawca czcionek (Google LLC), dostawca poczty email (Google LLC - Gmail), ewentualnie biuro rachunkowe, organy panstwowe jesli wymagaja |
| 1.1.8 | **Przekazywanie danych do panstw trzecich** | RODO art. 13 ust. 1 lit. f | WYMAGANE | Wskazac, ze dane moga byc przekazywane do USA (GitHub Pages, Google Fonts, Gmail). Podac podstawe prawna - patrz punkt 1.6 |
| 1.1.9 | **Okres przechowywania danych** | RODO art. 13 ust. 2 lit. a | WYMAGANE | Dla kazdego celu: np. dane z formularza - do zakonczenia korespondencji + 3 lata (przedawnienie roszczen); dane do faktury - 5 lat (obowiazek podatkowy); opinie - do czasu wycofania zgody |
| 1.1.10 | **Prawa osoby, ktorej dane dotycza** | RODO art. 13 ust. 2 lit. b | WYMAGANE | Prawo dostepu (art. 15), sprostowania (art. 16), usuniecia (art. 17), ograniczenia (art. 18), przenoszenia (art. 20), sprzeciwu (art. 21). Wymienic kazde z podaniem jak je zrealizowac (np. "napisz na kasiamalecphoto@gmail.com") |
| 1.1.11 | **Prawo do cofniecia zgody** | RODO art. 13 ust. 2 lit. c | WYMAGANE | Informacja, ze cofniecie zgody nie wplywa na zgodnosc z prawem przetwarzania dokonanego przed cofnieciem |
| 1.1.12 | **Prawo wniesienia skargi do organu nadzorczego** | RODO art. 13 ust. 2 lit. d | WYMAGANE | "Prezes Urzedu Ochrony Danych Osobowych, ul. Stawki 2, 00-193 Warszawa, www.uodo.gov.pl" |
| 1.1.13 | **Czy podanie danych jest wymogiem ustawowym/umownym** | RODO art. 13 ust. 2 lit. e | WYMAGANE | "Podanie danych w formularzu kontaktowym jest dobrowolne, ale niezbedne do udzielenia odpowiedzi na zapytanie." |
| 1.1.14 | **Zautomatyzowane podejmowanie decyzji / profilowanie** | RODO art. 13 ust. 2 lit. f | WYMAGANE | "Administrator nie podejmuje decyzji w sposob zautomatyzowany i nie profiluje osob, ktorych dane dotycza." |
| 1.1.15 | **Jezyk Polityki Prywatnosci** | RODO art. 12 ust. 1 | WYMAGANE | Po polsku, prostym jezykiem, bez zbednego zargonu prawniczego. Strona jest po polsku, wiec polityka tez musi byc po polsku. |

### 1.2 Podstawy prawne przetwarzania danych (art. 6 RODO)

Dla kazdego celu przetwarzania nalezy wskazac odrebna podstawe prawna:

| # | Cel przetwarzania | Podstawa prawna | Priorytet | Uwagi praktyczne |
|---|-------------------|----------------|-----------|------------------|
| 1.2.1 | **Odpowiedz na zapytanie z formularza kontaktowego** | Art. 6 ust. 1 lit. b RODO (niezbednosc do podjecia dzialan na zadanie osoby przed zawarciem umowy) LUB art. 6 ust. 1 lit. f (prawnie uzasadniony interes - odpowiedz na zapytanie) | WYMAGANE | Lepsza podstawa to art. 6 ust. 1 lit. b - bo osoba sama inicjuje kontakt w celu potencjalnego zamowienia uslugi. NIE wymaga checkboxa zgody na przetwarzanie danych w celu odpowiedzi. |
| 1.2.2 | **Realizacja umowy o wykonanie uslugi fotograficznej** | Art. 6 ust. 1 lit. b RODO (niezbednosc do wykonania umowy) | WYMAGANE | Dotyczy etapu po zawarciu umowy - przetwarzanie danych klienta (imie, nazwisko, adres, NIP, email) w celu realizacji zlecenia. |
| 1.2.3 | **Wystawianie faktur i obowiazki podatkowe** | Art. 6 ust. 1 lit. c RODO (obowiazek prawny - Ordynacja podatkowa, ustawa o VAT, ustawa o rachunkowosci) | WYMAGANE | Dane z faktury przechowywane 5 lat od konca roku podatkowego. |
| 1.2.4 | **Publikacja opinii klientow na stronie** | Art. 6 ust. 1 lit. a RODO (zgoda) | WYMAGANE | Wymaga wyraznej zgody osoby/firmy. Opinie na stronie zawieraja nazwy firm - patrz punkt 5. |
| 1.2.5 | **Dochodzenie roszczen / obrona przed roszczeniami** | Art. 6 ust. 1 lit. f RODO (prawnie uzasadniony interes) | WYMAGANE | Uzasadnia przechowywanie danych po zakonczeniu umowy (do 3 lat - ogolny termin przedawnienia roszczen cywilnych, do 6 lat dla roszczen stwierdzonych prawomocnym wyrokiem). |
| 1.2.6 | **Ladowanie Google Fonts (przekazanie adresu IP do Google)** | Art. 6 ust. 1 lit. f RODO (prawnie uzasadniony interes - prawidlowe wyswietlanie strony) | WYMAGANE | Kontrowersyjne po wyroku LG Munchen z 20.01.2022 (sygn. 3 O 17493/20). Bezpieczniej hostowac fonty lokalnie - patrz punkt 2.2. |
| 1.2.7 | **Analityka internetowa (jesli wdrozona)** | Zalezy od narzedzia - patrz punkt 2.4 | WYMAGANE (jesli wdrozona) | GA4 wymaga zgody (art. 6 ust. 1 lit. a). Plausible moze dzialac na podstawie art. 6 ust. 1 lit. f. |

### 1.3 Klauzule informacyjne

| # | Wymaganie | Podstawa prawna | Priorytet | Implementacja |
|---|-----------|----------------|-----------|---------------|
| 1.3.1 | **Klauzula przy formularzu kontaktowym** | RODO art. 13 - obowiazek informacyjny w momencie zbierania danych | WYMAGANE | Pod formularzem (lub z linkiem do pelnej polityki) umiescic: "Administratorem Twoich danych osobowych jest [imie nazwisko], [adres]. Dane przetwarzam w celu odpowiedzi na Twoje zapytanie (art. 6 ust. 1 lit. b RODO). Wiecej informacji w [Polityce Prywatnosci]." |
| 1.3.2 | **Klauzula informacyjna w odpowiedziach email** | RODO art. 13/14 | ZALECANE | W stopce emaila: krotka informacja o administratorze i link do Polityki Prywatnosci. Nie jest bezwzglednie wymagana prawnie, ale stanowi dobra praktyke i chroni przed zarzutami. |
| 1.3.3 | **Checkbox zgody przy formularzu - CZY POTRZEBNY?** | RODO art. 6 ust. 1 lit. b, art. 7 | WYJASNIENIE | **NIE jest wymagany checkbox "wyrazam zgode na przetwarzanie danych"** jesli podstawa prawna to art. 6 ust. 1 lit. b (podjecie dzialan przed zawarciem umowy). Checkbox sugeruje, ze podstawa jest zgoda, co komplikuje sytuacje. Wystarczy klauzula informacyjna. Natomiast w kodzie JS (main.js linia 328-332) jest walidacja checkboxa "akceptacji polityki prywatnosci" - jest to w porzadku jako potwierdzenie zapoznania sie, ale NIE jako zgoda na przetwarzanie. Tresc powinna brzmiec: "Zapoznalem/am sie z Polityka Prywatnosci" a NIE "Wyrazam zgode na przetwarzanie danych". |

### 1.4 Administrator danych - obowiazki

| # | Wymaganie | Podstawa prawna | Priorytet | Status/Uwagi |
|---|-----------|----------------|-----------|--------------|
| 1.4.1 | **Identyfikacja administratora na stronie** | RODO art. 4 pkt 7, art. 13 ust. 1 lit. a | WYMAGANE | Administrator = osoba fizyczna prowadzaca JDG (Katarzyna Malec). Na stronie musi pojawic sie pelne imie i nazwisko, nie tylko "Kasia Malec Photography". |
| 1.4.2 | **Inspektor Ochrony Danych - czy wymagany?** | RODO art. 37 | WYJASNIENIE | **NIE.** Obowiazek powolania IOD dotyczy: (a) organow publicznych, (b) podmiotow ktorych glowna dzialalnosc polega na operacjach przetwarzania wymagajacych regularnego i systematycznego monitorowania osob na duza skale, (c) podmiotow przetwarzajacych dane wrazliwe na duza skale. Fotografka kulinarna nie spelnia zadnego z tych kryteriow. |
| 1.4.3 | **Rejestr Czynnosci Przetwarzania (RCP)** | RODO art. 30 | WYJASNIENIE | **Formalnie NIE jest wymagany** dla podmiotow zatrudniajacych ponizej 250 osob, CHYBA ZE przetwarzanie nie ma charakteru sporadycznego, lub obejmuje szczegolne kategorie danych (art. 30 ust. 5). Jednoosobowa firma fotograficzna, ktora przetwarza dane klientow regularnie (formularze, faktury), moze podlegac temu wyjatkowi ("nie ma charakteru sporadycznego"). **ZALECENIE:** Prowadzic uproszczony RCP - to prosty dokument (Excel/Google Sheets) i chroni w razie kontroli UODO. Nie musi byc publiczny na stronie. |
| 1.4.4 | **Procedury realizacji praw osob** | RODO art. 12 | ZALECANE | Przygotowac wewnetrzna procedure jak reagowac na zadanie dostepu do danych, usuniecia, sprostowania itp. Termin odpowiedzi: 1 miesiac (art. 12 ust. 3). Nie musi byc opublikowana na stronie, ale administrator musi wiedziec jak postepowac. |

### 1.5 Umowy powierzenia przetwarzania danych

| # | Podmiot | Podstawa prawna | Priorytet | Dzialanie |
|---|--------|----------------|-----------|-----------|
| 1.5.1 | **GitHub Inc. (hosting)** | RODO art. 28 | WYMAGANE | GitHub Pages to hosting statyczny. GitHub przetwarza adresy IP odwiedzajacych (logi serwera). GitHub ma wlasne DPA (Data Processing Agreement) w ramach GitHub Terms of Service - nalezy zweryfikowac, czy obejmuje GitHub Pages i jest zgodne z RODO. W praktyce: GitHub udostepnia DPA na https://github.com/customer-terms. Nalezy je zaakceptowac/zachowac kopie. |
| 1.5.2 | **Google LLC (Google Fonts)** | RODO art. 28 | WYMAGANE (jesli fonty z CDN) | Google przetwarza adresy IP uzytkownikow ladujacych fonty. Google ma DPA w ramach Google Terms of Service. UWAGA: Najlepsza rekomendacja to self-hosting fontow (patrz 2.2) - wtedy umowa z Google dotyczaca Fonts nie jest potrzebna. |
| 1.5.3 | **Google LLC (Gmail)** | RODO art. 28 | ZALECANE | Gmail (kasiamalecphoto@gmail.com) przetwarza dane osobowe z korespondencji. Dla konta darmowego Gmail Google jest wspoladministratorem (nie procesorem). ZALECENIE: Rozwazyc Google Workspace (platny) - wtedy jest czyste DPA. Lub uzyc domeny wlasnej. Dla darmowego Gmaila: wskazac w Polityce Prywatnosci, ze korespondencja realizowana jest przez Gmail (Google LLC). |
| 1.5.4 | **Biuro rachunkowe (jesli jest)** | RODO art. 28 | WYMAGANE (jesli dotyczy) | Jesli dane klientow (faktury) sa przekazywane biuru rachunkowemu, wymagana jest umowa powierzenia. Standardowo biura rachunkowe maja wlasne wzory umow powierzenia. |
| 1.5.5 | **Narzedzie analityczne (jesli wdrozone)** | RODO art. 28 | WYMAGANE (jesli dotyczy) | GA4: DPA z Google. Plausible: DPA z Plausible (firma estońska, dane w UE). |

### 1.6 Przekazywanie danych do panstw trzecich (USA)

| # | Wymaganie | Podstawa prawna | Priorytet | Status/Uwagi |
|---|-----------|----------------|-----------|--------------|
| 1.6.1 | **Informacja w Polityce Prywatnosci o transferze do USA** | RODO art. 13 ust. 1 lit. f, art. 44-49 | WYMAGANE | Wskazac, ze dane moga byc przekazywane do USA (GitHub, Google). |
| 1.6.2 | **Podstawa prawna transferu - EU-US Data Privacy Framework** | RODO art. 45, Decyzja wykonawcza Komisji Europejskiej 2023/1795 z 10.07.2023 | WYMAGANE | Komisja Europejska przyjela decyzje o adekwatnosci dla USA w ramach EU-US Data Privacy Framework (DPF). Zarowno Google LLC jak i GitHub Inc. (Microsoft) sa certyfikowane w ramach DPF. To jest aktualna (stan na 2026-02) legalna podstawa transferu. Nalezy to wskazac w Polityce Prywatnosci. |
| 1.6.3 | **Monitorowanie waznosci DPF** | RODO art. 45 | ZALECANE | DPF moze zostac zakwestionowany (jak wczesniej Privacy Shield). Warto monitorowac i byc gotowym na ewentualne zmiany. Alternatywa na wypadek uniewaznien: self-hosting fontow, hosting w UE. |

---

## 2. COOKIES I TECHNOLOGIE SLEDZACE

### 2.1 Banner cookies

| # | Wymaganie | Podstawa prawna | Priorytet | Status/Uwagi |
|---|-----------|----------------|-----------|--------------|
| 2.1.1 | **Czy banner cookies jest wymagany w obecnym stanie strony?** | Art. 173 Prawa telekomunikacyjnego (implementacja ePrivacy Directive art. 5 ust. 3) | WYJASNIENIE | **W OBECNYM STANIE - NIE, jesli strona nie ustawia zadnych cookies.** Art. 173 Prawa telekomunikacyjnego wymaga zgody na przechowywanie informacji lub uzyskiwanie dostepu do informacji juz przechowywanych w urzadzeniu koncowym (cookies). Jesli strona nie ustawia zadnych cookies (ani first-party, ani third-party), banner nie jest wymagany. **ALE:** Nalezy sprawdzic, czy GitHub Pages nie ustawia wlasnych cookies (np. `_gh_sess`). Jesli tak - banner byloby wymagany. |
| 2.1.2 | **Czy Google Fonts ustawia cookies?** | Art. 173 Prawa telekomunikacyjnego | WYJASNIENIE | Google Fonts **nie ustawia cookies** przy ladowaniu fontow. Natomiast **przekazuje adres IP uzytkownika do Google** (patrz punkt 2.2). To nie jest kwestia cookie-consent, ale kwestia RODO (transfer danych osobowych). |
| 2.1.3 | **Kiedy banner cookies BEDZIE wymagany?** | Art. 173 Prawa telekomunikacyjnego | WYMAGANE (gdy analityka) | Banner bedzie wymagany, jesli zostaną wdrozone: (a) GA4 (ustawia cookies: `_ga`, `_ga_*`, `_gid`), (b) jakiekolwiek inne narzedzia ustawiajace cookies niescisle konieczne. Plausible Analytics w domyslnej konfiguracji NIE ustawia cookies - wtedy banner NIE jest wymagany. |

### 2.2 Google Fonts - ladowanie z CDN

| # | Wymaganie | Podstawa prawna | Priorytet | Dzialanie |
|---|-----------|----------------|-----------|-----------|
| 2.2.1 | **Problem prawny z Google Fonts z CDN** | RODO art. 6, art. 44-49; wyrok LG Munchen z 20.01.2022 (3 O 17493/20) | WYMAGANE | Ladowanie Google Fonts z CDN Google (fonts.googleapis.com) powoduje przekazanie adresu IP uzytkownika do Google (serwery w USA). Sad w Monachium orzekl, ze jest to naruszenie RODO jesli odbywa sie bez zgody uzytkownika. Choc wyrok jest niemiecki i nie jest bezposrednio wiazacy w Polsce, UODO moze zajac podobne stanowisko. |
| 2.2.2 | **REKOMENDACJA: Self-hosting Google Fonts** | - | WYMAGANE (silne zalecenie) | **Pobrac fonty Inter i Playfair Display i hostowac je lokalnie z serwera GitHub Pages.** Narzedzia: google-webfonts-helper (https://gwfh.mranftl.com/) lub fontsource. Usunac linki do fonts.googleapis.com i fonts.gstatic.com z kazdej podstrony. Zaladowac fonty z lokalnych plikow @font-face w CSS. To calkowicie eliminuje problem prawny z Google Fonts. |
| 2.2.3 | **Jesli self-hosting niemozliwy - minimum** | RODO art. 13 | WYMAGANE | Jesli fonty pozostaja z CDN: (a) opisac to w Polityce Prywatnosci, (b) wskazac ze adres IP jest przekazywany do Google LLC, (c) wskazac podstawe prawna (prawnie uzasadniony interes lub zgoda), (d) wskazac DPF jako podstawe transferu do USA. |

### 2.3 localStorage / sessionStorage

| # | Wymaganie | Podstawa prawna | Priorytet | Status |
|---|-----------|----------------|-----------|--------|
| 2.3.1 | **Sprawdzic czy strona uzywa localStorage/sessionStorage** | Art. 173 Prawa telekomunikacyjnego | ZALECANE | Przegladajac kod JS (main.js) - strona **NIE uzywa** localStorage ani sessionStorage. Brak problemu. Jesli w przyszlosci zostana dodane (np. do zapamietania preferencji cookie bannera) - localStorage podlega tym samym regulacjom co cookies (art. 173 PT mowi o "przechowywaniu informacji w urzadzeniu koncowym"). |

### 2.4 Planowana analityka - porownanie prawne

| # | Aspekt | Google Analytics 4 (GA4) | Plausible Analytics |
|---|--------|--------------------------|---------------------|
| 2.4.1 | **Cookies** | Tak - ustawia `_ga`, `_ga_*` (2 lata), `_gid` (24h) | NIE - domyslnie cookieless |
| 2.4.2 | **Banner cookies wymagany?** | TAK - wymagany (art. 173 PT) | NIE - nie wymagany |
| 2.4.3 | **Podstawa prawna RODO** | Zgoda (art. 6 ust. 1 lit. a) - bo Google przetwarza dane do wlasnych celow | Prawnie uzasadniony interes (art. 6 ust. 1 lit. f) - bo Plausible nie identyfikuje uzytkownikow, nie sluzy do profilowania |
| 2.4.4 | **Transfer danych do USA** | Tak (serwery Google w USA) - wymaga DPF | NIE - serwery w UE (Niemcy/Estonia) |
| 2.4.5 | **Umowa powierzenia** | Tak - DPA z Google | Tak - DPA z Plausible |
| 2.4.6 | **Wplyw na Politke Prywatnosci** | Trzeba opisac: cele, cookies, transfer, prawa | Trzeba opisac: cele, brak cookies, brak transferu |
| 2.4.7 | **Zlozonosc wdrozenia prawnego** | WYSOKA - banner, consent management, warunkowe ladowanie skryptu | NISKA - wystarczy wzmianka w Polityce Prywatnosci |
| 2.4.8 | **Koszt** | Darmowy | ok. 9 EUR/mies. (do 10k odslonow) |
| 2.4.9 | **REKOMENDACJA** | - | **Plausible jest zdecydowanie lepszym wyborem** dla malej strony firmowej pod wzgledem zgodnosci z RODO. Eliminuje potrzebe bannera cookies, consent management i problemow z transferem do USA. |

### 2.5 Jesli wybrany GA4 - wymagania implementacyjne

| # | Wymaganie | Podstawa prawna | Priorytet |
|---|-----------|----------------|-----------|
| 2.5.1 | Banner cookies z mechanizmem opt-in (zgoda PRZED zaladowaniem skryptu GA4) | Art. 173 PT, RODO art. 6 ust. 1 lit. a | WYMAGANE |
| 2.5.2 | Skrypt GA4 ladowany dopiero PO uzyskaniu zgody (nie wczesniej!) | Art. 173 PT | WYMAGANE |
| 2.5.3 | Mozliwosc odmowy i wycofania zgody w kazdej chwili | RODO art. 7 ust. 3 | WYMAGANE |
| 2.5.4 | Banner nie moze miec "dark patterns" (np. duzy przycisk "akceptuje", maly "odmawiam") | RODO motyw 32, wytyczne EDPB 05/2020 | WYMAGANE |
| 2.5.5 | Odmowa musi byc tak samo latwa jak akceptacja | RODO art. 7 ust. 3 | WYMAGANE |
| 2.5.6 | Opisac GA4 w Polityce Prywatnosci | RODO art. 13 | WYMAGANE |
| 2.5.7 | Wlaczyc anonimizacje IP w GA4 (domyslnie wlaczona w GA4) | RODO art. 25 (privacy by design) | ZALECANE |
| 2.5.8 | Skrocic okres retencji danych w GA4 do minimum (2 miesiace zamiast 14) | RODO art. 5 ust. 1 lit. e (minimalizacja przechowywania) | ZALECANE |

---

## 3. USTAWA O SWIADCZENIU USLUG DROGA ELEKTRONICZNA (UUDE)

### 3.1 Obowiazki informacyjne uslugodawcy

| # | Wymaganie | Podstawa prawna | Priorytet | Status strony |
|---|-----------|----------------|-----------|---------------|
| 3.1.1 | **Pelna nazwa firmy / imie i nazwisko przedsiebiorcy** | Art. 5 ust. 2 pkt 1 UUDE | WYMAGANE | BRAK - na stronie jest tylko "Kasia Malec Photography". Musi byc pelne: "Katarzyna Malec" (lub pelna nazwa JDG z CEIDG). |
| 3.1.2 | **Adres siedziby (adres do korespondencji)** | Art. 5 ust. 2 pkt 1 UUDE | WYMAGANE | CZESCIOWY - jest "Lodz, Polska" ale brak pelnego adresu. Wystarczy adres z CEIDG (moze byc adres do doreczem a nie zamieszkania). |
| 3.1.3 | **Adres poczty elektronicznej** | Art. 5 ust. 2 pkt 2 UUDE | WYMAGANE | OK - kasiamalecphoto@gmail.com jest na stronie. |
| 3.1.4 | **NIP** | Art. 5 ust. 2 pkt 1 UUDE w zw. z art. 16 ust. 1 ustawy o swobodzie dzialalnosci gospodarczej | WYMAGANE | BRAK - NIP nie pojawia sie nigdzie na stronie. Przedsiebiorca ma obowiazek podawac NIP w ofertach, zamowieniach i na stronie internetowej. |
| 3.1.5 | **Numer telefonu (opcjonalnie, ale jesli podany - musi byc aktualny)** | Art. 5 ust. 2 UUDE | ZALECANE | OK - +48 609 228 085 jest na stronie. |

**Gdzie umiescic te informacje:**
Najlepiej w stopce (footer) na kazdej podstronie i/lub na dedykowanej stronie "O firmie" / "Dane firmy". Obecnie footer zawiera email, telefon i lokalizacje, ale brak NIP i pelnych danych firmy.

### 3.2 Regulamin swiadczenia uslug droga elektroniczna

| # | Wymaganie | Podstawa prawna | Priorytet | Uwagi |
|---|-----------|----------------|-----------|-------|
| 3.2.1 | **Czy regulamin jest wymagany?** | Art. 8 UUDE | WYJASNIENIE | Art. 8 UUDE mowi: "Uslugodawca (...) okresla regulamin swiadczenia uslug droga elektroniczna." **Technicznie TAK** - jesli strona swiadczy uslugi droga elektroniczna (a formularz kontaktowy i prezentacja oferty to usluga elektroniczna w rozumieniu UUDE). **Praktycznie:** Dla prostej strony firmowej z formularzem kontaktowym, brak regulaminu jest jednym z najczesciej ignorowanych obowiazkow i kontrole UKE w tym zakresie sa rzadkie dla mikroprzedsiebiorcow. JEDNAK: wdrozenie regulaminu jest proste i eliminuje ryzyko. |
| 3.2.2 | **Minimalna tresc regulaminu (art. 8 ust. 3 UUDE)** | Art. 8 ust. 3 UUDE | WYMAGANE (jesli regulamin wdrozony) | Musi zawierac: (a) rodzaje i zakres uslug elektronicznych (np. "formularz kontaktowy, prezentacja oferty"), (b) warunki swiadczenia uslug (wymagania techniczne - przegladarka, JS), (c) warunki zawierania i rozwiazywania umow, (d) tryb postepowania reklamacyjnego |
| 3.2.3 | **Tryb reklamacyjny** | Art. 8 ust. 3 pkt 4 UUDE | WYMAGANE | W regulaminie nalezy okreslic: (a) sposob zgloszenia reklamacji (email, pisemnie), (b) termin rozpatrzenia (30 dni), (c) sposob odpowiedzi. Dotyczy reklamacji uslug elektronicznych (np. niedostepnosc formularza), a nie uslug fotograficznych jako takich. |

**Rekomendacja praktyczna:** Stworzyc prosty dokument "Regulamin" lub polaczyc go z Polityka Prywatnosci w jeden dokument "Regulamin i Polityka Prywatnosci". Alternatywnie: stworzyc strone "Informacje prawne" zawierajaca zarowno dane firmy, regulamin i politykke prywatnosci.

---

## 4. PRAWA KONSUMENTA

### 4.1 Umowy zawierane na odleglosc

| # | Wymaganie | Podstawa prawna | Priorytet | Uwagi |
|---|-----------|----------------|-----------|-------|
| 4.1.1 | **Czy ustawa o prawach konsumenta dotyczy tej strony?** | Ustawa z 30.05.2014 o prawach konsumenta | WYJASNIENIE | **CZESCIOWO.** Strona NIE jest sklepem internetowym i NIE umozliwia zawierania umow online (brak koszyka, platnosci). Umowy sa zawierane indywidualnie (email/telefon). Jesli klient-konsument (osoba fizyczna) zamawia sesje przez email/telefon, jest to **umowa zawierana na odleglosc** w rozumieniu art. 2 pkt 1 ustawy. |
| 4.1.2 | **Obowiazki informacyjne przed zawarciem umowy na odleglosc** | Art. 12 ustawy o prawach konsumenta | WYMAGANE (przy zawieraniu umowy) | Przed zawarciem umowy z konsumentem nalezy podac m.in.: glowne cechy swiadczenia, dane firmy, cene laczna, sposob i termin zaplaty, sposob i termin spelnienia swiadczenia. **To NIE musi byc na stronie** - moze byc w ofercie wyslanej emailem. Ale ceny na stronie cennikowej powinny byc jasno opisane (netto/brutto). |
| 4.1.3 | **Prawo odstapienia od umowy (14 dni)** | Art. 27 ustawy o prawach konsumenta | WYMAGANE (przy umowach z konsumentami) | Konsument ma prawo odstapic od umowy zawartej na odleglosc w ciagu 14 dni bez podania przyczyny. **ALE:** Art. 38 pkt 1 wylacza to prawo dla uslug, jezeli przedsiebiorca w pelni wykonan usluge za wyrazna zgoda konsumenta. Przed rozpoczeciem sesji: prawo odstapienia obowiazuje. Po wykonaniu sesji za zgoda: nie obowiazuje. **Rekomendacja:** W umowie/ofercie emailowej informowac o prawie odstapienia. Na stronie - nie jest to konieczne, ale zalecane na stronie cennikowej. |
| 4.1.4 | **Czy klienci B2B (firmy) maja prawo odstapienia?** | Ustawa o prawach konsumenta art. 1 | WYJASNIENIE | **NIE** - ustawa o prawach konsumenta chroni konsumentow (osoby fizyczne nieprowadzace dzialalnosci). Firmy (restauracje, agencje) nie maja prawa do 14-dniowego odstapienia. Od 2021 r. osoby fizyczne prowadzace JDG, ktore zawieraja umowy nie majace charakteru zawodowego, maja czesc praw konsumenckich (art. 38a KC) - ale uslugi fotograficzne zamawiane przez restauracje sa z natury zawodowe. |

### 4.2 Ceny na stronie

| # | Wymaganie | Podstawa prawna | Priorytet | Status strony |
|---|-----------|----------------|-----------|---------------|
| 4.2.1 | **Ceny dla konsumentow musza byc podawane BRUTTO (z VAT)** | Art. 3 ust. 1 pkt 1 ustawy o informowaniu o cenach towarow i uslug i kontroli cen (Dz.U. 2023 poz. 1687) | WYMAGANE (jesli ceny kierowane do konsumentow) | Na stronie cennikowej ceny sa oznaczone jako "netto / sesja" (np. "od 1500 zl netto"). Jesli oferta jest kierowana takze do konsumentow (osob fizycznych), ceny powinny byc podane brutto. **Rekomendacja:** Poniewaz oferta jest kierowana glownie do firm (B2B), podawanie cen netto jest akceptowalne, ale nalezy wyraznie oznaczyc "ceny netto, do ceny nalzy doliczyc VAT" i w FAQ wyjasnic kwestie VAT. Jest to czesciowo zrobione (FAQ "Czy ceny zawieraja VAT?"). Na stronie cennikowej jest napisane "netto / sesja" co jest jasne. Dodac: "Podane ceny sa cenami netto. Konsumentom (osobom fizycznym) przysluguje cena brutto - prosimy o kontakt w celu uzyskania ceny brutto." |
| 4.2.2 | **Informacja o walucie** | Art. 3 ustawy o cenach | WYMAGANE | OK - ceny sa w PLN ("zl"). |
| 4.2.3 | **Zastrzezenie "ceny orientacyjne, nie stanowia oferty"** | Art. 66 KC (oferta vs zaproszenie do negocjacji) | ZALECANE | OK - na stronie jest: "Podane ceny sa orientacyjne i nie stanowia oferty handlowej w rozumieniu Kodeksu Cywilnego." To prawidlowe zastrzezenie. |

---

## 5. PRAWO AUTORSKIE I WIZERUNEK

### 5.1 Zdjecia w portfolio

| # | Wymaganie | Podstawa prawna | Priorytet | Status/Uwagi |
|---|-----------|----------------|-----------|--------------|
| 5.1.1 | **Prawa autorskie do wlasnych zdjec** | Art. 1, art. 17 ustawy o prawie autorskim i prawach pokrewnych | WYJASNIENIE | Fotografka jest autorem zdjec = ma pelne prawa autorskie. Moze je publikowac na swojej stronie. Uwaga: jesli w umowie z klientem przeniesiono prawa autorskie na klienta, to fotografka moze potrzebowac zgody klienta na publikacje w portfolio. **Rekomendacja:** W umowach z klientami zawsze zastrzegac prawo do publikacji w portfolio (licencja lub zastrzezenie). |
| 5.1.2 | **Zdjecia jedzenia - bez wizerunki osob** | Art. 81 ustawy o prawie autorskim | WYJASNIENIE | Portfolio zawiera zdjecia jedzenia, nie osob - nie ma problemu z wizerunkiem. Jesli w przyszlosci pojawia sie zdjecia osob (np. kucharzy, klientow) - wymagana jest zgoda na rozpowszechnianie wizerunku (art. 81 ust. 1 ustawy o prawie autorskim). |
| 5.1.3 | **Znak copyright na stronie** | Konwencja bernenska | OPCJONALNE | Na stronie jest: "(c) 2026 Kasia Malec Photography. Wszelkie prawa zastrzezone." - to jest wystarczajace. Formalnie w polskim prawie prawa autorskie przyslaguja z mocy prawa (bez potrzeby oznaczania), ale znak (c) jest dobrą praktyka. |

### 5.2 Opinie klientow (testimoniale)

| # | Wymaganie | Podstawa prawna | Priorytet | Status/Uwagi |
|---|-----------|----------------|-----------|--------------|
| 5.2.1 | **Zgoda na publikacje opinii z imieniem/nazwa firmy** | RODO art. 6 ust. 1 lit. a (jesli dane osobowe) / prawo cywilne (dobra osobiste) | WYMAGANE | Na stronie sa opinie: "Chata Wuja Toma", "Pizzeria Oliwa & Oregano". Sa to nazwy firm, nie dane osobowe osob fizycznych. Nazwy firm NIE sa danymi osobowymi w rozumieniu RODO (dane osobowe to dane osob fizycznych - art. 4 pkt 1 RODO). **ALE:** Publikacja opinii przypisanej do firmy wymaga zgody tej firmy (ochrona dobrego imienia firmy - art. 43 KC w zw. z art. 23 KC). **Rekomendacja:** Posiadac pisemna/mailowa zgode firm na publikacje opinii na stronie. Moze byc prosta: "Wyrazam zgode na publikacje powyzszej opinii na stronie kasiamalecphoto.pl". |
| 5.2.2 | **Autentycznosc opinii** | Dyrektywa Omnibus (2019/2161), art. 12a ust. 1 ustawy o przeciwdzialaniu nieuczciwym praktykom rynkowym | WYMAGANE | Od 01.01.2023 (implementacja Omnibus) przedsiebiorca publikujacy opinie musi zapewnic, ze pochodza one od osob/podmiotow, ktore faktycznie korzystaly z uslugi. Nie mozna publikowac fałszywych opinii. Opinie na stronie sa (wedlug kontekstu) prawdziwe - OK. Nie trzeba weryfikowac w specjalny sposob (wymog dotyczy glownie platform z opiniami, nie stron firmowych z kilkoma testimonialami), ale opinie musza byc autentyczne. |

### 5.3 Wykorzystanie nazw firm klientow

| # | Wymaganie | Podstawa prawna | Priorytet | Status/Uwagi |
|---|-----------|----------------|-----------|--------------|
| 5.3.1 | **Sekcja "Zaufali mi" z nazwami firm** | Art. 43 KC (dobra osobiste osob prawnych), prawo znakow towarowych | WYMAGANE | Na stronie glownej sa nazwy: "Chata Wuja Toma", "Pizzeria Oliwa & Oregano" w sekcji "Zaufali mi". Wymaga zgody tych firm. Wykorzystanie nazwy firmy jako referencji bez zgody moze naruszac dobra osobiste (art. 43 KC). **Rekomendacja:** Uzyskac pisemna/mailowa zgode. Alternatywnie - jesli opinie zostaly wystawione publicznie (np. na Google/Facebook), mozna sie na nie powolywac. |
| 5.3.2 | **Logotypy klientow (jesli planowane)** | Prawo znakow towarowych, art. 156 ust. 1 pkt 3 ustawy Prawo wlasnosci przemyslowej | ZALECANE | Jesli w przyszlosci planowane jest dodanie logotypow klientow - wymagana jest zgoda wlasciciela znaku towarowego. |

---

## 6. DOSTEPNOSC CYFROWA

### 6.1 Europejski Akt Dostepnosci (EAA) - od 28 czerwca 2025

| # | Wymaganie | Podstawa prawna | Priorytet | Uwagi |
|---|-----------|----------------|-----------|-------|
| 6.1.1 | **Czy EAA dotyczy tej strony?** | Dyrektywa (UE) 2019/882 (EAA), implementowana w Polsce ustawa z dnia 26.04.2024 o zapewnieniu dostepnosci niektorych produktow i uslug przez podmioty gospodarcze (Dz.U. 2024 poz. 731) | WYJASNIENIE | **EAA dotyczy** okreslonych kategorii produktow i uslug: uslugi handlu elektronicznego, uslug bankowych, transportu, audiowizualnych, e-bookow, itp. Strona firmowa fotografki kulinarnej, ktora jest prezentacja oferty (nie sklepem internetowym ani platforma e-commerce), **NIE podlega** wprost pod EAA. |
| 6.1.2 | **Wylaczenie dla mikroprzedsiebiorcow** | Art. 4 ust. 5 Dyrektywy 2019/882 | WYJASNIENIE | Nawet gdyby EAA mialo zastosowanie - **mikroprzedsiebiorcy** (mniej niz 10 pracownikow I obroty roczne lub suma bilansowa do 2 mln EUR) sa **wylaczeni** z obowiazku stosowania EAA w zakresie uslug. Jednoosobowa fotografka kulinarna jest mikroprzedsiebiorca. |
| 6.1.3 | **Ustawa o dostepnosci cyfrowej stron internetowych (podmioty publiczne)** | Ustawa z 04.04.2019 o dostepnosci cyfrowej stron internetowych i aplikacji mobilnych podmiotow publicznych | WYJASNIENIE | Ta ustawa dotyczy WYLACZNIE podmiotow publicznych (urzedy, instytucje panstwowe, itp.). **NIE dotyczy** prywatnych stron firmowych. |
| 6.1.4 | **WCAG 2.1 AA - czy stosowac mimo braku obowiazku?** | - | ZALECANE | Choc nie ma prawnego obowiazku, stosowanie standardow dostepnosci jest **zdecydowanie zalecane** z powodow: (a) wiekszy zasieg - osoby z niepelnosprawnosciami, osoby starsze, (b) lepsze SEO (Google premiuje dostepne strony), (c) budowanie pozytywnego wizerunku, (d) przyszlosciowe zabezpieczenie (regulacje moga sie rozszerzac). |

### 6.2 Obecny stan dostepnosci strony

| # | Element | Status | Rekomendacja |
|---|---------|--------|-------------|
| 6.2.1 | **Skip-to-content link** | OK - jest na kazdej podstronie | Dobra praktyka, zachowac |
| 6.2.2 | **Lang attribute** | OK - `<html lang="pl">` | Prawidlowe |
| 6.2.3 | **Alt text na obrazkach** | OK - kazdy obrazek ma alt text opisowy | Bardzo dobra praktyka |
| 6.2.4 | **ARIA labels** | OK - przyciski maja aria-label | Zachowac i rozszerzac |
| 6.2.5 | **Kontrast kolorow** | DO SPRAWDZENIA | Sprawdzic kontrast tekstu wzgledem tla (minimum 4.5:1 dla normalnego tekstu, 3:1 dla duzego). Uzyc narzedzia np. WebAIM Contrast Checker. |
| 6.2.6 | **Nawigacja klawiatura** | CZESCIOWE | Menu mobilne i lightbox maja obsluge klawiatury (ESC). Sprawdzic czy wszystkie elementy interaktywne sa dostepne za pomoca Tab. |
| 6.2.7 | **Focus visible** | DO SPRAWDZENIA | Upewnic sie, ze fokus klawiatury jest widoczny na wszystkich elementach interaktywnych. |

---

## 7. DIGITAL SERVICES ACT (DSA)

| # | Wymaganie | Podstawa prawna | Priorytet | Uwagi |
|---|-----------|----------------|-----------|-------|
| 7.1 | **Czy DSA dotyczy strony firmowej fotografki?** | Rozporzadzenie (UE) 2022/2065 (DSA) | WYJASNIENIE | **NIE.** DSA dotyczy "uslug posrednictwa" (intermediary services): hostingu, platform internetowych, wyszukiwarek. Strona firmowa prezentujaca oferte firmy **NIE jest** usluga posrednictwa w rozumieniu DSA. Fotografka nie hostuje tresci uzytkownikow, nie prowadzi platformy, nie posredniczy w zawieraniu umow online. DSA nie naklada obowiazkow na proste strony firmowe. |
| 7.2 | **Jedyny potencjalny zwiazek z DSA** | - | OPCJONALNE | Jesli strona bedzie miala sekcje komentarzy/opinii uzytkownikow (user-generated content) - wtedy elementy DSA moga miec zastosowanie. Przy obecnej strukturze (statyczne testimoniale dodawane recznie) - NIE dotyczy. |

---

## 8. OBOWIAZKI PODATKOWE WIDOCZNE NA STRONIE

| # | Wymaganie | Podstawa prawna | Priorytet | Status |
|---|-----------|----------------|-----------|--------|
| 8.1 | **NIP na stronie** | Art. 16 ust. 1 ustawy Prawo przedsiebiorcow (Dz.U. 2024 poz. 236) - "Przedsiebiorca umieszcza w ofercie NIP" | WYMAGANE | BRAK - dodac NIP w stopce lub na stronie kontaktowej |
| 8.2 | **Oznaczenie cen netto/brutto** | Art. 3 ustawy o informowaniu o cenach (Dz.U. 2023 poz. 1687) | WYMAGANE | CZESCIOWE - ceny oznaczone "netto / sesja" co jest jasne, ale w FAQ "Czy ceny zawieraja VAT?" jest literowka ("odpowiednia stawke" -> OK treesciowo). Jesli oferta obejmuje konsumentow, ceny musza byc tez brutto. |

---

## 9. POZOSTALE KWESTIE PRAWNE

### 9.1 Prawo telekomunikacyjne - informacja handlowa

| # | Wymaganie | Podstawa prawna | Priorytet | Uwagi |
|---|-----------|----------------|-----------|-------|
| 9.1.1 | **Zakaz przesylania niezamowionej informacji handlowej** | Art. 10 ust. 1 UUDE | WYMAGANE | Nie wolno wysylac emaili marketingowych bez zgody odbiorcy. Dotyczy np. wysylania ofert do potencjalnych klientow znalezionych w internecie. Formularz kontaktowy na stronie to OK - klient sam inicjuje kontakt. |
| 9.1.2 | **Social media (Instagram, Facebook)** | Regulaminy platform | ZALECANE | Linki do social mediow sa OK. Pamietac, ze publikujac tresci na Instagramie/Facebooku podlega sie regulaminom tych platform (ochrona danych, prawa autorskie). Meta ma wlasne DPA. |

### 9.2 Zabezpieczenie techniczne danych

| # | Wymaganie | Podstawa prawna | Priorytet | Status |
|---|-----------|----------------|-----------|--------|
| 9.2.1 | **SSL/TLS (HTTPS)** | RODO art. 32 (odpowiednie srodki techniczne) | WYMAGANE | OK - GitHub Pages zapewnia HTTPS automatycznie. |
| 9.2.2 | **Bezpieczenstwo formularza kontaktowego** | RODO art. 32 | WYMAGANE | Formularz powinien byc przesylany przez HTTPS (OK - GitHub Pages). Jesli formularz wyslyla dane na serwer (np. Formspree, Netlify Forms) - sprawdzic DPA z dostawca. Obecny formularz (main.js) wydaje sie byc tylko walidacja front-endowa - trzeba sprawdzic jak dane sa faktycznie wysylane. |

---

## PLAN WDROZENIA - PRIORYTETYZACJA

### FAZA 1: KRYTYCZNE (zrobic natychmiast - ryzyko kar UODO/UOKiK)
**Szacowany czas: 1-2 dni**

1. **Self-hosting Google Fonts** (eliminacja transferu IP do Google)
   - Pobrac fonty Inter i Playfair Display
   - Dodac pliki fontow do katalogu /fonts/ lub /css/fonts/
   - Zaktualizowac CSS z @font-face
   - Usunac linki do fonts.googleapis.com ze wszystkich podstron (17 plikow HTML)

2. **Stworzyc strone Polityki Prywatnosci** (/polityka-prywatnosci/index.html)
   - Wszystkie elementy z punktu 1.1
   - Informacja o administratorze
   - Cele i podstawy prawne
   - Prawa osob
   - Odbiorcy danych
   - Transfer do USA (GitHub Pages)
   - Okres przechowywania

3. **Dodac link do Polityki Prywatnosci w stopce** kazdej podstrony (footer-bottom)

4. **Dodac NIP w stopce** lub na stronie kontaktowej

5. **Dodac pelne dane firmy** (imie, nazwisko, adres z CEIDG) - w stopce lub na stronie O mnie/Kontakt

### FAZA 2: WAZNE (zrobic w ciagu tygodnia)
**Szacowany czas: 1-2 dni**

6. **Dodac klauzule informacyjna przy formularzu kontaktowym** (jesli formularz jest aktywny/planowany)

7. **Stworzyc Regulamin swiadczenia uslug droga elektroniczna** (moze byc czescia strony prawnej)

8. **Uzyskac pisemna/mailowa zgode od klientow** na publikacje opinii i nazw firm ("Chata Wuja Toma", "Pizzeria Oliwa & Oregano")

9. **Doprecyzowac informacje o cenach** - dodac adnotacje dla konsumentow o cenach brutto

### FAZA 3: ZALECANE (zrobic w ciagu miesiaca)
**Szacowany czas: 0.5-1 dnia**

10. **Wdrozyc Plausible Analytics** (zamiast GA4) - nie wymaga bannera cookies

11. **Zaktualizowac Polityke Prywatnosci** o informacje o Plausible

12. **Przygotowac wewnetrzny Rejestr Czynnosci Przetwarzania** (Excel/Sheets, nie musi byc na stronie)

13. **Sprawdzic i poprawic dostepnosc** (kontrast kolorow, fokus klawiatury)

14. **Przygotowac wzor klauzuli do umow z klientami** (informacja o przetwarzaniu danych, prawo do portfolio)

### FAZA 4: OPCJONALNE (dobre praktyki)
**Szacowany czas: na biezaco**

15. **Dodac klauzule informacyjna w stopce emaila (Gmail)**

16. **Rozwazyc Google Workspace** zamiast darmowego Gmaila (czyste DPA)

17. **Dodac strone "Informacje prawne"** (konsolidacja: dane firmy, regulamin, polityka prywatnosci)

18. **Przygotowac procedure reagowania na naruszenia ochrony danych** (art. 33-34 RODO)

---

## NOTA PRAWNA

Ten dokument ma charakter informacyjny i zostal przygotowany na podstawie stanu prawnego na dzien 2026-02-16. Nie stanowi porady prawnej. W przypadku watpliwosci zaleca sie konsultacje z prawnikiem specjalizujacym sie w prawie ochrony danych osobowych i prawie internetowym.

**Kluczowe akty prawne przywoywane w dokumencie:**
- Rozporzadzenie (UE) 2016/679 (RODO/GDPR)
- Ustawa z 10.05.2018 o ochronie danych osobowych (Dz.U. 2019 poz. 1781)
- Ustawa z 18.07.2002 o swiadczeniu uslug droga elektroniczna (Dz.U. 2020 poz. 344)
- Ustawa z 16.07.2004 Prawo telekomunikacyjne (Dz.U. 2024 poz. 34) - art. 173
- Ustawa z 30.05.2014 o prawach konsumenta (Dz.U. 2023 poz. 2759)
- Ustawa z 04.02.1994 o prawie autorskim i prawach pokrewnych (Dz.U. 2022 poz. 2509)
- Ustawa z 06.03.2018 Prawo przedsiebiorcow (Dz.U. 2024 poz. 236)
- Ustawa z 09.05.2014 o informowaniu o cenach towarow i uslug (Dz.U. 2023 poz. 1687)
- Rozporzadzenie (UE) 2022/2065 (Digital Services Act)
- Dyrektywa (UE) 2019/882 (European Accessibility Act)
- Decyzja wykonawcza Komisji (UE) 2023/1795 z 10.07.2023 (EU-US Data Privacy Framework)
