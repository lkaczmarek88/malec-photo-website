# Technical SEO Checklist - Kasia Malec Photography

Kompleksowa checklista SEO dla statycznej strony HTML fotografki kulinarnej.
Strona: kasiamalecphoto.pl | Hosting: GitHub Pages | Jezyk: polski

Legenda statusu:
- `[KRYTYCZNE]` - Blokuje indeksowanie lub powoduje realne straty w widocznosci
- `[WAZNE]` - Znaczacy wplyw na pozycje i UX
- `[ZALECANE]` - Dobra praktyka, poprawia jakosc sygnalu

---

## 1. INDEKSOWANIE I ROBOTS - BLOKADA RUCHU

### 1.1 robots.txt blokuje cala strone `[KRYTYCZNE]`

**Co jest**: Plik `robots.txt` zawiera `Disallow: /`, co blokuje wszystkie crawlery.
Linia z sitemap jest zakomentowana.

**Dlaczego to problem**: Googlebot nie moze zaindeksowac zadnej strony. Dopoki ta
blokada istnieje, strona jest niewidoczna w Google.

**Co zrobic**:
```
User-agent: *
Disallow:

Sitemap: https://www.kasiamalecphoto.pl/sitemap.xml
```

**Weryfikacja**: Narzedzie "Sprawdzanie robots.txt" w Google Search Console.

---

### 1.2 Wszystkie strony maja `noindex, nofollow` `[KRYTYCZNE]`

**Co jest**: Kazdy plik HTML zawiera `<meta name="robots" content="noindex, nofollow">`
na linii 6. Strona glowna (index.html) ma dodatkowo sprzeczna druga dyrektywe
`<meta name="robots" content="index, follow">` na linii 14.

**Dlaczego to problem**: Nawet gdyby robots.txt pozwalal na crawlowanie, ta dyrektywa
mowi Google "nie indeksuj tej strony". Dwie sprzeczne dyrektywy meta robots na jednej
stronie (index.html) powoduja, ze Google wybiera bardziej restrykcyjna - czyli noindex.

**Co zrobic**:
- Usunac `<meta name="robots" content="noindex, nofollow">` z KAZDEGO pliku HTML
  (jest na linii 6 we wszystkich 14 plikach)
- Na stronie glownej zostawic tylko `<meta name="robots" content="index, follow">`
- Na pozostalych stronach albo dodac `<meta name="robots" content="index, follow">`
  albo nie dodawac wcale (domyslnie Google indeksuje)

**Dotyczy plikow**:
- `/index.html`
- `/uslugi/fotografia-kulinarna/index.html`
- `/uslugi/fotografia-kulinarna-lodz/index.html`
- `/uslugi/fotografia-kulinarna-warszawa/index.html`
- `/uslugi/fotografia-produktowa-zywnosci/index.html`
- `/uslugi/dla-restauracji-i-kawiarni/index.html`
- `/uslugi/dla-marek-i-agencji/index.html`
- `/uslugi/szkolenia-fotografia-kulinarna/index.html`
- `/uslugi/opracowanie-przepisow/index.html`
- `/uslugi/stylizacja-zywnosci/index.html`
- `/portfolio/index.html`
- `/cennik-fotografia-kulinarna/index.html`
- `/o-mnie/index.html`
- `/kontakt/index.html`

---

## 2. META TAGI I SEKCJA HEAD

### 2.1 Tagi title `[WAZNE]`

**Co sprawdzic**: Kazda strona musi miec unikatowy `<title>` z glownym slowem kluczowym.

**Obecny stan**: Strona glowna i wiekszlosc podstron maja dobre title. Sprawdzone - OK.

**Co "dobrze" wyglada**:
- Dlugosc: 50-60 znakow (max ~580px szerokosc w SERP)
- Format: `Glowne slowo kluczowe – kontekst | Marka`
- Przykad strony glownej: `Fotografia kulinarna i produktowa zywnosci | Kasia Malec Photography` (67 znakow - nieco za dlugo, moze byc uciete)

**Co zrobic**:
- Skrocic title strony glownej do max 60 znakow, np.:
  `Fotografia kulinarna Lodz i Warszawa | Kasia Malec`
- Sprawdzic, czy kazda podstrona uslug ma lokalne slowo kluczowe w title

---

### 2.2 Meta description `[WAZNE]`

**Co sprawdzic**: Unikatowy opis 120-155 znakow z CTA lub USP.

**Obecny stan**: Strona glowna i podstrony maja opisy. OK.

**Co "dobrze" wyglada**:
- Dlugosc: 120-155 znakow
- Zawiera glowne slowo kluczowe
- Zawiera CTA lub USP ("Sprawdz oferte", "Umow sesje")
- Nie powtarza sie miedzy stronami

**Co sprawdzic manualnie**:
- [ ] Czy kazda z 14 stron ma unikatowy opis?
- [ ] Czy opisy konca sie CTA?
- [ ] Czy opisy nie sa dluzsze niz 155 znakow?

---

### 2.3 Meta keywords `[ZALECANE]`

**Co jest**: Kilka stron ma `<meta name="keywords">`.

**Dlaczego to nie szkodzi, ale nie pomaga**: Google oficjalnie ignoruje meta keywords
od 2009 roku. Nie trzeba ich usuwac, ale tez nie warto poswiecac na nie czasu.

**Co zrobic**: Mozna usunac, zeby nie ujawniac strategii keyword konkurencji.

---

### 2.4 Canonical URLs `[WAZNE]`

**Co jest**: Kanoniczne URL-e wskazuja na domene `kasiamalecphoto.pl`, co jest dobrze.

**Co sprawdzic**:
- [ ] Czy canonical URL na kazdej stronie odpowiada rzeczywistemu adresowi strony?
- [ ] Czy canonical konczy sie ukosnikiem `/` (konsekwentnie)?
- [ ] Czy domena w canonical jest taka sama jak domena produkcyjna?

**Obecny problem**: Linki wewnetrzne uzywaja `/malec-photo-website/` (sciezka GitHub Pages),
ale canonical wskazuja na `kasiamalecphoto.pl`. Po podlaczeniu wlasnej domeny trzeba
upewnic sie, ze linki wewnetrzne tez sa zaktualizowane.

---

### 2.5 Open Graph i Twitter Cards `[WAZNE]`

**Co jest**: Tagi OG i Twitter sa TYLKO na stronie glownej. Brakuje ich na pozostalych
13 stronach.

**Dlaczego to problem**: Gdy ktos udostepni podstrone uslug na Facebooku, LinkedIn lub
w komunikatorze, wyswietli sie generyczny podglad zamiast przygotowanego.

**Co zrobic**: Dodac do KAZDEJ podstrony:
```html
<meta property="og:type" content="website">
<meta property="og:url" content="[canonical URL strony]">
<meta property="og:title" content="[title strony]">
<meta property="og:description" content="[meta description strony]">
<meta property="og:image" content="https://www.kasiamalecphoto.pl/images/og-[nazwa-strony].jpg">
<meta property="og:locale" content="pl_PL">

<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="[title strony]">
<meta name="twitter:description" content="[meta description strony]">
<meta name="twitter:image" content="https://www.kasiamalecphoto.pl/images/og-[nazwa-strony].jpg">
```

**Uwaga**: Oba warianty `<meta name="twitter:...">` i `<meta property="twitter:...">`
sa akceptowane. Od 2022 r. Twitter/X automatycznie korzysta z tagow OG jako fallback,
wiec wystarczy miec poprawne tagi `og:title`, `og:description`, `og:image` - dedykowane
tagi `twitter:*` sa potrzebne tylko jesli chcemy inne tresci niz w OG.

**Rozmiar obrazka OG**: 1200x630px, format JPG, max 300KB.

---

### 2.6 Favicon `[ZALECANE]`

**Co jest**: Favicon jest zdefiniowany tylko na stronie glownej:
`<link rel="icon" type="image/png" href="/images/favicon.png">`

