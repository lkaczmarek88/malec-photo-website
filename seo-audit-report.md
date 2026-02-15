# SEO Audit Report - Kasia Malec Photography
**Data audytu**: 2026-02-15
**Audytor**: Claude (SEO code audit)
**Baza**: Checklist SEO z pliku `seo-checklist.md`
**Repozytorium**: `/Users/lkaczmarek/Desktop/new-malecphoto/`

---

## PODSUMOWANIE

| Severity | Liczba problemow |
|----------|-----------------|
| KRYTYCZNE | 5 |
| WAZNE | 24 |
| ZALECANE | 11 |

---

## FAZA 1 - ODBLOKOWANIE INDEKSOWANIA

---

### Issue 1.1 - robots.txt blokuje cala strone
**Severity**: KRYTYCZNE
**Checklist ref**: 1.1

**Stan obecny**: Plik `/Users/lkaczmarek/Desktop/new-malecphoto/robots.txt` zawiera na linii 3:
```
Disallow: /
```
Linia z Sitemap jest zakomentowana (linia 6):
```
# Sitemap: https://www.kasiamalecphoto.pl/sitemap.xml
```

**Wymagana poprawka**: Zamienic cala zawartosc pliku na:
```
User-agent: *
Disallow:

Sitemap: https://www.kasiamalecphoto.pl/sitemap.xml
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/robots.txt`

---

### Issue 1.2 - Wszystkie strony maja `noindex, nofollow`
**Severity**: KRYTYCZNE
**Checklist ref**: 1.2

**Stan obecny**: Kazdy z 14 plikow HTML zawiera na linii 6:
```html
<meta name="robots" content="noindex, nofollow">
```
Strona glowna `index.html` ma DODATKOWO na linii 14:
```html
<meta name="robots" content="index, follow">
```
To powoduje konflikt - Google wybiera bardziej restrykcyjna opcje (`noindex`).

**Wymagana poprawka**:
1. Usunac `<meta name="robots" content="noindex, nofollow">` (linia 6) z KAZDEGO pliku
2. Na stronie glownej zostawic TYLKO `<meta name="robots" content="index, follow">` (linia 14)
3. Na pozostalych stronach albo dodac `<meta name="robots" content="index, follow">` albo nie dodawac wcale (domyslnie Google indeksuje)

**Pliki do zmiany (wszystkie 14)**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (linia 6 - usunac; linia 14 - zostawic)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-lodz/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-warszawa/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-produktowa-zywnosci/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/dla-restauracji-i-kawiarni/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/dla-marek-i-agencji/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/szkolenia-fotografia-kulinarna/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/opracowanie-przepisow/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/stylizacja-zywnosci/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/portfolio/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/o-mnie/index.html` (linia 6)
- `/Users/lkaczmarek/Desktop/new-malecphoto/kontakt/index.html` (linia 6)

---

### Issue 14.3 - Brakujace obrazki placeholder (7 stron bez hero)
**Severity**: KRYTYCZNE
**Checklist ref**: 14.3

**Stan obecny**: Katalog `/Users/lkaczmarek/Desktop/new-malecphoto/images/placeholder/` jest PUSTY (0 plikow). Nastepujace strony odwoluja sie do nieistniejacych obrazkow:

| Plik | Brakujacy obrazek | Linia |
|------|-------------------|-------|
| `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html` | `images/placeholder/hero-pricing.jpg` | 70 |
| `/Users/lkaczmarek/Desktop/new-malecphoto/o-mnie/index.html` | `images/placeholder/hero-about.jpg` | 68 |
| `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/dla-marek-i-agencji/index.html` | `images/placeholder/hero-brands.jpg` | 70 |
| `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/opracowanie-przepisow/index.html` | `images/placeholder/hero-recipes.jpg` | 66 |
| `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/szkolenia-fotografia-kulinarna/index.html` | `images/placeholder/hero-workshop.jpg` | 66 |
| `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-lodz/index.html` | `images/placeholder/hero-lodz.jpg` | 66 |
| `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-warszawa/index.html` | `images/placeholder/hero-warsaw.jpg` | 44 |

**UWAGA**: Checklist wymienia `hero-warszawa.jpg` dla strony warszawskiej, ale w rzeczywistym kodzie (linia 44) jest `hero-warsaw.jpg`. To istotna roznica - poprawna nazwa do dodania to `hero-warsaw.jpg`.

**Wymagana poprawka**:
1. Dodac prawdziwe zdjecia do `/Users/lkaczmarek/Desktop/new-malecphoto/images/placeholder/` o nazwach:
   - `hero-pricing.jpg`
   - `hero-about.jpg`
   - `hero-brands.jpg`
   - `hero-recipes.jpg`
   - `hero-workshop.jpg`
   - `hero-lodz.jpg`
   - `hero-warsaw.jpg`
2. Docelowo: przeniesc obrazki do `/images/hero/` i zaktualizowac referencje w HTML

**Pliki do zmiany**: Wymienione wyzej 7 plikow HTML (zmiana sciezek) + dodanie 7 plikow JPG

---

### Issue 14.1 - Brak Google Search Console
**Severity**: KRYTYCZNE
**Checklist ref**: 14.1

**Stan obecny**: Off-page, nie implementowalne w kodzie. Po odblokowanie indeksowania (Issues 1.1 i 1.2) nalezy zarejestrowac strone w GSC, zweryfikowac domene i wyslac sitemap.

**Wymagana poprawka**: Off-page - wymaga dzialania w panelu Google Search Console.

---

### Issue 8.2 - Google Business Profile
**Severity**: KRYTYCZNE
**Checklist ref**: 8.2

**Stan obecny**: Off-page, nie implementowalne w kodzie. Kluczowe dla Local SEO fotografa kulinarnego.

**Wymagana poprawka**: Off-page - wymaga dzialania w panelu Google Business Profile.

---

### Issue 14.2 - Brak analityki
**Severity**: WAZNE
**Checklist ref**: 14.2

**Stan obecny**: Zaden plik HTML nie zawiera kodu Google Analytics (GA4) ani zadnej alternatywy (Plausible, Fathom). Bez analityki nie mozna mierzyc efektow zmian SEO.

**Wymagana poprawka**: Dodac tag GA4 (lub Plausible) do `<head>` KAZDEGO z 14 plikow HTML. Przyklad GA4:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

**Pliki do zmiany**: Wszystkie 14 plikow HTML (dodac do `<head>` przed zamykajacym `</head>`)

---

## FAZA 2 - FUNDAMENTY SEO

---

### Issue 4.1 - Niespojnosc sciezek linkow (`/malec-photo-website/`)
**Severity**: KRYTYCZNE
**Checklist ref**: 4.1

**Stan obecny**: Znaleziono **402 wystapien** prefiksu `/malec-photo-website/` w 14 plikach HTML. Dotyczy to:
- Linkow nawigacji (nav-menu)
- Linkow w footer
- Linkow CTA w tresci
- Sciezek do CSS: `href="/malec-photo-website/css/style.css"`
- Sciezek do JS: `src="/malec-photo-website/js/main.js"`
- Sciezek do obrazkow: `src="/malec-photo-website/images/..."`

Tymczasem canonical URL-e i sitemap uzywaja `kasiamalecphoto.pl` bez tego prefiksu.

**Wymagana poprawka**: Po podlaczeniu wlasnej domeny, zamienic WSZYSTKIE 402 wystapienia `/malec-photo-website/` na `/` we wszystkich 14 plikach HTML.

Przyklad zamiany:
```
PRZED: href="/malec-photo-website/uslugi/fotografia-kulinarna/"
PO:    href="/uslugi/fotografia-kulinarna/"

