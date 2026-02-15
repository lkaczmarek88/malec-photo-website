# Checklist uruchomienia strony na produkcji

Wykonaj te kroki gdy strona ma docelowe zdjecia i wlasna domene (kasiamalecphoto.pl).

---

## 1. Odblokowanie indeksowania

### 1.1 Meta robots na wszystkich stronach HTML
Na KAZDEJ stronie HTML zamienic:
```html
<meta name="robots" content="noindex, nofollow">
```
na:
```html
<meta name="robots" content="index, follow">
```

Dotyczy plikow (16 stron):
- `index.html` (UWAGA: ma duplikat na linii 6 - usunac linie 6, zostawic ta z "index, follow")
- `o-mnie/index.html`
- `kontakt/index.html`
- `portfolio/index.html`
- `cennik-fotografia-kulinarna/index.html`
- `uslugi/index.html`
- `uslugi/fotografia-kulinarna/index.html`
- `uslugi/fotografia-kulinarna-lodz/index.html`
- `uslugi/fotografia-kulinarna-warszawa/index.html`
- `uslugi/fotografia-produktowa-zywnosci/index.html`
- `uslugi/dla-restauracji-i-kawiarni/index.html`
- `uslugi/dla-marek-i-agencji/index.html`
- `uslugi/szkolenia-fotografia-kulinarna/index.html`
- `uslugi/opracowanie-przepisow/index.html`
- `uslugi/stylizacja-zywnosci/index.html`

NIE zmieniaj na `404.html` - ta strona powinna miec `noindex, follow`.

### 1.2 robots.txt
Zamienic zawartosc pliku `robots.txt` na:
```
User-agent: *
Disallow:

Sitemap: https://www.kasiamalecphoto.pl/sitemap.xml
```

---

## 2. Zmiana sciezek z GitHub Pages na wlasna domene

We WSZYSTKICH plikach HTML zamienic prefiks `/malec-photo-website/` na `/`.

Dotyczy:
- Linkow w nawigacji (nav-menu)
- Linkow w stopce (footer-links)
- Przyciskow CTA (btn-primary, btn-secondary)
- Sciezek do obrazkow (`src="/malec-photo-website/images/..."`)
- Sciezek do CSS (`href="/malec-photo-website/css/style.css"`)
- Sciezek do JS (`src="/malec-photo-website/js/main.js"`)
- Logo (`href="/malec-photo-website/"`)

Lacznie okolo 400+ wystapien w 16 plikach HTML.

---

## 3. Aktualizacja sitemap.xml

- Upewnic sie, ze URL-e w sitemap pasuja do nowej domeny (juz sa na kasiamalecphoto.pl)
- Zaktualizowac daty `<lastmod>` na date uruchomienia
- Sprawdzic, czy wszystkie strony sa na liscie (wlacznie z /uslugi/)

---

## 4. Konfiguracja domeny

- Podlaczyc domene kasiamalecphoto.pl do hostingu
- Ustawic certyfikat SSL (HTTPS)
- Skonfigurowac redirect z HTTP na HTTPS
- Skonfigurowac redirect z kasiamalecphoto.pl na www.kasiamalecphoto.pl (lub odwrotnie - jeden kierunek)

---

## 5. Google Search Console

1. Wejsc na https://search.google.com/search-console
2. Dodac wlasciwosc (property) - domene kasiamalecphoto.pl
3. Zweryfikowac domene (DNS TXT record lub plik HTML)
4. Wyslac sitemap: wpisac `sitemap.xml` w zakladce Sitemaps
5. Uzyc "Sprawdz URL" dla strony glownej - poprosic o indeksowanie
6. Monitorowac bledy indeksowania w ciagu pierwszych 2 tygodni

---

## 6. Analityka

Dodac kod sledzenia na wszystkich stronach (przed `</head>`):
- Google Analytics 4 (GA4) - darmowe, pelne dane
- LUB Plausible.io / Fathom - platne, ale privacy-friendly

Ustawic cele/konwersje:
- Klikniecie w email (kasiamalecphoto@gmail.com)
- Klikniecie w telefon (+48 609 228 085)
- Wyslanie formularza kontaktowego
- Odwiedziny strony kontakt

---

## 7. Google Business Profile

1. Stworzyc profil na https://business.google.com
2. Kategoria glowna: "Fotograf"
3. Dodac zdjecia portfolio
4. Dodac godziny pracy, link do strony, dane kontaktowe
5. Poprosic klientow o recenzje

---

## 8. Weryfikacja po uruchomieniu

Po wykonaniu powyzszych krokow sprawdzic:

- [ ] Czy strona otwiera sie pod https://www.kasiamalecphoto.pl/
- [ ] Czy HTTP redirectuje na HTTPS
- [ ] Czy wszystkie linki wewnetrzne dzialaja (nie ma 404)
- [ ] Czy obrazki sie laduja poprawnie
- [ ] Czy nawigacja mobilna dziala
- [ ] Czy Google Search Console nie pokazuje bledow
- [ ] Czy sitemap.xml jest dostepny pod https://www.kasiamalecphoto.pl/sitemap.xml
- [ ] Czy robots.txt jest dostepny i zezwala na crawling
- [ ] Czy OG tagi dzialaja (wkleic URL na Facebook/LinkedIn i sprawdzic podglad)
- [ ] Czy schema jest poprawna (sprawdzic na https://validator.schema.org)
- [ ] Czy PageSpeed Insights daje wynik >80 (sprawdzic na https://pagespeed.web.dev)

---

## Opcjonalnie (po uruchomieniu)

- Konwersja obrazkow do WebP z fallbackiem JPG (element `<picture>`)
- Self-hosting fontow Google (eliminacja zewnetrznego zapytania)
- Minifikacja CSS i JS
- Dodanie bloga z tresciami SEO (long-tail keywords)
- Linkowanie w polskich katalogach firm (Panorama Firm, PKT.pl)

---

Ostatnia aktualizacja: 2026-02-15
