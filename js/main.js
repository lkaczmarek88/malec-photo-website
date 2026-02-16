/**
 * KASIA MALEC PHOTOGRAPHY
 * Main JavaScript File - Premium & Sophisticated Edition
 */

// ===================================
// DOCUMENT READY
// ===================================
document.addEventListener('DOMContentLoaded', function() {
    initMobileMenu();
    initScrollAnimations();
    initHeaderScroll();
    initFAQ();
    initLightbox();
    initBackToTop();
    initPortfolioFilter();
    initSmoothScroll();
    initFormValidation();
    initDropdownMobile();
});

// ===================================
// MOBILE MENU TOGGLE
// ===================================
function initMobileMenu() {
    const menuToggle = document.querySelector('.menu-toggle');
    const navMenu = document.querySelector('.nav-menu');

    if (menuToggle && navMenu) {
        menuToggle.addEventListener('click', function() {
            menuToggle.classList.toggle('active');
            navMenu.classList.toggle('active');
            var isOpen = navMenu.classList.contains('active');
            document.body.style.overflow = isOpen ? 'hidden' : '';
            menuToggle.setAttribute('aria-expanded', isOpen);
            menuToggle.setAttribute('aria-label', isOpen ? 'Zamknij menu' : 'Otwórz menu');
        });

        // Close menu when clicking on a link
        const navLinks = navMenu.querySelectorAll('.nav-link');
        navLinks.forEach(link => {
            link.addEventListener('click', function() {
                menuToggle.classList.remove('active');
                navMenu.classList.remove('active');
                document.body.style.overflow = '';
                menuToggle.setAttribute('aria-expanded', 'false');
                menuToggle.setAttribute('aria-label', 'Otwórz menu');
            });
        });
    }
}

// ===================================
// DROPDOWN MENU ON MOBILE
// ===================================
function initDropdownMobile() {
    document.addEventListener('click', function(e) {
        if (window.innerWidth > 768) return;
        var toggle = e.target.closest('.nav-dropdown-toggle');
        if (toggle) {
            e.preventDefault();
            var dropdown = toggle.closest('.nav-dropdown');
            dropdown.classList.toggle('active');
            var isOpen = dropdown.classList.contains('active');
            toggle.setAttribute('aria-expanded', isOpen);
        }
    });
}

// ===================================
// SCROLL ANIMATIONS
// ===================================
function initScrollAnimations() {
    const animatedElements = document.querySelectorAll('.animate-on-scroll');

    if (animatedElements.length === 0) return;

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('animated');
                observer.unobserve(entry.target);
            }
        });
    }, {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    });

    animatedElements.forEach(element => {
        observer.observe(element);
    });
}

// ===================================
// HEADER SCROLL EFFECT
// ===================================
function initHeaderScroll() {
    const header = document.querySelector('.header');
    if (!header) return;

    let lastScroll = 0;

    window.addEventListener('scroll', () => {
        const currentScroll = window.pageYOffset;

        if (currentScroll > 100) {
            header.classList.add('scrolled');
        } else {
            header.classList.remove('scrolled');
        }

        lastScroll = currentScroll;
    });
}

// ===================================
// FAQ ACCORDION
// ===================================
function initFAQ() {
    const faqQuestions = document.querySelectorAll('.faq-question');

    faqQuestions.forEach(question => {
        question.addEventListener('click', function() {
            const item = this.parentElement;
            const answer = item.querySelector('.faq-answer');
            const isActive = this.classList.contains('active');

            // Close all other items
            faqQuestions.forEach(q => {
                q.classList.remove('active');
                q.parentElement.querySelector('.faq-answer').style.maxHeight = null;
            });

            // Toggle current item
            if (!isActive) {
                this.classList.add('active');
                answer.style.maxHeight = answer.scrollHeight + 'px';
            }
        });
    });
}

// ===================================
// LIGHTBOX FOR GALLERY
// ===================================
function initLightbox() {
    // Create lightbox element
    const lightbox = document.createElement('div');
    lightbox.className = 'lightbox';
    lightbox.innerHTML = `
        <div class="lightbox-content">
            <button class="lightbox-close" aria-label="Close">&times;</button>
            <img src="" alt="">
        </div>
    `;
    document.body.appendChild(lightbox);

    const lightboxImg = lightbox.querySelector('img');
    const closeBtn = lightbox.querySelector('.lightbox-close');

    // Gallery items click
    const galleryItems = document.querySelectorAll('.gallery-item');
    galleryItems.forEach(item => {
        item.addEventListener('click', function() {
            const img = this.querySelector('img');
            if (img) {
                // Prefer WebP source from <picture> element
                const source = this.querySelector('picture source[type="image/webp"]');
                lightboxImg.src = source ? source.srcset : img.src;
                lightboxImg.alt = img.alt;
                lightbox.classList.add('active');
                document.body.style.overflow = 'hidden';
            }
        });
    });

    // Close lightbox
    function closeLightbox() {
        lightbox.classList.remove('active');
        document.body.style.overflow = '';
    }

    closeBtn.addEventListener('click', closeLightbox);

    lightbox.addEventListener('click', function(e) {
        if (e.target === lightbox) {
            closeLightbox();
        }
    });

    // ESC key to close
    document.addEventListener('keydown', function(e) {
        if (e.key === 'Escape' && lightbox.classList.contains('active')) {
            closeLightbox();
        }
    });
}