PRZED: src="/malec-photo-website/css/style.css"
PO:    src="/css/style.css"

PRZED: src="/malec-photo-website/js/main.js"
PO:    src="/js/main.js"
```

Jesli strona zostaje na GitHub Pages, to odwrotnie - canonical i sitemap powinny odzwierciedlac prefiks `/malec-photo-website/`.

**Pliki do zmiany**: Wszystkie 14 plikow HTML

---

### Issue 2.1 - Title strony glownej zbyt dlugi
**Severity**: WAZNE
**Checklist ref**: 2.1

**Stan obecny**: Plik `/Users/lkaczmarek/Desktop/new-malecphoto/index.html`, linia 10:
```html
<title>Fotografia kulinarna i produktowa żywności | Kasia Malec Photography</title>
```
Dlugosc: 67 znakow (zalecane max 60).

**Wymagana poprawka**: Skrocic do max 60 znakow, np.:
```html
<title>Fotografia kulinarna Lodz i Warszawa | Kasia Malec</title>
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (linia 10)

---

### Issue 2.5 - Brak Open Graph i Twitter Cards na 13 podstronach
**Severity**: WAZNE
**Checklist ref**: 2.5

**Stan obecny**: Tagi OG i Twitter sa TYLKO na stronie glownej (`index.html`, linie 17-29). Zadna z 13 podstron ich nie ma. Zweryfikowano brak `og:locale` na jakiejkolwiek stronie (0 wystapien).

**Wymagana poprawka**: Dodac do `<head>` KAZDEJ z 13 podstron:
```html
<meta property="og:type" content="website">
<meta property="og:url" content="[canonical URL strony]">
<meta property="og:title" content="[title strony]">
<meta property="og:description" content="[meta description strony]">
<meta property="og:image" content="https://www.kasiamalecphoto.pl/images/og-image.jpg">
<meta property="og:locale" content="pl_PL">
```

Dodac `<meta property="og:locale" content="pl_PL">` rowniez na stronie glownej (brakuje).

**Pliki do zmiany**: Wszystkie 14 plikow HTML

---

### Issue 3.1 - Schema.org na stronie glownej niekompletna
**Severity**: WAZNE
**Checklist ref**: 3.1

**Stan obecny**: `/Users/lkaczmarek/Desktop/new-malecphoto/index.html`, linie 43-68. Schema `ProfessionalService` istnieje, ale brakuje:
- `email`
- `addressRegion`
- `openingHoursSpecification`
- `areaServed`
- `hasOfferCatalog`

Obecna schema:
```json
{
    "@type": "ProfessionalService",
    "name": "Kasia Malec Photography",
    "description": "...",
    "url": "https://www.kasiamalecphoto.pl",
    "telephone": "+48 609 228 085",
    "address": { "addressLocality": "Lodz", "addressCountry": "PL" },
    "geo": { "latitude": 51.7592, "longitude": 19.4560 },
    "priceRange": "$$",
    "image": "...",
    "sameAs": [...]
}
```

**Wymagana poprawka**: Rozbudowac schema, dodajac brakujace pola:
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
        "dayOfWeek": ["Monday","Tuesday","Wednesday","Thursday","Friday"],
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

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (linie 43-68)

---

### Issue 3.2 - Brak BreadcrumbList schema na podstronach
**Severity**: WAZNE
**Checklist ref**: 3.2

**Stan obecny**: Zaden plik nie zawiera danych strukturalnych BreadcrumbList. Zweryfikowano - 0 wystapien `BreadcrumbList` w codebase.

