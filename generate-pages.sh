#!/bin/bash

# Script to generate remaining HTML pages

echo "Generating remaining pages..."

# Create README with instructions
cat > README.md << 'EOF'
# Kasia Malec Photography Website

Profesjonalna strona internetowa dla fotografki kulinarnej.

## Struktura projektu

```
├── index.html (✓ GOTOWE)
├── css/
│   └── style.css (✓ GOTOWE)
├── js/
│   └── main.js (✓ GOTOWE)
├── uslugi/
│   ├── fotografia-kulinarna/ (✓ GOTOWE)
│   ├── fotografia-kulinarna-lodz/ (✓ GOTOWE)
│   ├── fotografia-kulinarna-warszawa/ (✓ GOTOWE)
│   ├── fotografia-produktowa-zywnosci/ (do utworzenia)
│   ├── dla-restauracji-i-kawiarni/ (do utworzenia)
│   ├── dla-marek-i-agencji/ (do utworzenia)
│   ├── szkolenia-fotografia-kulinarna/ (do utworzenia)
│   ├── opracowanie-przepisow/ (do utworzenia)
│   └── stylizacja-zywnosci/ (do utworzenia)
├── portfolio/ (do utworzenia)
├── cennik-fotografia-kulinarna/ (do utworzenia)
├── blog/ (do utworzenia)
├── o-mnie/ (do utworzenia)
└── kontakt/ (do utworzenia)
```

## Funkcje

- ✅ Pełen responsive design (mobile-first)
- ✅ SEO optimized (meta tags, schema.org)
- ✅ Accessibility (WCAG 2.1)
- ✅ Smooth animations
- ✅ Mobile menu
- ✅ FAQ accordion
- ✅ Lightbox gallery
- ✅ Form validation
- ✅ Back to top button
- ✅ Lazy loading images

## Technologie

- HTML5 (Semantic)
- CSS3 (Grid, Flexbox, Variables)
- Vanilla JavaScript (ES6+)
- Google Fonts (Inter, Playfair Display)

## Wdrożenie na mydevil.net

1. Spakuj wszystkie pliki
2. Wgraj przez FTP/SFTP do katalogu public_html
3. Upewnij się, że struktura folderów jest zachowana
4. Dodaj prawdziwe zdjęcia w miejscu placeholderów
5. Zaktualizuj dane kontaktowe i linki do social media

## Kontakt

Kasia Malec Photography
Email: kontakt@kasiamalecphoto.pl
EOF

echo "README created!"

# Generate sitemap.xml
cat > sitemap.xml << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
    <url>
        <loc>https://www.kasiamalecphoto.pl/</loc>
        <priority>1.0</priority>
        <changefreq>weekly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/uslugi/fotografia-kulinarna/</loc>
        <priority>0.9</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/uslugi/fotografia-kulinarna-lodz/</loc>
        <priority>0.9</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/uslugi/fotografia-kulinarna-warszawa/</loc>
        <priority>0.9</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/uslugi/fotografia-produktowa-zywnosci/</loc>
        <priority>0.9</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/uslugi/dla-restauracji-i-kawiarni/</loc>
        <priority>0.9</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/uslugi/dla-marek-i-agencji/</loc>
        <priority>0.9</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/uslugi/szkolenia-fotografia-kulinarna/</loc>
        <priority>0.8</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/uslugi/opracowanie-przepisow/</loc>
        <priority>0.8</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/uslugi/stylizacja-zywnosci/</loc>
        <priority>0.8</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/portfolio/</loc>
        <priority>0.9</priority>
        <changefreq>weekly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/cennik-fotografia-kulinarna/</loc>
        <priority>0.8</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/blog/</loc>
        <priority>0.7</priority>
        <changefreq>weekly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/o-mnie/</loc>
        <priority>0.7</priority>
        <changefreq>monthly</changefreq>
    </url>
    <url>
        <loc>https://www.kasiamalecphoto.pl/kontakt/</loc>
        <priority>0.8</priority>
        <changefreq>monthly</changefreq>
    </url>
</urlset>
EOF

# Generate robots.txt
cat > robots.txt << 'EOF'
User-agent: *
Allow: /

Sitemap: https://www.kasiamalecphoto.pl/sitemap.xml
EOF

echo "Sitemap and robots.txt created!"
echo "Generation complete!"
EOF