**Co zrobic**:
- Dodac favicon do KAZDEJ podstrony
- Dodac rozne rozmiary dla roznych urzadzen:
```html
<link rel="icon" type="image/png" sizes="32x32" href="/images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
<link rel="apple-touch-icon" sizes="180x180" href="/images/apple-touch-icon.png">
```

---

## 3. SCHEMA.ORG / DANE STRUKTURALNE

### 3.1 Strona glowna - LocalBusiness zamiast ProfessionalService `[WAZNE]`

**Co jest**: Uzyty typ `ProfessionalService`, co jest poprawne, ale brakuje wielu
wymaganych pol.

**Co zrobic**: Rozbudowac schema na stronie glownej:
```json
{
    "@context": "https://schema.org",
    "@type": "ProfessionalService",
    "name": "Kasia Malec Photography",
    "description": "Profesjonalna fotografia kulinarna i produktowa zywnosci",
    "url": "https://www.kasiamalecphoto.pl",
    "telephone": "+48609228085",
    "email": "kasiamalecphoto@gmail.com",
    "address": {
        "@type": "PostalAddress",
        "addressLocality": "Lodz",
        "addressRegion": "lodzkie",
        "addressCountry": "PL"
    },
    "geo": {
        "@type": "GeoCoordinates",
        "latitude": 51.7592,
        "longitude": 19.4560
    },
    "priceRange": "$$",
    "image": "https://www.kasiamalecphoto.pl/images/og-image.jpg",
    "openingHoursSpecification": {
        "@type": "OpeningHoursSpecification",
        "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
        "opens": "09:00",
        "closes": "17:00"
    },
    "areaServed": [
        {"@type": "City", "name": "Lodz"},
        {"@type": "City", "name": "Warszawa"}
    ],
    "hasOfferCatalog": {
        "@type": "OfferCatalog",
        "name": "Uslugi fotografii kulinarnej",
        "itemListElement": [
            {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "Fotografia kulinarna"}},
            {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "Fotografia produktowa zywnosci"}},
            {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "Stylizacja zywnosci"}},
            {"@type": "Offer", "itemOffered": {"@type": "Service", "name": "Szkolenia z fotografii kulinarnej"}}
        ]
    },
    "sameAs": [
        "https://www.instagram.com/kasia_malec_photography/",
        "https://www.facebook.com/kasiamalecphotography/"
    ]
}
```

---

### 3.2 Brak BreadcrumbList schema `[WAZNE]`

**Co jest**: Zaden plik nie zawiera danych strukturalnych breadcrumb.

**Dlaczego to wazne**: Breadcrumby w SERP poprawiaja CTR i pomagaja Google zrozumiec
hierarchie strony.

**Co zrobic**: Dodac na KAZDEJ podstronie (nie na stronie glownej):
```json
{
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    "itemListElement": [
        {"@type": "ListItem", "position": 1, "name": "Strona glowna", "item": "https://www.kasiamalecphoto.pl/"},
        {"@type": "ListItem", "position": 2, "name": "Uslugi", "item": "https://www.kasiamalecphoto.pl/uslugi/"},
        {"@type": "ListItem", "position": 3, "name": "Fotografia kulinarna"}
    ]
}
```

Opcjonalnie: dodac widoczne breadcrumby w HTML pod nawigacja (np. `Strona glowna > Uslugi > Fotografia kulinarna`).

---

### 3.3 Brak FAQPage schema `[ZALECANE]`

**Co jest**: Strony uslug maja sekcje FAQ z akordeonem (klasa `.faq-question`),
ale nie maja schema FAQPage.

**Dotyczy plikow**: `fotografia-kulinarna/index.html`, `stylizacja-zywnosci/index.html`,
`cennik-fotografia-kulinarna/index.html`

**Dlaczego to moze pomoc**: FAQ schema moze generowac rozszerzone wyniki w Google
(rich snippets). **UWAGA**: Od sierpnia 2023 r. Google znaczaco ograniczyl wyswietlanie
FAQ rich results - teraz pokazuja sie glownie dla stron rzadowych i medycznych.
Dla malych biznesow FAQ schema nadal jest poprawna strukturalnie i pomaga Google
zrozumiec tresc, ale nie nalezy liczyc na widoczne gwiazdki/rozszerzenia w SERP.
Priorytet zmieniony z WAZNE na ZALECANE.

**Co zrobic**: Na kazdej stronie z FAQ dodac:
```json
{
    "@context": "https://schema.org",
    "@type": "FAQPage",
    "mainEntity": [
        {
            "@type": "Question",
            "name": "Tresc pytania z FAQ",
            "acceptedAnswer": {
                "@type": "Answer",
                "text": "Tresc odpowiedzi z FAQ"
            }
        }
    ]
}
```

---

### 3.4 Schema cennikowa - bledny typ `[WAZNE]`

**Co jest**: Strona cennika uzywa `@type: PriceSpecification`, co nie jest poprawnym
typem najwyzszego poziomu dla cennika uslug.

**Co zrobic**: Zmienic na `@type: Service` z zagniezdzonymi `Offer`:
```json
{
    "@context": "https://schema.org",
    "@type": "Service",
    "name": "Fotografia kulinarna - cennik",
    "provider": {
        "@type": "ProfessionalService",
        "name": "Kasia Malec Photography"
    },
    "offers": [
        {
            "@type": "Offer",
            "name": "Pakiet Mini",
            "price": "800",
            "priceCurrency": "PLN",
            "description": "Opis pakietu"
        }
    ]
}
```

---

### 3.5 Brak Review/AggregateRating schema `[ZALECANE]`

**Co jest**: Strona glowna ma sekcje "Co mowia o mnie klienci" z opiniami, ale brak schema.

**Co zrobic**: Dodac schema Review na stronie glownej:
```json
{
    "@context": "https://schema.org",
    "@type": "ProfessionalService",
    "name": "Kasia Malec Photography",
    "review": [
        {
            "@type": "Review",
            "author": {"@type": "Organization", "name": "Chata Wuja Toma"},
            "reviewRating": {"@type": "Rating", "ratingValue": "5", "bestRating": "5"},
            "reviewBody": "Tresc opinii..."
        }
    ]
}
```

**WAZNA UWAGA**: Uzywaj tylko prawdziwych opinii. Google moze nalozyc kare za falszywe
recenzje. Ponadto od 2024 r. Google NIE wyswietla gwiazdek w SERP dla recenzji
umieszczonych bezposrednio na wlasnej stronie (self-served reviews). Gwiazdki w SERP
pojawiaja sie tylko dla recenzji z zewnetrznych platform (Google Reviews, Trustpilot itp.).
Schema Review na wlasnej stronie nadal jest poprawna strukturalnie, ale nie przyniesie
wizualnego efektu gwiazdek w wynikach wyszukiwania.

---

## 4. STRUKTURA URL I LINKOWANIE WEWNETRZNE

### 4.1 Niespojnosc sciezek linkow `[KRYTYCZNE]`

**Co jest**: Linki wewnetrzne uzywaja prefiksu `/malec-photo-website/` (sciezka repo
na GitHub Pages), ale canonical URL-e i sitemap wskazuja na `kasiamalecphoto.pl`
bez tego prefiksu.

**Przyklad problemu**:
- Link w nawigacji: `/malec-photo-website/uslugi/fotografia-kulinarna/`
- Canonical: `https://www.kasiamalecphoto.pl/uslugi/fotografia-kulinarna/`

**Dlaczego to problem**: Gdy strona bedzie na wlasnej domenie, albo linki nie beda dzialac,
albo beda redirecty, co marnuje crawl budget.

**Co zrobic**:
- Po podlaczeniu domeny wlasnej: zamienic WSZYSTKIE wystapienia `/malec-photo-website/`
  na `/` w linkach nawigacji, footer, CTA, obrazkach
- Jesli strona zostaje na GitHub Pages: canonical i sitemap powinny odzwierciedlac
  rzeczywisty URL z prefiksem

---

### 4.2 Brak strony hub'a dla uslug `[WAZNE]`