**Wymagana poprawka**: Dodac na KAZDEJ podstronie (nie na stronie glownej) script `application/ld+json` z BreadcrumbList. Przyklad dla `/uslugi/fotografia-kulinarna/`:
```html
<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "BreadcrumbList",
    "itemListElement": [
        {"@type": "ListItem", "position": 1, "name": "Strona glowna", "item": "https://www.kasiamalecphoto.pl/"},
        {"@type": "ListItem", "position": 2, "name": "Uslugi", "item": "https://www.kasiamalecphoto.pl/uslugi/"},
        {"@type": "ListItem", "position": 3, "name": "Fotografia kulinarna"}
    ]
}
</script>
```

**Pliki do zmiany**: 13 podstron (wszystkie oprocz `index.html`)

---

### Issue 3.4 - Schema cennikowa uzywa blednego typu
**Severity**: WAZNE
**Checklist ref**: 3.4

**Stan obecny**: `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html`, linie 18-33:
```json
{
    "@type": "PriceSpecification",
    ...
}
```
`PriceSpecification` nie jest poprawnym typem najwyzszego poziomu dla cennika uslug.

**Wymagana poprawka**: Zamienic na `@type: Service` z zagniezdzonymi `Offer`:
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
            "name": "Pakiet Starter",
            "price": "1500",
            "priceCurrency": "PLN",
            "description": "5-8 dan/produktow, 1 ujecie kazdego dania, stylizacja i rekwizyty"
        },
        {
            "@type": "Offer",
            "name": "Pakiet Professional",
            "price": "2500",
            "priceCurrency": "PLN",
            "description": "10-15 dan/produktow, 1-2 ujecia kazdego dania, stylizacja premium"
        },
        {
            "@type": "Offer",
            "name": "Pakiet Premium",
            "price": "4000",
            "priceCurrency": "PLN",
            "description": "20+ dan/produktow, wiele ujec, stylizacja custom, obrobka premium"
        }
    ]
}
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html` (linie 18-33)

---

### Issue 4.2 - Brak strony hub'a `/uslugi/`
**Severity**: WAZNE
**Checklist ref**: 4.2

**Stan obecny**: Nie istnieje plik `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/index.html`. Dropdown "Uslugi" w nawigacji linkuje do `href="#"` (nie prowadzi do zadnej strony). Zweryfikowano - brak pliku.

**Wymagana poprawka**:
1. Stworzyc strone `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/index.html` z przegladem wszystkich 9 uslug
2. Zmienic link w nawigacji z `href="#"` na `href="/uslugi/"` (lub `href="/malec-photo-website/uslugi/"` na GitHub Pages) we WSZYSTKICH 14 plikach HTML
3. Dodac nowy URL do sitemap.xml

**Pliki do zmiany**:
- NOWY: `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/index.html`
- Wszystkie 14 plikow HTML (zmiana `href="#"` na `href="/malec-photo-website/uslugi/"`)
- `/Users/lkaczmarek/Desktop/new-malecphoto/sitemap.xml`

---

### Issue 10.2 - Brak strony 404
**Severity**: WAZNE
**Checklist ref**: 10.2

**Stan obecny**: Nie istnieje plik `/Users/lkaczmarek/Desktop/new-malecphoto/404.html`. GitHub Pages wyswietli domyslna strone 404.

**Wymagana poprawka**: Stworzyc plik `/Users/lkaczmarek/Desktop/new-malecphoto/404.html` z:
- Nawigacja i footer identyczne z reszta strony
- Komunikat "Strona nie znaleziona"
- Link do strony glownej
- Linki do glownych sekcji serwisu

**Pliki do zmiany**:
- NOWY: `/Users/lkaczmarek/Desktop/new-malecphoto/404.html`

---

### Issue 2.6 - Favicon tylko na stronie glownej
**Severity**: ZALECANE
**Checklist ref**: 2.6

**Stan obecny**: Favicon jest zdefiniowany TYLKO na stronie glownej (`/Users/lkaczmarek/Desktop/new-malecphoto/index.html`, linia 32):
```html
<link rel="icon" type="image/png" href="/images/favicon.png">
```
Zweryfikowano - 0 wystapien `rel="icon"` na pozostalych 13 stronach.

**Wymagana poprawka**: Dodac do `<head>` kazdej z 13 podstron:
```html
<link rel="icon" type="image/png" href="/images/favicon.png">
```

**Pliki do zmiany**: 13 podstron (wszystkie oprocz `index.html`)

---

### Issue 9.5 - Rok w copyright (2025 zamiast 2026)
**Severity**: ZALECANE
**Checklist ref**: 9.5

**Stan obecny**: Wszystkie 14 plikow maja w footer:
```html
<p>&copy; 2025 Kasia Malec Photography. Wszelkie prawa zastrzezone.</p>
```

**Wymagana poprawka**: Zamienic `2025` na `2026` we wszystkich 14 plikach. Lub uzyc dynamicznego roku:
```html
<p>&copy; <span id="year"></span> Kasia Malec Photography. Wszelkie prawa zastrzezone.</p>
<script>document.getElementById('year').textContent = new Date().getFullYear();</script>
```

**Pliki do zmiany**: Wszystkie 14 plikow HTML

---

## FAZA 3 - WYDAJNOSC I OBRAZKI

---

### Issue 5.7 - Hero jako background-image w inline style
**Severity**: WAZNE
**Checklist ref**: 5.7

**Stan obecny**: Na WSZYSTKICH stronach z hero section, obrazek jest ustawiony jako CSS `background-image` w atrybucie `style`. Przyklad z `index.html` (linia 112):
```html
<section class="hero" style="background-image: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.3)), url('/images/hero/fotografia-kulinarna-zupa-pomidorowa.jpg');">
```

**Dlaczego problem**: Google Images nie indeksuje background-images. Nie mozna uzyc `loading="lazy"`, `<picture>`, WebP, `fetchpriority="high"`.

**Wymagana poprawka**: Zamienic na `<img>` wewnatrz hero:
```html
<section class="hero">
    <img src="/images/hero/fotografia-kulinarna-zupa-pomidorowa.jpg"
         alt="Fotografia kulinarna - zupa pomidorowa"
         class="hero-bg" fetchpriority="high" width="1920" height="1080">
    <div class="hero-overlay"></div>
    <div class="hero-content">...</div>
