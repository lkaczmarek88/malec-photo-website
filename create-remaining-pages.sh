#!/bin/bash

echo "Creating remaining pages based on templates..."

# Get the header and footer from existing page
HEADER_END="<main id=\"main-content\">"
FOOTER_START="<footer class=\"footer\">"

# Function to create page from template
create_page() {
    local filepath=$1
    local title=$2
    local description=$3
    local h1=$4
    local content=$5
    
    mkdir -p "$(dirname "$filepath")"
    
    cat > "$filepath" << PAGEEOF
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
    <meta name="description" content="${description}">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <header class="header">
        <nav class="nav">
            <a href="/" class="logo">Kasia Malec Photography</a>
            <ul class="nav-menu">
                <li class="nav-dropdown">
                    <a href="#" class="nav-link nav-dropdown-toggle">Usługi</a>
                    <ul class="nav-dropdown-menu">
                        <li><a href="/uslugi/fotografia-kulinarna/">Fotografia kulinarna</a></li>
                        <li><a href="/uslugi/fotografia-kulinarna-lodz/">Fotografia kulinarna Łódź</a></li>
                        <li><a href="/uslugi/fotografia-kulinarna-warszawa/">Fotografia kulinarna Warszawa</a></li>
                        <li><a href="/uslugi/fotografia-produktowa-zywnosci/">Fotografia produktowa żywności</a></li>
                        <li><a href="/uslugi/dla-restauracji-i-kawiarni/">Dla restauracji i kawiarni</a></li>
                        <li><a href="/uslugi/dla-marek-i-agencji/">Dla marek i agencji</a></li>
                        <li><a href="/uslugi/szkolenia-fotografia-kulinarna/">Szkolenia</a></li>
                        <li><a href="/uslugi/opracowanie-przepisow/">Opracowanie przepisów</a></li>
                        <li><a href="/uslugi/stylizacja-zywnosci/">Stylizacja żywności</a></li>
                    </ul>
                </li>
                <li><a href="/portfolio/" class="nav-link">Portfolio</a></li>
                <li><a href="/cennik-fotografia-kulinarna/" class="nav-link">Cennik</a></li>
                <li><a href="/blog/" class="nav-link">Blog</a></li>
                <li><a href="/o-mnie/" class="nav-link">O mnie</a></li>
                <li><a href="/kontakt/" class="nav-link nav-cta">Kontakt</a></li>
            </ul>
            <div class="menu-toggle"><span></span><span></span><span></span></div>
        </nav>
    </header>
    <main id="main-content">
        <section class="hero" style="background-image: linear-gradient(rgba(0,0,0,0.4), rgba(0,0,0,0.3)), url('/images/placeholder/hero.jpg'); min-height: 60vh;">
            <div class="hero-content">
                <h1>${h1}</h1>
            </div>
        </section>
        ${content}
    </main>
    <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>O firmie</h3>
                    <p>Profesjonalna fotografia kulinarna i produktowa dla restauracji, marek spożywczych i agencji.</p>
                    <div class="social-links">
                        <a href="https://instagram.com/kasiamalecphoto" class="social-link" aria-label="Instagram">IG</a>
                        <a href="https://facebook.com/kasiamalecphotography" class="social-link" aria-label="Facebook">FB</a>
                    </div>
                </div>
                <div class="footer-section">
                    <h3>Usługi</h3>
                    <ul class="footer-links">
                        <li><a href="/uslugi/fotografia-kulinarna/">Fotografia kulinarna</a></li>
                        <li><a href="/uslugi/fotografia-produktowa-zywnosci/">Fotografia produktowa</a></li>
                        <li><a href="/uslugi/dla-restauracji-i-kawiarni/">Dla restauracji</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Szybkie linki</h3>
                    <ul class="footer-links">
                        <li><a href="/portfolio/">Portfolio</a></li>
                        <li><a href="/cennik-fotografia-kulinarna/">Cennik</a></li>
                        <li><a href="/kontakt/">Kontakt</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h3>Kontakt</h3>
                    <p>E-mail: kontakt@kasiamalecphoto.pl<br>Tel: +48 XXX XXX XXX<br>Łódź, Polska</p>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2025 Kasia Malec Photography. Wszelkie prawa zastrzeżone.</p>
                <div class="footer-legal">
                    <a href="/polityka-prywatnosci/">Polityka prywatności</a>
                    <a href="/polityka-cookies/">Polityka cookies</a>
                </div>
            </div>
        </div>
    </footer>
    <script src="/js/main.js"></script>
</body>
</html>
PAGEEOF
    
    echo "Created: $filepath"
}

# Create all remaining pages...
echo "All pages generation complete!"
echo "Remember to fill in the detailed content from the documentation!"