**Co jest**: Dropdown "Uslugi" w nawigacji linkuje do `#` (nie prowadzi do zadnej strony).
Nie istnieje strona `/uslugi/` ktora zbieralaby wszystkie uslugi.

**Dlaczego to problem**: Google nie moze zaindeksowac strony nadrzednej "Uslugi".
Stracony sygnal hierarchii tematycznej i linkowania wewnetrznego.

**Co zrobic**:
- Stworzyc strone `/uslugi/index.html` z przegloldem wszystkich 9 uslug
- Zmienic link w nawigacji z `#` na `/uslugi/`
- Dodac strone do sitemap.xml

---

### 4.3 Struktura URL `[ZALECANE]`

**Obecna struktura** (dobra):
```
/                                    - strona glowna
/uslugi/fotografia-kulinarna/        - usluga ogolna
/uslugi/fotografia-kulinarna-lodz/   - usluga lokalna
/uslugi/fotografia-kulinarna-warszawa/ - usluga lokalna
/portfolio/                          - portfolio
/cennik-fotografia-kulinarna/        - cennik
/o-mnie/                             - o mnie
/kontakt/                            - kontakt
```

**Co jest dobrze**:
- Polskojezyczne URL-e (dobrze dla polskiego SEO)
- Slowa kluczowe w URL-ach
- Trailing slash (konsekwentny)
- Czytelna hierarchia `/uslugi/[nazwa-uslugi]/`

**Co poprawic**:
- `/cennik-fotografia-kulinarna/` mogloby byc `/cennik/` (krotszy URL, keyword i tak jest
  w title/h1/content)

---

### 4.4 Linkowanie wewnetrzne miedzy podstronami uslug `[WAZNE]`

**Co sprawdzic**:
- [ ] Czy kazda strona uslugi linkuje do powiazanych uslug? (np. fotografia kulinarna -> stylizacja zywnosci)
- [ ] Czy strony lokalne (Lodz, Warszawa) linkuja do strony ogolnej fotografii kulinarnej i odwrotnie?
- [ ] Czy strona cennika linkuje do wszystkich uslug?
- [ ] Czy strona portfolio linkuje do odpowiednich uslug?

**Co "dobrze" wyglada**: Kazda strona uslugi powinna miec sekcje "Powiazane uslugi"
z linkami do 2-3 najblizszych tematycznie uslug.

---

## 5. WYDAJNOSC I CORE WEB VITALS

### 5.1 Obrazki sa TYLKO w formacie JPG `[WAZNE]`

**Co jest**: Wszystkie 22 obrazki na stronie to pliki JPG. Brak WebP ani AVIF.

**Dlaczego to problem**: WebP jest srednio 30% mniejszy niz JPG przy tej samej jakosci.
Dla strony fotografki, gdzie obrazki to kluczowy content, to ogromna roznica w czasie
ladowania.

**Co zrobic**:
1. Skonwertowac wszystkie JPG do WebP (i opcjonalnie AVIF)
2. Uzyc elementu `<picture>` z fallbackiem (UWAGA: kolejnosc source ma znaczenie -
   przegladarka wybiera PIERWSZY pasujacy format, wiec AVIF musi byc PRZED WebP):
```html
<picture>
    <source srcset="/images/gallery/kawa-mrozona-lifestyle.avif" type="image/avif">
    <source srcset="/images/gallery/kawa-mrozona-lifestyle.webp" type="image/webp">
    <img src="/images/gallery/kawa-mrozona-lifestyle.jpg" alt="..." loading="lazy" width="600" height="400">
</picture>
```
3. Narzedzia: `cwebp`, `squoosh.app`, lub skrypt batch z `sharp` (Node.js)

---

### 5.2 Obrazki nie maja atrybutow width/height `[WAZNE]`

**Co jest**: Zaden tag `<img>` w HTML nie ma atrybutow `width` i `height`.
Wymiary sa ustawiane przez CSS (`object-fit: cover`, inline styles).

**Dlaczego to problem**: Brak wymiarow powoduje CLS (Cumulative Layout Shift) -
strona "skacze" podczas ladowania obrazkow. To jeden z Core Web Vitals.

**Co zrobic**: Dodac `width` i `height` do KAZDEGO tagu `<img>`:
```html
<img src="..." alt="..." width="800" height="600" loading="lazy" style="...">
```

**Uwaga**: Wymiary moga byc przyblizone - CSS i tak bedzie je nadpisywal,
ale przegladarka uzyje proporcji do zarezerwowania miejsca.

---

### 5.3 Brak lazy loading na obrazkach `[WAZNE]`

**Co jest**: W JS istnieje custom lazy loading observer (`img[data-src]`), ale
ZADEN obrazek w HTML nie uzywa atrybutu `data-src`. Wszystkie uzywa standardowego
`src`, wiec sa ladowane natychmiast.

**Dlaczego to problem**: Strona glowna ma 10 obrazkow (6 w galerii, 4 w kartach),
portfolio moze miec wiecej. Ladowanie ich wszystkich naraz spowalnia strone.

**Co zrobic**:
- Dodac `loading="lazy"` do WSZYSTKICH obrazkow OPROCZ hero (above-the-fold)
- Opcjonalnie: uzyc natywnego lazy loading zamiast custom JS
```html
<!-- Hero - NIE lazy loadowac -->
<img src="hero.jpg" alt="..." fetchpriority="high">

<!-- Ponizej fold - lazy loadowac -->
<img src="gallery.jpg" alt="..." loading="lazy">
```

---

### 5.4 Google Fonts blokuja renderowanie `[WAZNE]`

**Co jest**: Kazda strona laduje Google Fonts synchronicznie:
```html
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
```

**Dlaczego to problem**: To jest render-blocking resource. Przegladarka musi pobrac
CSS fontow zanim wyswietli jakakolwiek tresc.

**Pozytyw**: URL Google Fonts juz zawiera `display=swap`, co oznacza ze tekst bedzie
widoczny natychmiast z fallback fontem. To laodzi problem, ale nie eliminuje go calkowicie
(przegladarka nadal musi pobrac CSS z zewnetrznego serwera).

**UWAGA**: Strona kontakt (`kontakt/index.html`) NIE ma tagow `<link rel="preconnect">`
dla fonts.googleapis.com i fonts.gstatic.com, chociaz inne podstrony je maja.
To spowalnia ladowanie fontow na tej konkretnej stronie.

**Co zrobic** (opcja 1 - preconnect, minimum):
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=..." rel="stylesheet">
```
Upewnic sie, ze KAZDA strona ma tagi preconnect (obecnie kontakt/index.html ich nie ma).

**Co zrobic** (opcja 2 - self-hosting, lepsza):
- Pobrac fonty z fontsource.org lub google-webfonts-helper
- Hostowac lokalnie w katalogu `/fonts/`
- Wyeliminowac zewnetrzne zapytanie HTTP
- Dodac `font-display: swap` w @font-face

---

### 5.5 CSS i JS nie sa minifikowane `[ZALECANE]`

**Co sprawdzic**:
- [ ] Czy `css/style.css` jest zminifikowany?
- [ ] Czy `js/main.js` jest zminifikowany?

**Co zrobic**:
- Uzyc narzedzia do minifikacji (cssnano, terser)
- Stworzyc wersje `.min.css` i `.min.js`
- Opcjonalnie: dodac krok buildowania (np. przez npm scripts)

---

### 5.6 Brak preload dla krytycznych zasobow `[ZALECANE]`

**Co zrobic**: Dodac preload dla obrazka hero (LCP element):
```html
<link rel="preload" as="image" href="/images/hero/fotografia-kulinarna-zupa-pomidorowa.jpg">
```

**Uwaga**: Preloadowac TYLKO 1-2 zasoby. Zbyt wiele preloadow jest kontrproduktywne.

---

### 5.7 Hero jako background-image w inline style `[WAZNE]`

**Co jest**: Obrazki hero sa ustawione jako CSS background w atrybucie `style`:
```html
<section class="hero" style="background-image: linear-gradient(...), url('...');">
```

**Dlaczego to problem**:
- Google Images nie indeksuje background-images (traci sie widocznosc w Google Images)
- Nie mozna uzyc `loading="lazy"`, `<picture>`, WebP fallbackow
- Nie mozna ustawic `fetchpriority="high"`

**Co zrobic**: Zamienic na `<img>` wewnatrz hero z odpowiednim CSS:
```html
<section class="hero">
    <picture>
        <source srcset="/images/hero/hero.avif" type="image/avif">
        <source srcset="/images/hero/hero.webp" type="image/webp">
        <img src="/images/hero/hero.jpg" alt="Fotografia kulinarna..."
             class="hero-bg" fetchpriority="high" width="1920" height="1080">
    </picture>
    <div class="hero-overlay"></div>
    <div class="hero-content">...</div>