</section>
```

Dodac CSS:
```css
.hero { position: relative; overflow: hidden; }
.hero-bg { position: absolute; inset: 0; width: 100%; height: 100%; object-fit: cover; z-index: -1; }
.hero-overlay { position: absolute; inset: 0; background: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.3)); }
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/css/style.css` (dodac style hero-bg i hero-overlay)
- Wszystkie 14 plikow HTML (zamienic inline style na `<img>`)

---

### Issue 5.2 - Obrazki nie maja atrybutow width/height
**Severity**: WAZNE
**Checklist ref**: 5.2

**Stan obecny**: Zweryfikowano - **0 tagow `<img>` w calym codebase ma atrybuty `width` i `height`**. Strona glowna ma 10 obrazkow, portfolio 10 - wszystkie bez wymiarow. To powoduje CLS (Cumulative Layout Shift).

**Wymagana poprawka**: Dodac `width` i `height` do KAZDEGO tagu `<img>`. Przyklad:
```html
PRZED: <img src="..." alt="..." style="width: 100%; height: 100%; object-fit: cover;">
PO:    <img src="..." alt="..." width="800" height="600" style="width: 100%; height: 100%; object-fit: cover;">
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (10 tagow `<img>`)
- `/Users/lkaczmarek/Desktop/new-malecphoto/portfolio/index.html` (10 tagow `<img>`)
- Wszystkie inne strony z obrazkami

---

### Issue 5.3 - Brak lazy loading na obrazkach
**Severity**: WAZNE
**Checklist ref**: 5.3

**Stan obecny**: Zweryfikowano - **0 wystapien `loading="lazy"` w calym codebase**. W JS istnieje custom lazy loading observer dla `img[data-src]`, ale ZADEN obrazek nie uzywa `data-src` - wszystkie uzywaja standardowego `src`.

**Wymagana poprawka**: Dodac `loading="lazy"` do WSZYSTKICH obrazkow OPROCZ hero (above-the-fold):
```html
<!-- Hero - NIE lazy loadowac -->
<img src="hero.jpg" alt="..." fetchpriority="high">

<!-- Ponizej fold - lazy loadowac -->
<img src="gallery.jpg" alt="..." loading="lazy">
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (6 obrazkow galerii + 4 karty)
- `/Users/lkaczmarek/Desktop/new-malecphoto/portfolio/index.html` (10 obrazkow)

---

### Issue 5.1 - Obrazki tylko w formacie JPG
**Severity**: WAZNE
**Checklist ref**: 5.1 / 12.2

**Stan obecny**: Wszystkie obrazki na stronie to pliki JPG. Zweryfikowano katalogi:
- `/images/hero/` - 3 pliki JPG
- `/images/gallery/` - 6 plikow JPG
- `/images/portfolio/` - 7 plikow JPG
- `/images/placeholder/` - 0 plikow (PUSTY)

Brak WebP ani AVIF.

**Wymagana poprawka**:
1. Skonwertowac wszystkie JPG do WebP (i opcjonalnie AVIF)
2. Uzyc elementu `<picture>` z fallbackiem:
```html
<picture>
    <source srcset="/images/gallery/kawa-mrozona-lifestyle.webp" type="image/webp">
    <img src="/images/gallery/kawa-mrozona-lifestyle.jpg" alt="..." loading="lazy" width="600" height="400">
</picture>
```

**Pliki do zmiany**:
- Wygenerowac wersje WebP dla wszystkich JPG (16 plikow)
- Zaktualizowac tagi `<img>` w plikach HTML

---

### Issue 5.4 - Strona kontakt nie ma preconnect dla Google Fonts
**Severity**: WAZNE
**Checklist ref**: 5.4

**Stan obecny**: `/Users/lkaczmarek/Desktop/new-malecphoto/kontakt/index.html` (linia 10) laduje Google Fonts BEZ tagow preconnect:
```html
<link href="https://fonts.googleapis.com/css2?family=..." rel="stylesheet">
```
Brakuje:
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
```

Takze `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-warszawa/index.html` (linia 10) nie ma preconnect.

Inne strony maja te tagi poprawnie.

**Wymagana poprawka**: Dodac PRZED liniem z Google Fonts:
```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/kontakt/index.html` (dodac przed linia 10)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-warszawa/index.html` (dodac przed linia 10)

---

### Issue 12.3 - Brak srcset i sizes
**Severity**: WAZNE
**Checklist ref**: 12.3

**Stan obecny**: Zaden obrazek nie ma atrybutu `srcset` ani `sizes`. Telefon laduje ten sam duzy obrazek co desktop.

**Wymagana poprawka**: Przygotowac rozne rozmiary i uzyc responsive images:
```html
<img
    src="/images/gallery/kawa-mrozona-400.jpg"
    srcset="/images/gallery/kawa-mrozona-400.jpg 400w,
            /images/gallery/kawa-mrozona-800.jpg 800w,
            /images/gallery/kawa-mrozona-1200.jpg 1200w"
    sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 600px"
    alt="..." loading="lazy" width="800" height="600">