// ===================================
// BACK TO TOP BUTTON
// ===================================
function initBackToTop() {
    // Create button
    const backToTop = document.createElement('button');
    backToTop.className = 'back-to-top';
    backToTop.innerHTML = '↑';
    backToTop.setAttribute('aria-label', 'Back to top');
    document.body.appendChild(backToTop);

    // Show/hide on scroll
    window.addEventListener('scroll', () => {
        if (window.pageYOffset > 500) {
            backToTop.classList.add('show');
        } else {
            backToTop.classList.remove('show');
        }
    });

    // Scroll to top on click
    backToTop.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
}

// ===================================
// PORTFOLIO FILTER
// ===================================
function initPortfolioFilter() {
    const filterBtns = document.querySelectorAll('.filter-btn');
    const galleryItems = document.querySelectorAll('.gallery-item');

    if (filterBtns.length === 0 || galleryItems.length === 0) return;

    filterBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            const filter = this.getAttribute('data-filter');

            // Update active button
            filterBtns.forEach(b => b.classList.remove('active'));
            this.classList.add('active');

            // Filter items
            galleryItems.forEach(item => {
                const category = item.getAttribute('data-category');

                if (filter === 'all' || category === filter) {
                    item.style.display = 'block';
                    setTimeout(() => {
                        item.style.opacity = '1';
                        item.style.transform = 'scale(1)';
                    }, 10);
                } else {
                    item.style.opacity = '0';
                    item.style.transform = 'scale(0.8)';
                    setTimeout(() => {
                        item.style.display = 'none';
                    }, 300);
                }
            });
        });
    });
}

// ===================================
// SMOOTH SCROLL
// ===================================
function initSmoothScroll() {
    const links = document.querySelectorAll('a[href^="#"]');

    links.forEach(link => {
        link.addEventListener('click', function(e) {
            const href = this.getAttribute('href');

            // Skip if it's just "#"
            if (href === '#') return;

            const target = document.querySelector(href);
            if (target) {
                e.preventDefault();
                const headerOffset = 100;
                const elementPosition = target.getBoundingClientRect().top;
                const offsetPosition = elementPosition + window.pageYOffset - headerOffset;

                window.scrollTo({
                    top: offsetPosition,
                    behavior: 'smooth'
                });
            }
        });
    });
}

// ===================================
// FORM VALIDATION
// ===================================
function initFormValidation() {
    const forms = document.querySelectorAll('form');

    forms.forEach(form => {
        form.addEventListener('submit', function(e) {
            e.preventDefault();

            const inputs = form.querySelectorAll('input[required], textarea[required], select[required]');
            let isValid = true;

            inputs.forEach(input => {
                // Remove previous error styling
                input.style.borderColor = '';

                if (!input.value.trim()) {
                    input.style.borderColor = '#dc3545';
                    isValid = false;
                }

                // Email validation
                if (input.type === 'email' && input.value.trim()) {
                    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (!emailRegex.test(input.value)) {
                        input.style.borderColor = '#dc3545';
                        isValid = false;
                    }
                }
            });

            // Checkbox validation (RODO)
            const checkbox = form.querySelector('input[type="checkbox"][required]');
            if (checkbox && !checkbox.checked) {
                isValid = false;
                alert('Musisz zaakceptować politykę prywatności.');
            }

            if (isValid) {
                // Show success message
                showFormSuccess(form);

                // In production, you would send the form data here
                // form.submit() or AJAX request
            } else {
                // Show error message
                showFormError(form);
            }
        });
    });
}

function showFormSuccess(form) {
    const message = document.createElement('div');
    message.style.cssText = `
        background-color: #8B9474;
        color: white;
        padding: 1rem 1.5rem;
        border-radius: 8px;
        margin-top: 1rem;
        text-align: center;
        animation: fadeInUp 0.3s ease;
    `;
    message.textContent = 'Dziękuję za wiadomość! Odpowiem w ciągu 24 godzin.';

    form.appendChild(message);
    form.reset();

    setTimeout(() => {
        message.remove();
    }, 5000);
}

function showFormError(form) {
    const existingError = form.querySelector('.form-error-message');
    if (existingError) existingError.remove();

    const message = document.createElement('div');
    message.className = 'form-error-message';
    message.style.cssText = `
        background-color: #dc3545;
        color: white;
        padding: 1rem 1.5rem;
        border-radius: 8px;
        margin-top: 1rem;
        text-align: center;
        animation: fadeInUp 0.3s ease;
    `;
    message.textContent = 'Proszę wypełnić wszystkie wymagane pola poprawnie.';

    form.appendChild(message);

    setTimeout(() => {
        message.remove();
    }, 5000);
}

// ===================================
// UTILS
// ===================================

// Debounce function for performance
function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

// Add resize listener with debounce
window.addEventListener('resize', debounce(() => {
    // Reinit dropdown on resize
    if (window.innerWidth > 768) {
        document.querySelectorAll('.nav-dropdown').forEach(dropdown => {
            dropdown.classList.remove('active');
        });
    }
}, 250));

// ===================================
// REMOVED OVERLY ANIMATED EFFECTS
// Keeping it professional and premium
// ===================================