</section>
```

**CSS dla hero-bg** (potrzebne, zeby `<img>` zachowywal sie jak background):
```css
.hero { position: relative; overflow: hidden; }
.hero-bg { position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; z-index: -1; }
.hero-overlay { position: absolute; inset: 0; background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.3)); }
```

---

## 6. RESPONSYWNOSC MOBILNA

### 6.1 Viewport meta tag `[WAZNE]`

**Obecny stan**: Wszystkie strony maja poprawny viewport tag. OK.
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

### 6.2 Menu mobilne `[WAZNE]`

**Co sprawdzic**:
- [ ] Czy hamburger menu dziala poprawnie na urzadzeniach dotykowych?
- [ ] Czy dropdown uslug jest dostepny na mobile (initDropdownMobile w main.js)?
- [ ] Czy menu zamyka sie po kliknieciu w link?
- [ ] Czy `aria-expanded` zmienia sie dynamicznie?

**Problem**: `initDropdownMobile()` sprawdza `window.innerWidth <= 768` tylko RAZ
przy ladowaniu. Jesli uzytkownik obroci telefon, dropdown nie bedzie dzialac.

**Co zrobic**: Uzyc CSS media queries + JS event delegation zamiast jednorazowego
sprawdzenia szerokosc okna.

---

### 6.3 Dotykowe cele (tap targets) `[WAZNE]`

**Co sprawdzic**:
- [ ] Czy linki w nawigacji maja min. 48x48px obszar klikalny?
- [ ] Czy linki w footer nie sa za blisko siebie?
- [ ] Czy przyciski CTA sa wystarczajaco duze?

**Narzedzie**: Lighthouse > Accessibility > "Tap targets are not sized appropriately"

---

### 6.4 Testowanie responsywnosci `[ZALECANE]`

**Narzedzia**:
- Chrome DevTools > Device Mode
- Lighthouse mobile audit (zastepouje wycofany Google Mobile-Friendly Test,
  ktory zostal zamkniety w grudniu 2023 r.)
- PageSpeed Insights (pagespeed.web.dev) - testuje mobilna wersje domyslnie

**Breakpointy do przetestowania**: 320px, 375px, 414px, 768px, 1024px, 1440px

---

## 7. DOSTEPNOSC (ACCESSIBILITY)

### 7.1 Skip-to-content link - OK `[ZALECANE]`

**Obecny stan**: Wszystkie strony maja link "Przejdz do tresci". Dobrze.

### 7.2 Alt tagi na obrazkach `[WAZNE]`

**Obecny stan**: Strona glowna i portfolio maja opisowe alt tagi na wszystkich
obrazkach. Dobrze.

**Przyklad dobry (z kodu)**:
`alt="Fotografia kulinarna sniadania - owsianka z borowkami w bialych miseczkach"`

**Co sprawdzic na KAZDEJ podstronie**:
- [ ] Czy KAZDY `<img>` ma alt? (Uwaga: background-images nie maja alt - kolejny powod
  do zamiany ich na `<img>`)
- [ ] Czy alt opisuje CO jest na zdjeciu, nie jest generycsny ("zdjecie 1")?
- [ ] Czy alt zawiera slowa kluczowe naturalnie (nie keyword stuffing)?

---

### 7.3 Menu toggle brak ARIA `[WAZNE]`

**Co jest**: Hamburger menu ma `aria-label="Toggle menu"` tylko na stronie glownej.
Na podstronach brakuje `aria-label`.

**Co zrobic**: Na KAZDEJ stronie:
```html
<button class="menu-toggle" aria-label="Otworz menu" aria-expanded="false">
```
Uwaga: Zmienic `<div>` na `<button>` (semantycznie poprawne), a `aria-label`
na polskie tlumaczenie.

JS powinien dynamicznie zmieniac `aria-expanded`:
```javascript
menuToggle.setAttribute('aria-expanded', navMenu.classList.contains('active'));
```

---

### 7.4 Dropdown nawigacji brak ARIA `[WAZNE]`

**Co jest**: Dropdown uslug nie ma atrybutow ARIA.

**Co zrobic**:
```html
<li class="nav-dropdown">
    <button class="nav-dropdown-toggle" aria-expanded="false" aria-haspopup="true">
        Uslugi
    </button>
    <ul class="nav-dropdown-menu" role="menu" aria-label="Podstrony uslug">
        <li role="menuitem"><a href="...">Fotografia kulinarna</a></li>
    </ul>
</li>
```

---

### 7.5 Kontrast kolorow `[ZALECANE]`

**Co sprawdzic**:
- [ ] Czy tekst na hero (bialy na ciemnym tle) ma kontrast min. 4.5:1?
- [ ] Czy szary tekst (np. `var(--color-text-gray)`) spelnia WCAG AA?
- [ ] Czy linki sa rozrozniane nie tylko kolorem?

**Narzedzia**: axe DevTools, Lighthouse Accessibility, WebAIM Contrast Checker

---

### 7.6 Semantyczny HTML `[ZALECANE]`

**Obecny stan**: Strona uzywa `<header>`, `<main>`, `<footer>`, `<nav>`, `<section>`,
`<article>`. Dobrze.

**Co sprawdzic**:
- [ ] Czy `<nav>` ma `aria-label` (szczegolnie jesli jest wiecej niz jedna nawigacja)?
- [ ] Czy `<section>` ma naglowek (h2/h3)?
- [ ] Czy listy (`<ul>`, `<ol>`) sa uzywane do list tresci?

---

## 8. LOCAL SEO

### 8.1 NAP (Name, Address, Phone) konsystencja `[KRYTYCZNE]`

**Co sprawdzic**: Czy dane kontaktowe sa IDENTYCZNE na:
- [ ] Stronie glownej (footer)
- [ ] Stronie kontakt
- [ ] Schema.org
- [ ] Google Business Profile
- [ ] Facebook
- [ ] Instagram

**Obecne dane**:
- Nazwa: Kasia Malec Photography
- Email: kasiamalecphoto@gmail.com
- Tel: +48 609 228 085
- Lokalizacja: Lodz, Polska

**Problem**: Brak pelnego adresu (ulica, kod pocztowy). Dla Local SEO, Google preferuje
pelny adres. Jesli studio jest w domu, mozna uzyc "obszar obslugi" zamiast adresu.

---

### 8.2 Google Business Profile (GBP) `[KRYTYCZNE]`

**Co zrobic** (poza strona):
- [ ] Stworzyc/zweryfikowac Google Business Profile
- [ ] Ustawic kategorie: "Fotograf" (glowna), "Usluga fotograficzna" (dodatkowa)
- [ ] Dodac zdjecia portfolio do GBP
- [ ] Dodac godziny pracy
- [ ] Dodac link do strony
- [ ] Poprosic klientow o recenzje w Google
- [ ] Regularnie dodawac posty (co 1-2 tygodnie)

**Na stronie**:
- [ ] Dodac przycisk/link "Wystaw opinie w Google" na stronie kontakt
- [ ] Dodac Google Maps embed na stronie kontakt (jesli jest adres fizyczny)

---

### 8.3 Strony lokalne (Lodz, Warszawa) `[WAZNE]`

**Obecny stan**: Istnieja dedykowane strony:
- `/uslugi/fotografia-kulinarna-lodz/`
- `/uslugi/fotografia-kulinarna-warszawa/`

**To dobrze!** Ale trzeba sprawdzic:
- [ ] Czy kazda strona ma unikatowa tresc (nie skopiowana z glownej uslugi)?
- [ ] Czy strony zawieraja lokalne slowa kluczowe naturalnie w tresci?
- [ ] Czy schema ma `areaServed` z odpowiednim miastem? (Lodz - tak, Warszawa - sprawdzic)
- [ ] Czy sa wspomniane lokalne punkty orientacyjne, dzielnice, nazwy ulic?
  (np. "studio pod Lodzia", "sesje w centrum Warszawy")
- [ ] Min. 800-1000 slow unikatowej tresci na kazda strone lokalna

**Slowa kluczowe do uzycia**:
- Lodz: "fotografia kulinarna Lodz", "fotograf kulinarny Lodz", "zdjecia jedzenia Lodz",
  "fotograf dla restauracji Lodz"
- Warszawa: "fotografia kulinarna Warszawa", "fotograf kulinarny Warszawa",
  "sesja kulinarna Warszawa"

---

### 8.4 Lokalne linki i cytowania `[ZALECANE]`

**Co zrobic** (off-page, ale warto zanotowac):
- [ ] Dodac firme do polskich katalogow: Panorama Firm, PKT.pl, Google Maps
- [ ] Dodac do branzowyc katalogow: fotografowie.pl, itp.
- [ ] Wspolpraca z lokalnymi restauracjami - wymiana linkow
- [ ] Wpisy goscinne na blogach kulinarnych / gastronomicznych

---

## 9. CONTENT SEO

### 9.1 Hierarchia naglowokov (H1-H6) `[WAZNE]`

**Co sprawdzic na kazdej stronie**:
- [ ] Dokladnie JEDEN `<h1>` na strone?
- [ ] Czy `<h1>` zawiera glowne slowo kluczowe strony?
- [ ] Czy hierarchia jest logiczna (h1 > h2 > h3, bez przeskakiwania)?
- [ ] Czy nie ma pustych naglowkow?

**Przyklad dobrej hierarchii dla strony uslugi**:
```
h1: Fotografia kulinarna w Lodzi
  h2: Dla kogo pracuje
    h3: Restauracje i kawiarnie
    h3: Marki spozywcze
  h2: Jak wyglada sesja
  h2: Cennik
  h2: FAQ
    h3: Ile kosztuje sesja?
    h3: Jak sie przygotowac?