```

**Pliki do zmiany**: Wygenerowac rozne rozmiary obrazkow + zaktualizowac HTML

---

### Issue 12.5 - Duplikaty obrazkow miedzy gallery i portfolio
**Severity**: ZALECANE
**Checklist ref**: 12.5

**Stan obecny**: Te same pliki istnieja w obu katalogach:
- `/images/gallery/` zawiera: `ciasteczka-czekoladowe-kawa.jpg`, `deser-maliny-crumble.jpg`, `kawa-mrozona-lifestyle.jpg`, `pudding-chia-truskawki.jpg`, `salatka-tofu-zdrowe-jedzenie.jpg`, `sniadanie-owsianka-borowki.jpg`
- `/images/portfolio/` zawiera: `ciasteczka-czekoladowe-kawa.jpg`, `deser-maliny-crumble.jpg`, `kawa-mrozona-lifestyle.jpg`, `pudding-chia-truskawki.jpg`, `salatka-tofu-zdrowe-jedzenie.jpg`, `sniadanie-owsianka-borowki.jpg` + `fotografia-produktowa-melon.jpg`

5 plikow jest identycznych w obu katalogach.

**Wymagana poprawka**: Uzyc jednego katalogu i odwolywac sie do niego z roznych stron.

**Pliki do zmiany**: Wybrac jeden katalog (np. `/images/portfolio/`), usunac duplikaty z drugiego, zaktualizowac referencje w HTML.

---

### Issue 5.6 - Brak preload dla krytycznych zasobow
**Severity**: ZALECANE
**Checklist ref**: 5.6

**Stan obecny**: Zaden plik nie uzywa `<link rel="preload">` dla obrazka hero (LCP element).

**Wymagana poprawka**: Dodac na stronie glownej:
```html
<link rel="preload" as="image" href="/images/hero/fotografia-kulinarna-zupa-pomidorowa.jpg">
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (dodac do `<head>`)

---

### Issue 5.5 - CSS i JS nie sa minifikowane
**Severity**: ZALECANE
**Checklist ref**: 5.5

**Stan obecny**: Plik `/Users/lkaczmarek/Desktop/new-malecphoto/css/style.css` (1818 linii) i `/Users/lkaczmarek/Desktop/new-malecphoto/js/main.js` (443 linie) nie sa minifikowane - zawieraja komentarze, biale znaki, formatowanie.

**Wymagana poprawka**: Stworzyc minifikowane wersje:
```bash
npx cssnano css/style.css > css/style.min.css
npx terser js/main.js -o js/main.min.js
```
I zmienic referencje w HTML z `style.css` na `style.min.css` i `main.js` na `main.min.js`.

**Pliki do zmiany**:
- NOWY: `/Users/lkaczmarek/Desktop/new-malecphoto/css/style.min.css`
- NOWY: `/Users/lkaczmarek/Desktop/new-malecphoto/js/main.min.js`
- Wszystkie 14 plikow HTML (zmiana referencji)

---

## FAZA 4 - LOCAL SEO

---

### Issue 8.1 - NAP konsystencja
**Severity**: WAZNE (czesciowo off-page)
**Checklist ref**: 8.1

**Stan obecny**: Dane kontaktowe na stronie sa spojne (email, telefon, miasto). Brak pelnego adresu (ulica, kod pocztowy). Obecne dane w kodzie:
- Nazwa: Kasia Malec Photography
- Email: kasiamalecphoto@gmail.com
- Tel: +48 609 228 085
- Lokalizacja: Lodz, Polska

Niespojnosc: Niektore footer-y maja email/tel jako linki `<a>` (index.html, kontakt, warszawa), inne maja tekst bez linkow (o-mnie, cennik, portfolio, lodz, i inne uslugi).

**Wymagana poprawka**: Ujednolicic footer na WSZYSTKICH stronach - email i telefon powinny byc zawsze linkami:
```html
<p>E-mail: <a href="mailto:kasiamalecphoto@gmail.com">kasiamalecphoto@gmail.com</a><br>
Tel: <a href="tel:+48609228085">+48 609 228 085</a><br>
<a href="https://maps.app.goo.gl/JeP3frKNQ164ruku7" target="_blank" rel="noopener">Lodz, Polska</a></p>
```

**Pliki do zmiany**: 11 plikow, ktore maja footer bez linkow w kontakcie:
- `/Users/lkaczmarek/Desktop/new-malecphoto/o-mnie/index.html` (linia 226)
- `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html` (linia 377)
- `/Users/lkaczmarek/Desktop/new-malecphoto/portfolio/index.html` (linia 198)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna/index.html` (linia 313)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-lodz/index.html` (linia 209)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-produktowa-zywnosci/index.html` (linia 288)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/dla-restauracji-i-kawiarni/index.html` (linia 196)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/dla-marek-i-agencji/index.html` (linia 222)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/szkolenia-fotografia-kulinarna/index.html` (linia 307)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/opracowanie-przepisow/index.html` (linia 263)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/stylizacja-zywnosci/index.html` (linia 266)

---

### Issue 8.3 - Strony lokalne (Lodz, Warszawa) - off-page
**Severity**: WAZNE
**Checklist ref**: 8.3

**Stan obecny**: Strony lokalne istnieja i maja unikatowa tresc. Schema na stronie lodzkiej ma `areaServed` z `City: Lodz`. Strona warszawska NIE MA schema (brakuje `application/ld+json`). Zweryfikowano - `fotografia-kulinarna-warszawa/index.html` nie ma schema w `<head>`.