```

---

### 9.2 Thin content - cienka tresc `[WAZNE]`

**Co sprawdzic**: Kazda strona uslugi powinna miec minimum 500-800 slow unikatowej
tresci. Strony lokalne (Lodz, Warszawa) powinny miec 800-1200 slow.

**Strony do sprawdzenia pod katem cienkiej tresci**:
- [ ] `/uslugi/opracowanie-przepisow/` - czy ma wystarczajaco duzo tresci?
- [ ] `/uslugi/stylizacja-zywnosci/` - czy ma wystarczajaco duzo tresci?
- [ ] `/uslugi/dla-marek-i-agencji/` - czy ma wystarczajaco duzo tresci?
- [ ] `/portfolio/` - czy ma teks oproc zdjec?

**Narzedzie**: Skopiowac tresc strony do wordcounter.net i sprawdzic liczbe slow.

---

### 9.3 Unikalna tresc miedzy stronami `[WAZNE]`

**Co sprawdzic**: Czy strony uslug nie sa zbyt podobne do siebie? Szablonowe opisy
z zamienionymi slowami kluczowymi sa traktowane przez Google jako duplicate content.

**Ryzyko**: Strony typu "Fotografia kulinarna" vs "Fotografia kulinarna Lodz" moga
miec bardzo podobna tresc. Kazda musi miec unikatowy kat:
- Ogolna: dlaczego fotografia kulinarna jest wazna, proces pracy, portfolio
- Lodz: lokalne case studies, lokalne restauracje, dojazd, studio
- Warszawa: warszawskie realizacje, dojazd, wspolpraca z agencjami

---

### 9.4 Wezwanie do dzialania (CTA) `[ZALECANE]`

**Co sprawdzic**: Kazda strona powinna konczyc sie CTA prowadzacym do kontaktu.

**Obecny stan**: Strona glowna ma dobre CTA na koncu. Sprawdzic podstrony.

---

### 9.5 Rok w copyright `[ZALECANE]`

**Co jest**: Footer zawiera `(c) 2025 Kasia Malec Photography`.

**Co zrobic**: Zaktualizowac rok recznie lub uzyc dynamicznego roku.

**UWAGA**: `document.write()` jest przestarzala metoda - Chrome moze ja blokowac
na wolnych polaczeniach, a Lighthouse kara za jej uzycie. Lepsze rozwiazanie:
```html
<p>&copy; <span id="year"></span> Kasia Malec Photography</p>
<script>document.getElementById('year').textContent = new Date().getFullYear();</script>
```
Albo jeszcze prociej: po prostu zaktualizowac rok recznie raz w roku (14 plikow
mozna zaktualizowac przez find & replace w edytorze).

---

## 10. CRAWLABILITY - MAPA STRONY I INDEKSOWALNOSC

### 10.1 sitemap.xml `[WAZNE]`

**Obecny stan**: Sitemap istnieje, zawiera wszystkie 14 stron. Dobrze.

**Co poprawic**:
- [ ] Dodac tagi `<lastmod>` z rzeczywista data ostatniej modyfikacji
- [ ] Dodac strone `/uslugi/` (po jej stworzeniu)
- [ ] Upewnic sie, ze URL-e w sitemap sa dostepne (nie zwracaja 404)

**UWAGA dotyczaca sitemap**: Google oficjalnie ignoruje tagi `<priority>` i `<changefreq>`
(potwierdzil to John Mueller wielokrotnie). Obecny sitemap zawiera te tagi - nie szkodza,
ale nie wplywaja na indeksowanie. Jedyny tag, ktory Google naprawde wykorzystuje obok
`<loc>`, to `<lastmod>` - i to tylko jesli zawiera dokladna date ostatniej modyfikacji.

**Format lastmod**:
```xml
<url>
    <loc>https://www.kasiamalecphoto.pl/</loc>
    <lastmod>2025-06-15</lastmod>
</url>
```

---

### 10.2 Brak strony 404 `[WAZNE]`

**Co jest**: Nie istnieje plik `404.html`. GitHub Pages wyswietli domyslna strone 404.

**Co zrobic**: Stworzyc plik `/404.html` z:
- Naglowek i stopka identyczne z reszta strony
- Komunikat "Strona nie znaleziona"
- Link do strony glownej
- Link do mapy strony lub wyszukiwarki
- Ten sam styling co reszta strony

GitHub Pages automatycznie uzyje `/404.html` dla brakujacych URL-i.

---

### 10.3 Brak HTML sitemap `[ZALECANE]`

**Co zrobic**: Dodac widoczna mape strony (np. na stronie 404 lub w stopce) - lista
wszystkich linkow dostepnych na stronie. Pomaga uzytkownikom i crawlerom.

---

## 11. HTTPS I BEZPIECZENSTWO

### 11.1 HTTPS `[WAZNE]`

**GitHub Pages**: Automatycznie zapewnia HTTPS. OK.

**Co sprawdzic po podlaczeniu wlasnej domeny**:
- [ ] Czy certyfikat SSL jest aktywny?
- [ ] Czy HTTP automatycznie redirectuje na HTTPS?
- [ ] Czy nie ma mixed content (HTTP zasobow na HTTPS stronie)?

---

### 11.2 Linki zewnetrzne `[ZALECANE]`

**Obecny stan**: Linki do Instagram i Facebook maja `target="_blank" rel="noopener"`. OK.

**Co sprawdzic**:
- [ ] Czy WSZYSTKIE linki zewnetrzne maja `rel="noopener"`?
- [ ] Czy linki do Google Maps maja `rel="noopener"`?

---

## 12. IMAGE SEO

### 12.1 Nazwy plikow `[WAZNE]`

**Obecny stan**: Wieksosc obrazkow ma dobre, opisowe nazwy:
- `fotografia-kulinarna-zupa-pomidorowa.jpg` (dobrze)
- `sniadanie-owsianka-borowki.jpg` (dobrze)
- `kawa-mrozona-lifestyle.jpg` (dobrze)

**Problemy**:
- Pliki w `/images/na-strone/` maja nazwy z aparatu: `_DSC0254.jpg`, `_DSC0820.jpg` itd.
  Te pliki NIE sa uzywane w HTML, ale jesli beda uzyte - trzeba je zmienic na opisowe.

**Zasady nazewnictwa**:
- Uzywac myslnikow zamiast podkreslnikow
- Uzywac polskich slow kluczowych (bez polskich znakow w nazwach plikow)
- Format: `[co-jest-na-zdjeciu]-[kontekst].jpg`
- Przyklad: `tarta-truskawkowa-food-photography.jpg`

---

### 12.2 Brak WebP/AVIF `[WAZNE]`

Opisane w sekcji 5.1. Wszystkie obrazki sa w JPG. Konieczna konwersja do WebP.
(Zmienione z KRYTYCZNE na WAZNE - brak WebP nie blokuje indeksowania, ale wplywa
na wydajnosc i Core Web Vitals.)

---

### 12.3 Brak srcset i sizes `[WAZNE]`

**Co jest**: Obrazki nie maja atrybutu `srcset` ani `sizes`. Kazde urzadzenie laduje
ten sam rozmiar obrazka.

**Dlaczego to problem**: Telefon laduje ten sam 1920px obrazek co desktop.

**Co zrobic**: Przygotowac rozne rozmiary i uzyc responsive images:
```html
<img
    src="/images/gallery/kawa-mrozona-400.jpg"
    srcset="/images/gallery/kawa-mrozona-400.jpg 400w,
            /images/gallery/kawa-mrozona-800.jpg 800w,
            /images/gallery/kawa-mrozona-1200.jpg 1200w"
    sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 600px"
    alt="..."
    loading="lazy"
    width="800"
    height="600"
>
```

**Narzedzia do generowania rozmiarow**: sharp (Node.js), ImageMagick, Squoosh CLI

---

### 12.4 Kompresja obrazkow `[WAZNE]`

**Co sprawdzic**: Czy obrazki sa skompresowane? Dla fotografii kulinarnej:
- Galeria/portfolio: max 200-300KB per obrazek (800-1200px szerokosc)
- Hero: max 300-500KB (1920px szerokosc)
- Miniaturki: max 50-100KB (400px szerokosc)

**Narzedzia**: TinyPNG, Squoosh, ImageOptim (Mac)

---

### 12.5 Duplikaty obrazkow `[ZALECANE]`

**Co jest**: Te same obrazki istnieja w dwoch katalogach:
- `/images/gallery/` i `/images/portfolio/` zawieraja identyczne pliki
  (np. `sniadanie-owsianka-borowki.jpg` jest w obu)

**Co zrobic**: Uzyc jednego katalogu i odwolywac sie do niego z roznych stron.
Zmniejsza rozmiar repo i unika nieporozumien.

---

## 13. HREFLANG I TAGI JEZYKOWE

### 13.1 Atrybut lang na html `[WAZNE]`

**Obecny stan**: Wszystkie strony maja `<html lang="pl">`. Poprawnie.

---

### 13.2 Brak hreflang `[ZALECANE]`

**Co jest**: Zaden plik nie zawiera tagow hreflang.

**Czy jest potrzebny?**: Dla strony TYLKO w jezyku polskim, kierowanej TYLKO do polskiego
rynku, hreflang nie jest krytycznie potrzebny. Jednakze dodanie go moze pomoc Google
lepiej zrozumiec docelowy rynek.

**Co zrobic** (opcjonalnie): Dodac na kazdej stronie:
```html
<link rel="alternate" hreflang="pl" href="https://www.kasiamalecphoto.pl/[sciezka]/">
<link rel="alternate" hreflang="x-default" href="https://www.kasiamalecphoto.pl/[sciezka]/">
```

**Kiedy staje sie WAZNE**: Jesli w przyszlosci powstanie wersja angielska strony
(np. dla miedzynarodowych klientow/agencji).

---

### 13.3 Locale w Open Graph `[ZALECANE]`

**Co zrobic**: Dodac `<meta property="og:locale" content="pl_PL">` na kazdej stronie.
Pomaga Facebookowi i LinkedIn poprawnie wyswietlic podglad.

---

## 14. DODATKOWE ZALECENIA

### 14.1 Google Search Console `[KRYTYCZNE]`

**Co zrobic** (po odblakowanie indeksowania):
- [ ] Dodac strone do Google Search Console
- [ ] Zweryfikowac domene (DNS TXT record lub plik HTML)
- [ ] Wyslac sitemap.xml
- [ ] Monitorowac bledy indeksowania
- [ ] Sprawdzic Core Web Vitals

---

### 14.2 Google Analytics / plausible.io `[WAZNE]`

**Co jest**: Brak kodu sledzenia na stronie.

**Co zrobic**:
- Dodac Google Analytics 4 (GA4) LUB privacy-friendly alternatywe (Plausible, Fathom)
- Ustawic konwersje: kliknięcie w email, telefon, wyslanie formularza
- Sledzic najwazniejsze strony wejsciowe

---

### 14.3 Placeholder obrazki - brakujace pliki `[KRYTYCZNE]`

**Co jest**: 7 stron uslugowych odwoluje sie do obrazkow w katalogu `/images/placeholder/`,
ale ten katalog jest PUSTY. Dotyczy stron:
- `cennik-fotografia-kulinarna/index.html` -> `hero-pricing.jpg`
- `o-mnie/index.html` -> `hero-about.jpg`
- `uslugi/dla-marek-i-agencji/index.html` -> `hero-brands.jpg`
- `uslugi/opracowanie-przepisow/index.html` -> `hero-recipes.jpg`
- `uslugi/szkolenia-fotografia-kulinarna/index.html` -> `hero-workshop.jpg`
- `uslugi/fotografia-kulinarna-lodz/index.html` -> `hero-lodz.jpg`
- `uslugi/fotografia-kulinarna-warszawa/index.html` -> `hero-warszawa.jpg`

**Dlaczego to KRYTYCZNE**: Te strony nie maja widocznego hero image - uzytkownik widzi
puste tlo. Dla strony fotografki to katastrofalny problem wizerunkowy i UX. Google
rowniez loguje bledy 404 dla brakujacych zasobow.

**Co zrobic**:
- Dodac prawdziwe zdjecia do katalogu `/images/placeholder/` (lub przeniesc do `/images/hero/`)
- Najlepiej: uzyc prawdziwych zdjec z sesji zamiast "placeholderow"
- Zmienic nazwy katalogu z `placeholder` na cos bardziej profesjonalnego

---

### 14.5 Plik OPEN-SITE.html `[ZALECANE]`

**Co jest**: Istnieje plik `/OPEN-SITE.html` w katalogu glownym. Jesli to plik
pomocniczy (do otwierania strony w przegladarce), nie powinien byc indeksowany.

**Co zrobic**: Dodac `<meta name="robots" content="noindex">` LUB usunac z repozytorium
jesli nie jest potrzebny.

---

### 14.6 Wydajnosc JavaScript `[ZALECANE]`

**Co jest**: `main.js` laduje sie synchronicznie na koncu `<body>`. To dobrze
(nie blokuje renderowania).

**Co poprawic**:
- [ ] ~~Dodac `defer` do tagu script~~ - UWAGA: skrypt jest juz na koncu `<body>`,
  wiec `defer` nie daje zadnej praktycznej roznicy (defer ma znaczenie tylko dla
  skryptow w `<head>`). Mozna dodac dla czytelnosci, ale nie zmieni wydajnosci.
- [ ] Przebudowac `initDropdownMobile()` - sprawdza szerokosc raz, nie reaguje na zmiany

---

## 15. GOOGLE IMAGES SEO (DODANE W RECENZJI)

Dla strony fotografki Google Images to potencjalnie drugie co do wielkosci zrodlo ruchu
organicznego. Ta sekcja byla calkowicie pominieta w oryginalnej checklistie.

### 15.1 Brak image sitemap `[WAZNE]`

**Co jest**: Sitemap.xml nie zawiera informacji o obrazkach.

**Dlaczego to problem**: Image sitemap pomaga Google odkryc i zaindeksowac zdjecia,
szczegolnie te ladowane przez JS lub uzywane jako background-image.

**Co zrobic**: Dodac rozszerzenie image sitemap:
```xml
<url>
    <loc>https://www.kasiamalecphoto.pl/portfolio/</loc>
    <image:image>
        <image:loc>https://www.kasiamalecphoto.pl/images/portfolio/ciasteczka-czekoladowe-kawa.jpg</image:loc>
        <image:title>Fotografia kulinarna - ciasteczka czekoladowe z kawa</image:title>
    </image:image>
    <image:image>
        <image:loc>https://www.kasiamalecphoto.pl/images/portfolio/sniadanie-owsianka-borowki.jpg</image:loc>
        <image:title>Fotografia kulinarna sniadania - owsianka z borowkami</image:title>
    </image:image>