**Wymagana poprawka**: Dodac schema do strony warszawskiej:
```html
<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "Service",
    "name": "Fotografia kulinarna w Warszawie",
    "provider": {
        "@type": "LocalBusiness",
        "name": "Kasia Malec Photography",
        "address": {
            "@type": "PostalAddress",
            "addressLocality": "Lodz",
            "addressCountry": "PL"
        }
    },
    "areaServed": {
        "@type": "City",
        "name": "Warszawa"
    }
}
</script>
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-warszawa/index.html` (dodac do `<head>`)

---

### Issue 8.4 - Lokalne linki i cytowania
**Severity**: ZALECANE
**Checklist ref**: 8.4

**Stan obecny**: Off-page, nie implementowalne w kodzie (Panorama Firm, PKT.pl, Google Maps, fotografowie.pl).

---

## FAZA 5 - GOOGLE IMAGES I CONTENT

---

### Issue 10.1 - sitemap.xml brak `<lastmod>` i brak image sitemap
**Severity**: WAZNE
**Checklist ref**: 10.1 / 15.1

**Stan obecny**: `/Users/lkaczmarek/Desktop/new-malecphoto/sitemap.xml` zawiera 14 stron, ale:
1. Brak tagow `<lastmod>` (jedyny tag uzywany przez Google obok `<loc>`)
2. Uzywa `<priority>` i `<changefreq>` ktore Google ignoruje
3. Brak URL dla `/uslugi/` (strona nie istnieje jeszcze - patrz Issue 4.2)
4. Brak image sitemap (wazne dla fotografa!)
5. Brak namespace `xmlns:image`

**Wymagana poprawka**: Zaktualizowac sitemap.xml:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"
        xmlns:image="http://www.google.com/schemas/sitemap-image/1.1">
    <url>
        <loc>https://www.kasiamalecphoto.pl/</loc>
        <lastmod>2026-02-15</lastmod>
        <image:image>
            <image:loc>https://www.kasiamalecphoto.pl/images/hero/fotografia-kulinarna-zupa-pomidorowa.jpg</image:loc>
            <image:title>Fotografia kulinarna - zupa pomidorowa</image:title>
        </image:image>
    </url>
    <!-- ... pozostale URL-e z lastmod i image:image ... -->
</urlset>
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/sitemap.xml`

---

### Issue 4.4 - Brak cross-linkingu miedzy podstronami uslug
**Severity**: WAZNE
**Checklist ref**: 4.4

**Stan obecny**: Zweryfikowano - strony uslug NIE linkuja do powiazanych uslug. Na przyklad:
- `fotografia-kulinarna/index.html` nie linkuje do `stylizacja-zywnosci/` ani `fotografia-produktowa-zywnosci/`
- Strony lokalne (Lodz, Warszawa) nie linkuja do strony ogolnej fotografii kulinarnej ani do siebie nawzajem
- Strona cennika linkuje tylko do kontaktu (CTA), nie do uslug
- Strona portfolio nie linkuje do zadnych uslug (oprocz CTA do kontaktu)

**Wymagana poprawka**: Dodac sekcje "Powiazane uslugi" na kazdej stronie uslugi z linkami do 2-3 najblizszych tematycznie uslug. Przyklad dla `fotografia-kulinarna/`:
```html
<section class="section">
    <div class="container">
        <h2 class="text-center">Powiazane uslugi</h2>
        <div class="cards">
            <div class="card">
                <div class="card-content">
                    <h3>Stylizacja zywnosci</h3>
                    <p>Profesjonalna stylizacja jedzenia do Twoich sesji.</p>
                    <a href="/uslugi/stylizacja-zywnosci/" class="card-link">Dowiedz sie wiecej</a>
                </div>
            </div>
            <div class="card">
                <div class="card-content">
                    <h3>Fotografia produktowa zywnosci</h3>
                    <p>Packshoty i zdjecia lifestyle produktow spozywczych.</p>
                    <a href="/uslugi/fotografia-produktowa-zywnosci/" class="card-link">Dowiedz sie wiecej</a>
                </div>
            </div>
        </div>
    </div>
</section>
```

**Pliki do zmiany**: Wszystkie 9 stron uslug + cennik + portfolio

---

### Issue 7.3 - Menu toggle brak ARIA na podstronach
**Severity**: WAZNE
**Checklist ref**: 7.3

**Stan obecny**: Hamburger menu ma `aria-label="Toggle menu"` TYLKO na stronie glownej (`index.html`, linia 100):
```html
<div class="menu-toggle" aria-label="Toggle menu">
```
Na WSZYSTKICH 13 podstronach brakuje `aria-label`. Przyklad z `o-mnie/index.html` (linia 59):
```html
<div class="menu-toggle">
```

Dodatkowo: `menu-toggle` jest elementem `<div>`, a nie `<button>` (semantycznie niepoprawne). Brak `aria-expanded`.

**Wymagana poprawka**:
1. Zamienic `<div class="menu-toggle">` na `<button class="menu-toggle" aria-label="Otworz menu" aria-expanded="false">` na KAZDEJ stronie
2. Dodac do `main.js` dynamiczna zmiane `aria-expanded`:
```javascript
menuToggle.setAttribute('aria-expanded', navMenu.classList.contains('active'));
```

**Pliki do zmiany**:
- Wszystkie 14 plikow HTML (zmiana `<div class="menu-toggle">` na `<button>`)
- `/Users/lkaczmarek/Desktop/new-malecphoto/js/main.js` (dodac `aria-expanded` toggle)

---

### Issue 7.4 - Dropdown nawigacji brak ARIA
**Severity**: WAZNE
**Checklist ref**: 7.4

**Stan obecny**: Dropdown uslug na ZADNEJ stronie nie ma atrybutow ARIA. Obecny kod:
```html
<li class="nav-dropdown">
    <a href="#" class="nav-link nav-dropdown-toggle">Uslugi</a>
    <ul class="nav-dropdown-menu">