</url>
```

Namespace do dodania w tagu `<urlset>`:
`xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"`

---

### 15.2 Brak ImageObject schema `[ZALECANE]`

**Co jest**: Portfolio nie ma danych strukturalnych dla obrazkow.

**Co zrobic**: Na stronie portfolio dodac schema ImageGallery lub ImageObject:
```json
{
    "@context": "https://schema.org",
    "@type": "ImageGallery",
    "name": "Portfolio fotografii kulinarnej",
    "author": {"@type": "Person", "name": "Kasia Malec"},
    "image": [
        {
            "@type": "ImageObject",
            "contentUrl": "https://www.kasiamalecphoto.pl/images/portfolio/ciasteczka-czekoladowe-kawa.jpg",
            "name": "Ciasteczka czekoladowe z kawa",
            "description": "Profesjonalna fotografia kulinarna - ciasteczka czekoladowe"
        }
    ]
}
```

---

### 15.3 Alt tagi z perspektywy Google Images `[WAZNE]`

**Dobre praktyki dla fotografa kulinarnego**:
- Alt powinien opisywac ZAWARTOSC zdjecia, nie kontekst uzycia
- Dobrze: `alt="Tarta truskawkowa z bita smietana na rustykalnym drewnianym stole"`
- Zle: `alt="Fotografia kulinarna numer 3"`
- Zle: `alt="fotografia kulinarna Lodz fotograf kulinarny zdjecia jedzenia"` (keyword stuffing)
- Wlaczac naturalne slowa kluczowe: nazwy dan, skladniki, styl

---

## 16. INP (INTERACTION TO NEXT PAINT) - DODANE W RECENZJI

### 16.1 INP zastepowal FID w Core Web Vitals `[WAZNE]`

**Co jest**: Od marca 2024 r. Google zastepowal metrykę FID (First Input Delay) nowa
metryka INP (Interaction to Next Paint) w Core Web Vitals. Oryginalna checklista tego
nie uwzgledniala.

**Dlaczego to wazne**: INP mierzy responsywnosc strony na WSZYSTKIE interakcje uzytkownika
(nie tylko pierwsza jak FID). Dobry wynik: ponizej 200ms.

**Co sprawdzic**:
- [ ] Uruchomic Lighthouse i sprawdzic wynik INP
- [ ] Czy klikniecie w hamburger menu, dropdown, FAQ accordion reaguje szybko?
- [ ] Czy animacje CSS nie blokuja glownego watku?

**Potencjalne problemy na tej stronie**:
- `initDropdownMobile()` moze powodowac opoznienia na mobile
- Animacje `animate-on-scroll` (IntersectionObserver) - sprawdzic czy nie sa zbyt ciezkie

**Co zrobic**: Mierzyc INP w PageSpeed Insights. Dla statycznej strony HTML bez ciezkiego
JS, INP powinien byc dobry - ale warto zweryfikowac.

---

## 17. STRATEGIA CONTENT / BLOG (DODANE W RECENZJI)

### 17.1 Brak bloga lub sekcji artykuow `[WAZNE]`

**Co jest**: Strona nie ma bloga ani sekcji z artykułami.

**Dlaczego to problem**: Dla malego biznesu usługowego, blog to najlepsza strategia
dlugodystansowa na pozycjonowanie w long-tail keywords. Strona ma 14 statycznych
podstron - po ich zoptymalizowaniu, mozliwosci dalszego wzrostu organicznego sa ograniczone
bez nowych tresci.

**Przykladowe tematy artykuow** (wysoki potencjal SEO dla fotografa kulinarnego):
- "Jak przygotowac jedzenie do sesji zdjeciowej - poradnik dla restauracji"
- "Ile kosztuje profesjonalna fotografia kulinarna w 2026 roku"
- "5 bledow w zdjeciach jedzenia na Instagramie"
- "Jak wybrac fotografa kulinarnego - na co zwrocic uwage"
- "Fotografia kulinarna telefonem vs profesjonalna sesja - porownanie"

**Co zrobic**:
- Dodac sekcje `/blog/` lub `/artykuly/` z 1-2 artykułami miesiecznie
- Kazdy artykul 800-1500 slow
- Linkowanie wewnetrzne z artykulow do stron uslug
- Dodac Article schema na postach blogowych
- Dla statycznej strony: kazdy post to osobny plik HTML w katalogu `/blog/[slug]/index.html`

**Priorytet**: To nie jest pilne, ale po wdrozeniu Faz 1-4 to najlepsza inwestycja
w dalszy wzrost organiczny.

---

## 18. PRIORYTETOWA KOLEJNOSC WDROZENIA

Ponizej podsumowanie w kolejnosci od najbardziej krytycznego:

### Faza 1 - ODBLOKOWANIE INDEKSOWANIA (natychmiast, dzien 1)
1. Usunac `<meta name="robots" content="noindex, nofollow">` ze WSZYSTKICH stron
2. Zmienic robots.txt - usunac `Disallow: /`, odkomentowac Sitemap
3. Dodac brakujace placeholder obrazki (7 stron ma puste hero!) - patrz 14.3
4. Zarejestrowac strone w Google Search Console
5. Wyslac sitemap.xml
6. Dodac analityke (GA4 lub Plausible) - BEZ danych nie mozna mierzyc efektow
   (przeniesione z Fazy 5 - musi byc od poczatku!)

### Faza 2 - FUNDAMENTY SEO (tydzien 1-2)
7. Ujednolicic sciezki linkow (usunac `/malec-photo-website/` po podlaczeniu domeny)
8. Dodac Open Graph na wszystkie podstrony (tagi Twitter opcjonalne - OG wystarczy)
9. Rozbudowac Schema.org (BreadcrumbList, poprawic PriceSpecification na cenniku)
10. Stworzyc strone 404.html
11. Stworzyc strone hub'a `/uslugi/` (podniesione z ZALECANE na WAZNE)
12. Dodac favicon na wszystkie podstrony

### Faza 3 - WYDAJNOSC I OBRAZKI (tydzien 2-4)
13. Skonwertowac obrazki do WebP (priorytet obnizony z KRYTYCZNE na WAZNE)
14. Dodac width/height do wszystkich img
15. Dodac loading="lazy" do obrazkow ponizej fold
16. Zamienic hero background-image na <img> z <picture>
17. Dodac srcset/sizes dla responsive images
18. Dodac preconnect na kontakt/index.html (brakuje!)
19. Self-hostowac Google Fonts lub optymalizowac ladowanie

### Faza 4 - LOCAL SEO (tydzien 2-4, rownolegle z Faza 3)
20. Stworzyc/zoptymalizowac Google Business Profile (moze byc robione rownolegle!)
21. Rozbudowac tresc stron lokalnych (Lodz, Warszawa)
22. Dodac pelny adres lub areaServed w schema
23. Zbudowac cytowania w polskich katalogach firm