```

**Wymagana poprawka**: Zamienic na:
```html
<li class="nav-dropdown">
    <button class="nav-link nav-dropdown-toggle" aria-expanded="false" aria-haspopup="true">Uslugi</button>
    <ul class="nav-dropdown-menu" role="menu" aria-label="Podstrony uslug">
        <li role="menuitem"><a href="...">Fotografia kulinarna</a></li>
    </ul>
</li>
```

**Pliki do zmiany**: Wszystkie 14 plikow HTML + JS

---

### Issue 11.2 - Social links bez target/rel na niektorych stronach
**Severity**: ZALECANE
**Checklist ref**: 11.2

**Stan obecny**: Social links (Instagram, Facebook) w footer MAJA `target="_blank" rel="noopener"` na stronach: `index.html`, `kontakt/index.html`, `fotografia-kulinarna-warszawa/index.html`. Ale sa BEZ tych atrybutow na pozostalych 11 stronach.

Przyklad BEZ (o-mnie/index.html, linia 202):
```html
<a href="https://www.instagram.com/kasia_malec_photography/" class="social-link" aria-label="Instagram">IG</a>
```
Powinno byc:
```html
<a href="https://www.instagram.com/kasia_malec_photography/" class="social-link" aria-label="Instagram" target="_blank" rel="noopener">IG</a>
```

**Wymagana poprawka**: Dodac `target="_blank" rel="noopener"` do social links na 11 stronach.

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/o-mnie/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/portfolio/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna-lodz/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-produktowa-zywnosci/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/dla-restauracji-i-kawiarni/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/dla-marek-i-agencji/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/szkolenia-fotografia-kulinarna/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/opracowanie-przepisow/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/stylizacja-zywnosci/index.html`

---

### Issue 6.2 - Mobile dropdown sprawdza szerokosc raz
**Severity**: WAZNE
**Checklist ref**: 6.2

**Stan obecny**: `/Users/lkaczmarek/Desktop/new-malecphoto/js/main.js`, linie 51-65:
```javascript
function initDropdownMobile() {
    const dropdowns = document.querySelectorAll('.nav-dropdown');
    if (window.innerWidth <= 768) {
        // ... event listeners dodawane jednorazowo
    }
}
```
Sprawdza `window.innerWidth <= 768` TYLKO RAZ przy ladowaniu. Jesli uzytkownik obroci telefon (z portrait do landscape i z powrotem), dropdown nie bedzie dzialac.

**Wymagana poprawka**: Uzyc event delegation i CSS media queries zamiast jednorazowego sprawdzenia:
```javascript
function initDropdownMobile() {
    document.addEventListener('click', function(e) {
        if (window.innerWidth > 768) return;
        const toggle = e.target.closest('.nav-dropdown-toggle');
        if (toggle) {
            e.preventDefault();
            toggle.closest('.nav-dropdown').classList.toggle('active');
        }
    });
}
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/js/main.js` (linie 51-65)

---

### Issue 3.3 - Brak FAQPage schema na stronach z FAQ
**Severity**: ZALECANE
**Checklist ref**: 3.3

**Stan obecny**: Strony z sekcjami FAQ (akordeonem z klasa `.faq-question`) nie maja FAQPage schema:
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna/index.html` (7 pytan FAQ)
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/stylizacja-zywnosci/index.html` (7 pytan w FAQ-like accordion)
- `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html` (6 pytan FAQ)

**Wymagana poprawka**: Dodac schema FAQPage na kazdej stronie z FAQ. Przyklad dla cennika:
```html
<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "FAQPage",
    "mainEntity": [
        {
            "@type": "Question",
            "name": "Dlaczego nie ma sztywnego cennika?",
            "acceptedAnswer": {
                "@type": "Answer",
                "text": "Kazdy projekt fotograficzny jest inny..."
            }
        }
    ]
}
</script>
```

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/fotografia-kulinarna/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/uslugi/stylizacja-zywnosci/index.html`
- `/Users/lkaczmarek/Desktop/new-malecphoto/cennik-fotografia-kulinarna/index.html`

---

### Issue 3.5 - Brak Review/AggregateRating schema
**Severity**: ZALECANE
**Checklist ref**: 3.5

**Stan obecny**: Strona glowna (`index.html`, linie 276-289) i strona szkolen (`szkolenia-fotografia-kulinarna/index.html`, linie 231-247) maja opinie klientow (Chata Wuja Toma, Pizzeria Oliwa & Oregano), ale nie maja schema Review.

**Wymagana poprawka**: Dodac schema Review w istniejacym bloku ProfessionalService na stronie glownej.

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/index.html` (rozbudowac istniejaca schema)

---

### Issue 15.2 - Brak ImageObject schema na portfolio
**Severity**: ZALECANE
**Checklist ref**: 15.2

**Stan obecny**: Strona portfolio nie ma danych strukturalnych dla obrazkow.