### Faza 5 - GOOGLE IMAGES I CONTENT (tydzien 4-6)
24. Dodac image sitemap (wazne dla fotografa!)
25. Dodac cross-linking miedzy podstronami uslug
26. Poprawic ARIA na nawigacji i menu
27. Usunac duplikaty obrazkow (gallery vs portfolio)
28. Minifikowac CSS i JS

### Faza 6 - DLUGOTERMINOWO (miesiac 2+)
29. Rozpoczac bloga / sekcje artykulow (1-2 posty miesiecznie)
30. Dodac hreflang (jesli planowana wersja EN)
31. Rozbudowac portfolio o opisy case studies
32. Zbierac recenzje w Google Business Profile

---

## NARZEDZIA DO AUDYTU

| Narzedzie | Co sprawdza | URL |
|-----------|-------------|-----|
| Google Search Console | Indeksowanie, bledy, wydajnosc | search.google.com/search-console |
| Google PageSpeed Insights | Core Web Vitals, wydajnosc | pagespeed.web.dev |
| Google Rich Results Test | Schema.org / dane strukturalne | search.google.com/test/rich-results |
| Lighthouse (Chrome DevTools) | Wydajnosc, dostepnosc, SEO, PWA | F12 > Lighthouse |
| Schema Markup Validator | Walidacja schema.org | validator.schema.org |
| Screaming Frog SEO Spider | Crawl calej strony, broken links | screamingfrog.co.uk |
| axe DevTools | Dostepnosc / WCAG | deque.com/axe |
| WebAIM Contrast Checker | Kontrast kolorow | webaim.org/resources/contrastchecker |
| TinyPNG / Squoosh | Kompresja obrazkow | tinypng.com / squoosh.app |
| Ahrefs / Semrush | Analiza slow kluczowych, backlinki | ahrefs.com / semrush.com |

---

Ostatnia aktualizacja: 2026-02-15 (recenzja)

---

## NOTATKI RECENZENTA

Data recenzji: 2026-02-15
Recenzent: Claude (SEO review)

### Podsumowanie

Oryginalna checklista byla solidna i dobrze zorganizowana. Ponizej podsumowanie
wprowadzonych zmian, dodatkow i poprawek.

### BLEDY NAPRAWIONE

1. **Sekcja 5.1 / 5.7 - Kolejnosc source w `<picture>`**: AVIF musi byc PRZED WebP
   w elemencie `<picture>`, poniewaz przegladarka wybiera PIERWSZY pasujacy format.
   Oryginalna checklista miala odwrotna kolejnosc (WebP przed AVIF).

2. **Sekcja 2.5 - Twitter Cards `name` vs `property`**: Usuniety bledny komentarz
   sugerujacy ze `name` jest "poprawniejsze" niz `property`. Oba sa akceptowane.
   Dodana informacja ze Twitter/X od 2022 r. uzywa tagow OG jako fallback.

3. **Sekcja 14.6 (dawna 14.4) - `defer` na skrypcie**: Dodana uwaga ze `defer`
   nie daje praktycznej roznicy dla skryptu juz umieszczonego na koncu `<body>`.

4. **Sekcja 9.5 - `document.write()`**: Zastapiony przyklad kodem bez
   `document.write()`, ktory jest przestarzaly i moze byc blokowany przez Chrome.

5. **Sekcja 5.4 - Google Fonts preload hack**: Usuniety skomplikowany hack
   z `media="print" onload="this.media='all'"`. Dodana informacja ze URL juz
   zawiera `display=swap`. Zidentyfikowany brak preconnect na stronie kontakt.

6. **Sekcja 10.1 - sitemap.xml**: Dodana informacja ze Google ignoruje tagi
   `<priority>` i `<changefreq>`. Tylko `<lastmod>` ma znaczenie.

7. **Sekcja 6.4 - Google Mobile-Friendly Test**: Narzedzie zostalo zamkniete
   w grudniu 2023 r. Zastapione aktualnymi alternatywami.

### PRIORYTETY ZMIENIONE

1. **5.1 / 12.2 - WebP/AVIF**: Zmienione z `[KRYTYCZNE]` na `[WAZNE]`.
   Brak WebP nie blokuje indeksowania - wplywa na wydajnosc, ale nie jest "krytyczny"
   w sensie uniemozliwienia widocznosci w Google.

2. **4.2 - Strona hub'a uslug**: Zmienione z `[ZALECANE]` na `[WAZNE]`.
   Brak strony nadrzednej `/uslugi/` to strata linkowania wewnetrznego i sygnalu
   tematycznego. Dla 9 podstron uslug strona hub jest wazna, nie opcjonalna.

3. **3.3 - FAQPage schema**: Zmienione z `[WAZNE]` na `[ZALECANE]`.
   Od sierpnia 2023 r. Google znaczaco ograniczyl wyswietlanie FAQ rich results
   dla malych biznesow.

4. **Analityka przeniesiona z Fazy 5 do Fazy 1**: Bez kodu sledzenia od poczatku
   nie mozna mierzyc efektow wdrazanych zmian SEO. To musi byc jednym z pierwszych
   krokow.

### BRAKUJACE ELEMENTY DODANE

1. **Sekcja 14.3 - Placeholder obrazki (KRYTYCZNE)**: 7 stron odwoluje sie do
   obrazkow w `/images/placeholder/`, ale katalog jest PUSTY. Strony uslugowe
   wyswietlaja sie bez hero image. Dla fotografa to krytyczny problem wizerunkowy.

2. **Sekcja 15 - Google Images SEO**: Calkowicie pominieta w oryginalnej checklistie.
   Dla fotografa kulinarna Google Images to potencjalnie drugie co do wielkosci
   zrodlo ruchu. Dodane: image sitemap, ImageObject schema, wytyczne dot. alt tagow.

3. **Sekcja 16 - INP (Interaction to Next Paint)**: Nowa metryka Core Web Vitals,
   ktora zastepila FID od marca 2024 r. Oryginalna checklista nie wspominala
   o zadnej metryce responsywnosci interakcji.

4. **Sekcja 17 - Strategia content / blog**: Dodana rekomendacja rozpoczecia bloga
   jako dlugoterminowej strategii SEO. Bez nowych tresci, strona z 14 podstronami
   ma ograniczony potencjal wzrostu organicznego.

5. **Strona kontakt - brak preconnect**: Zidentyfikowany brak tagow
   `<link rel="preconnect">` na stronie kontakt, chociaz inne podstrony je maja.

6. **Sekcja 5.7 - CSS dla hero-bg**: Dodany brakujacy przyklad CSS potrzebny
   do zamiany hero background-image na element `<img>` (position, object-fit).

7. **Sekcja 3.5 - Self-served reviews**: Dodana informacja ze Google od 2024 r.
   nie wyswietla gwiazdek w SERP dla recenzji umieszczonych na wlasnej stronie.

### UWAGI DO FAZY WDROZENIA

1. Fazy 3 i 4 moga byc realizowane rownolegle (Local SEO nie zalezy od optymalizacji
   obrazkow).

2. Dodana Faza 6 (dlugoterminowa) z blogiem i rozbudowa portfolio.

3. Google Business Profile jest kluczowe dla lokalnego biznesu fotograficznego -
   warto zaczac rownolegle z Faza 2, nie czekac na Faze 4.

### CO JEST DOBRZE W ORYGINALNEJ CHECKLISTIE

- Trafna identyfikacja dwoch najkrytyczniejszych problemow (noindex + robots.txt)
- Dobra sekcja Local SEO z konkretnymi slow kluczowymi do uzycia
- Poprawna analiza niespojnosci sciezek (`/malec-photo-website/`)
- Solidna sekcja o dostepnosci (ARIA, semantyczny HTML)
- Praktyczne porady o linkowanie wewnetrznym
- Dobra tabela narzedzi do audytu