**Wymagana poprawka**: Dodac schema ImageGallery na stronie portfolio.

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/portfolio/index.html`

---

### Issue 14.5 - Plik OPEN-SITE.html
**Severity**: ZALECANE
**Checklist ref**: 14.5

**Stan obecny**: Istnieje plik `/Users/lkaczmarek/Desktop/new-malecphoto/OPEN-SITE.html` w katalogu glownym. Jesli to plik pomocniczy do otwierania strony w przegladarce, moze zostac zaindeksowany.

**Wymagana poprawka**: Usunac plik z repozytorium LUB dodac `<meta name="robots" content="noindex">` do pliku.

**Pliki do zmiany**:
- `/Users/lkaczmarek/Desktop/new-malecphoto/OPEN-SITE.html`

---

### Issue 10.3 - Brak HTML sitemap
**Severity**: ZALECANE
**Checklist ref**: 10.3

**Stan obecny**: Brak widocznej mapy strony w HTML. Mozna dodac do strony 404 lub do footer.

**Wymagana poprawka**: Dodac liste linkow do wszystkich stron w footer lub na stronie 404.

---

### Issue 2.3 - Meta keywords
**Severity**: ZALECANE
**Checklist ref**: 2.3

**Stan obecny**: Wiekszlosc stron ma `<meta name="keywords">`. Google ignoruje je od 2009 roku, ale ujawniaja strategii keyword.

**Wymagana poprawka**: Mozna usunac ze wszystkich stron, zeby nie ujawniac strategii keywordowej konkurencji. Nie ma to wplywu na SEO.

---

## FAZA 6 - DLUGOTERMINOWO

---

### Issue 13.2 - Brak hreflang
**Severity**: ZALECANE
**Checklist ref**: 13.2

**Stan obecny**: Dla strony TYLKO w jezyku polskim, hreflang nie jest krytycznie potrzebny. Staje sie wazny jesli planowana jest wersja angielska.

---

### Issue 17.1 - Brak bloga
**Severity**: WAZNE (dlugoterminowo)
**Checklist ref**: 17.1

**Stan obecny**: Strona nie ma bloga ani sekcji z artykulami. Po zoptymalizowaniu 14 podstron, mozliwosci dalszego wzrostu organicznego sa ograniczone bez nowych tresci.

**Wymagana poprawka**: Off-page / content strategy. Dodac sekcje `/blog/` z artykulami (1-2 miesiecznie, 800-1500 slow).

---

## ITEMIZOWANE WERYFIKACJE CHECKLISTY

### Elementy OK (bez zmian wymaganych):

| Checklist ref | Element | Status |
|---------------|---------|--------|
| 2.4 | Canonical URL-e | OK - wskazuja na kasiamalecphoto.pl, koncza sie `/` |
| 6.1 | Viewport meta tag | OK - wszystkie strony maja `width=device-width, initial-scale=1.0` |
| 7.1 | Skip-to-content link | OK - wszystkie strony maja "Przejdz do tresci" |
| 7.2 | Alt tagi na obrazkach | OK - wszystkie `<img>` maja opisowe alt tagi |
| 7.6 | Semantyczny HTML | OK - `<header>`, `<main>`, `<footer>`, `<nav>`, `<section>` |
| 9.1 | Hierarchia naglowkow | OK - kazda strona ma dokladnie 1 `<h1>`, logiczna hierarchia |
| 11.1 | HTTPS | OK - GitHub Pages zapewnia HTTPS |
| 12.1 | Nazwy plikow obrazkow | OK - opisowe, z myslnikami |
| 13.1 | Atrybut lang | OK - `<html lang="pl">` na wszystkich stronach |
| 4.3 | Struktura URL | OK - polskojezyczne, slowa kluczowe, trailing slash |

### Elementy off-page (nie implementowalne w kodzie):

| Checklist ref | Element |
|---------------|---------|
| 8.2 | Google Business Profile |
| 8.4 | Lokalne linki i cytowania |
| 14.1 | Google Search Console |
| 12.4 | Kompresja obrazkow (wymaga narzedzi) |
| 6.3 | Dotykowe cele / tap targets (wymaga testowania) |
| 6.4 | Testowanie responsywnosci (wymaga testowania) |
| 7.5 | Kontrast kolorow (wymaga testowania) |
| 16.1 | INP metric (wymaga testowania) |

---

## PRIORYTETOWA KOLEJNOSC WDROZENIA

### Dzien 1 (KRYTYCZNE):
1. Usunac `noindex, nofollow` ze WSZYSTKICH stron (Issue 1.2)
2. Naprawic robots.txt (Issue 1.1)
3. Dodac brakujace obrazki hero (Issue 14.3)

### Tydzien 1:
4. Naprawic sciezki linkow `/malec-photo-website/` (Issue 4.1) - po podlaczeniu domeny
5. Dodac Open Graph na podstrony (Issue 2.5)
6. Dodac preconnect na kontakt i warszawa (Issue 5.4)
7. Naprawic schema cennika (Issue 3.4)
8. Dodac schema na stronie warszawskiej (Issue 8.3)

### Tydzien 2:
9. Stworzyc strone `/uslugi/` hub (Issue 4.2)
10. Stworzyc strone 404 (Issue 10.2)
11. Rozbudowac schema na stronie glownej (Issue 3.1)
12. Dodac BreadcrumbList schema (Issue 3.2)
13. Dodac favicon na podstrony (Issue 2.6)
14. Naprawic ARIA na menu (Issue 7.3, 7.4)
15. Dodac analityke GA4 (Issue 14.2)

### Tydzien 3-4:
16. Dodac width/height do obrazkow (Issue 5.2)
17. Dodac lazy loading (Issue 5.3)
18. Zamienic hero na `<img>` (Issue 5.7)
19. Skonwertowac obrazki do WebP (Issue 5.1)
20. Zaktualizowac sitemap z lastmod i image sitemap (Issue 10.1)
21. Dodac cross-linking miedzy uslugami (Issue 4.4)
22. Naprawic dropdown mobile JS (Issue 6.2)

---

Koniec raportu.
