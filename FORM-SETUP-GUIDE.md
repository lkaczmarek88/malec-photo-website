# 📧 Contact Form Setup Guide

**Current Status:** ⚠️ Form has client-side validation but doesn't send emails

**What works:**
- ✅ Client-side validation (checks if fields are filled)
- ✅ Email format validation
- ✅ Required field checking
- ✅ Success/error messages display

**What doesn't work:**
- ❌ Form doesn't actually send emails
- ❌ No backend to process form data
- ❌ Data is not saved anywhere

---

## 🎯 Quick Solution Options

Choose one of these methods based on your technical skills and budget:

### 1. **Formspree** (Easiest - Recommended for beginners) ⭐
**Cost:** Free for 50 submissions/month, $10/month for more
**Setup time:** 5 minutes
**Technical skill:** None required

### 2. **EmailJS** (Free - Good balance)
**Cost:** Free for 200 emails/month
**Setup time:** 10 minutes
**Technical skill:** Basic JavaScript

### 3. **Netlify Forms** (Best if deploying to Netlify)
**Cost:** Free for 100 submissions/month
**Setup time:** 2 minutes
**Technical skill:** Basic HTML

### 4. **Custom PHP Backend** (Full control)
**Cost:** Free (needs PHP hosting)
**Setup time:** 30 minutes
**Technical skill:** PHP knowledge required

### 5. **Google Forms** (Simplest but less professional)
**Cost:** Free
**Setup time:** 10 minutes
**Technical skill:** None required

---

## 🚀 Option 1: Formspree (RECOMMENDED)

### Why Formspree?
- ✅ Easiest setup
- ✅ No backend code needed
- ✅ Spam protection included
- ✅ File uploads supported
- ✅ Email notifications
- ✅ Can save submissions

### Setup Steps:

#### Step 1: Create Formspree Account
1. Go to https://formspree.io
2. Sign up for free account
3. Create a new form
4. Copy your form endpoint URL (looks like: `https://formspree.io/f/xyzabc123`)

#### Step 2: Update Contact Form HTML

Open `/kontakt/index.html` and find the form tag (around line 55).

**Change from:**
```html
<form style="background: white; padding: 2.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(0,0,0,0.1);">
```

**Change to:**
```html
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST" style="background: white; padding: 2.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(0,0,0,0.1);">
```

Replace `YOUR_FORM_ID` with the ID from Formspree.

#### Step 3: Add Name Attributes

Add `name` attributes to all form inputs. Update each input like this:

**Before:**
```html
<input type="text" id="name" class="form-input" required>
```

**After:**
```html
<input type="text" id="name" name="name" class="form-input" required>
```

**Complete list of changes:**
- `<input type="text" id="name"` → add `name="name"`
- `<input type="text" id="company"` → add `name="company"`
- `<input type="email" id="email"` → add `name="email"`
- `<input type="tel" id="phone"` → add `name="phone"`
- `<select id="service"` → add `name="service"`
- `<input type="text" id="location"` → add `name="location"`
- `<textarea id="message"` → add `name="message"`
- `<select id="budget"` → add `name="budget"`
- `<input type="text" id="deadline"` → add `name="deadline"`
- `<textarea id="notes"` → add `name="notes"`

#### Step 4: Optional - Disable JavaScript Validation

If you want Formspree to handle everything, comment out form validation in `/js/main.js`:

```javascript
document.addEventListener('DOMContentLoaded', function() {
    initMobileMenu();
    initScrollAnimations();
    initHeaderScroll();
    initFAQ();
    initLightbox();
    initBackToTop();
    initPortfolioFilter();
    initSmoothScroll();
    // initFormValidation(); // Commented out - Formspree handles it
    initDropdownMobile();
});
```

Or keep validation for better UX!

#### Step 5: Test
1. Fill out the form
2. Submit it
3. Check your email inbox
4. Check Formspree dashboard for submissions

**Done!** ✅

---

## 🔧 Option 2: EmailJS (Free)

### Setup Steps:

#### Step 1: Create EmailJS Account
1. Go to https://www.emailjs.com
2. Sign up for free account
3. Add email service (Gmail, Outlook, etc.)
4. Create email template
5. Copy your Service ID, Template ID, and Public Key

#### Step 2: Add EmailJS Script

In `/kontakt/index.html`, add this before closing `</body>` tag:

```html
<script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
<script>
    (function(){
        emailjs.init("YOUR_PUBLIC_KEY"); // Replace with your public key
    })();
</script>
```

#### Step 3: Update Form Validation Function

In `/js/main.js`, find the line that says:
```javascript
// In production, you would send the form data here
// form.submit() or AJAX request
```

Replace it with:

```javascript
// Send email via EmailJS
const formData = {
    name: form.querySelector('#name').value,
    company: form.querySelector('#company').value,
    email: form.querySelector('#email').value,
    phone: form.querySelector('#phone').value,
    service: form.querySelector('#service').value,
    location: form.querySelector('#location').value,
    message: form.querySelector('#message').value,
    budget: form.querySelector('#budget').value,
    deadline: form.querySelector('#deadline').value,
    notes: form.querySelector('#notes').value
};

emailjs.send('YOUR_SERVICE_ID', 'YOUR_TEMPLATE_ID', formData)
    .then(function() {
        showFormSuccess(form);
        form.reset();
    }, function(error) {
        console.error('EmailJS error:', error);
        alert('Wystąpił błąd podczas wysyłania. Spróbuj ponownie.');
    });
```

Replace:
- `YOUR_PUBLIC_KEY` with your EmailJS public key
- `YOUR_SERVICE_ID` with your service ID
- `YOUR_TEMPLATE_ID` with your template ID

**Done!** ✅

---

## 📦 Option 3: Netlify Forms

### Setup Steps:

#### Step 1: Add Netlify Attributes

In `/kontakt/index.html`, update the form tag:

**Change from:**
```html
<form style="background: white; padding: 2.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(0,0,0,0.1);">
```

**Change to:**
```html
<form name="contact" method="POST" data-netlify="true" netlify-honeypot="bot-field" style="background: white; padding: 2.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(0,0,0,0.1);">
```

#### Step 2: Add Honeypot (spam protection)

Add this hidden field at the beginning of the form:

```html
<input type="hidden" name="form-name" value="contact">
<p style="display: none;">
    <label>Don't fill this out: <input name="bot-field"></label>
</p>
```

#### Step 3: Add Name Attributes

Same as Formspree - add `name` attribute to all inputs.

#### Step 4: Deploy to Netlify

1. Push your code to GitHub
2. Connect GitHub repo to Netlify
3. Deploy site
4. Forms will automatically work!

**Done!** ✅

---

## 🐘 Option 4: Custom PHP Backend

### Setup Steps:

#### Step 1: Create PHP Handler

Create a file `/send-email.php`:

```php
<?php
header('Content-Type: application/json');

// Get POST data
$name = isset($_POST['name']) ? strip_tags(trim($_POST['name'])) : '';
$company = isset($_POST['company']) ? strip_tags(trim($_POST['company'])) : '';
$email = isset($_POST['email']) ? filter_var(trim($_POST['email']), FILTER_SANITIZE_EMAIL) : '';
$phone = isset($_POST['phone']) ? strip_tags(trim($_POST['phone'])) : '';
$service = isset($_POST['service']) ? strip_tags(trim($_POST['service'])) : '';
$location = isset($_POST['location']) ? strip_tags(trim($_POST['location'])) : '';
$message = isset($_POST['message']) ? strip_tags(trim($_POST['message'])) : '';
$budget = isset($_POST['budget']) ? strip_tags(trim($_POST['budget'])) : '';
$deadline = isset($_POST['deadline']) ? strip_tags(trim($_POST['deadline'])) : '';
$notes = isset($_POST['notes']) ? strip_tags(trim($_POST['notes'])) : '';

// Validate required fields
if (empty($name) || empty($email) || empty($message)) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Wypełnij wszystkie wymagane pola.']);
    exit;
}

// Validate email
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    http_response_code(400);
    echo json_encode(['success' => false, 'message' => 'Nieprawidłowy adres email.']);
    exit;
}

// Email recipient (YOUR EMAIL)
$recipient = "kontakt@kasiamalecphoto.pl"; // CHANGE THIS!

// Email subject
$subject = "Nowe zapytanie z formularza kontaktowego - $name";

// Email content
$email_content = "Imię i nazwisko: $name\n";
if (!empty($company)) $email_content .= "Firma: $company\n";
$email_content .= "Email: $email\n";
if (!empty($phone)) $email_content .= "Telefon: $phone\n";
$email_content .= "Typ usługi: $service\n";
if (!empty($location)) $email_content .= "Lokalizacja: $location\n";
$email_content .= "\nOpis projektu:\n$message\n";
if (!empty($budget)) $email_content .= "\nBudżet: $budget\n";
if (!empty($deadline)) $email_content .= "Preferowany termin: $deadline\n";
if (!empty($notes)) $email_content .= "\nDodatkowe uwagi:\n$notes\n";

// Email headers
$headers = "From: $name <$email>\r\n";
$headers .= "Reply-To: $email\r\n";
$headers .= "Content-Type: text/plain; charset=UTF-8\r\n";

// Send email
if (mail($recipient, $subject, $email_content, $headers)) {
    http_response_code(200);
    echo json_encode(['success' => true, 'message' => 'Wiadomość wysłana!']);
} else {
    http_response_code(500);
    echo json_encode(['success' => false, 'message' => 'Błąd podczas wysyłania.']);
}
?>
```

#### Step 2: Update Form to Use AJAX

In `/kontakt/index.html`, update the form tag:

```html
<form id="contact-form" style="background: white; padding: 2.5rem; border-radius: 12px; box-shadow: 0 4px 16px rgba(0,0,0,0.1);">
```

Add `name` attributes to all inputs (same as other methods).

#### Step 3: Update JavaScript

In `/js/main.js`, replace the form submission code with:

```javascript
if (isValid) {
    // Collect form data
    const formData = new FormData(form);

    // Send via AJAX
    fetch('/send-email.php', {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            showFormSuccess(form);
            form.reset();
        } else {
            alert(data.message);
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Wystąpił błąd. Spróbuj ponownie.');
    });
}
```

**Done!** ✅

---

## 📝 Option 5: Google Forms (Simplest)

### Setup Steps:

#### Step 1: Create Google Form
1. Go to https://forms.google.com
2. Create new form with same fields
3. Click "Send" → Get link
4. Copy the form URL

#### Step 2: Embed or Link

**Option A - Replace current form:**
Replace the entire form section with an iframe:

```html
<iframe
    src="YOUR_GOOGLE_FORM_URL"
    width="100%"
    height="1200"
    frameborder="0"
    marginheight="0"
    marginwidth="0">
    Ładowanie…
</iframe>
```

**Option B - Link to Google Form:**
Keep current form as visual, but link button to Google Form:

```html
<a href="YOUR_GOOGLE_FORM_URL" class="btn btn-primary" target="_blank">
    Wypełnij formularz kontaktowy
</a>
```

**Pros:** Dead simple, no coding
**Cons:** Less professional, takes users away from your site

---

## 🎯 Which Option Should You Choose?

### Choose **Formspree** if:
- ✅ You want the easiest setup
- ✅ You don't mind paying $10/month for more submissions
- ✅ You want spam protection and file uploads

### Choose **EmailJS** if:
- ✅ You want everything free
- ✅ 200 emails/month is enough
- ✅ You're comfortable with JavaScript

### Choose **Netlify Forms** if:
- ✅ You're already deploying to Netlify
- ✅ You want the simplest HTML-only solution
- ✅ 100 submissions/month is enough

### Choose **PHP Backend** if:
- ✅ You have PHP hosting
- ✅ You want full control
- ✅ You know PHP
- ✅ You want to save data to database later

### Choose **Google Forms** if:
- ✅ You need something working in 5 minutes
- ✅ You don't care about professional look
- ✅ You're okay with users leaving your site

---

## 🔒 Security Considerations

### All Methods:
- ✅ Always validate data server-side (if using custom backend)
- ✅ Use HTTPS in production
- ✅ Add spam protection (honeypot, reCAPTCHA)
- ✅ Sanitize user input
- ✅ Rate limit submissions

### For PHP Backend:
- ✅ Use `strip_tags()` to prevent XSS
- ✅ Use `filter_var()` for email validation
- ✅ Never trust user input
- ✅ Consider using PHPMailer instead of mail()
- ✅ Add CSRF protection

---

## 📧 Email Configuration Tips

### For PHP mail():
1. Check if `mail()` function is enabled on your server
2. Configure SMTP if `mail()` doesn't work
3. Use SPF/DKIM records to prevent emails going to spam
4. Test emails with mail-tester.com

### For All Methods:
1. **Set up a reply-to** so you can easily respond to customers
2. **Save a copy** of submissions (database or Google Sheets)
3. **Send confirmation email** to customer
4. **Monitor spam folder** - legitimate emails might end up there

---

## 🧪 Testing Your Form

### Before Going Live:
1. ✅ Test with valid data
2. ✅ Test with invalid data (empty fields, bad email)
3. ✅ Test on mobile devices
4. ✅ Check emails aren't going to spam
5. ✅ Verify all fields are being sent
6. ✅ Test success/error messages display correctly

### Test Checklist:
- [ ] Form submits successfully
- [ ] Email arrives in inbox
- [ ] All fields are included in email
- [ ] Success message displays
- [ ] Form resets after submission
- [ ] Validation works for required fields
- [ ] Email format validation works
- [ ] Checkbox (RODO) validation works
- [ ] Mobile submission works
- [ ] Emails not in spam folder

---

## 🚀 My Recommendation

**For Kasia Malec Photography:**

Start with **Formspree** (Option 1) because:
1. ✅ Fastest to implement (5 minutes)
2. ✅ Professional and reliable
3. ✅ Free tier includes 50 submissions/month (plenty for starting)
4. ✅ Spam protection included
5. ✅ No backend code needed
6. ✅ Can upgrade later if needed

**Implementation Steps:**
1. Sign up at formspree.io
2. Add form action and name attributes (details above)
3. Test it
4. Done!

**If you get more than 50 submissions/month** (great problem to have!), upgrade to $10/month or switch to EmailJS.

---

## 📝 Summary

**Current state:** Form validates but doesn't send
**Easiest fix:** Formspree (5 minutes)
**Free option:** EmailJS (10 minutes)
**Full control:** PHP backend (30 minutes)

Choose the one that fits your technical skills and budget!

---

**Need help?** Check the documentation links:
- Formspree: https://help.formspree.io
- EmailJS: https://www.emailjs.com/docs
- Netlify Forms: https://docs.netlify.com/forms/setup

**Questions?** Feel free to ask!

---

**Created:** 14 November 2025
**Updated:** 14 November 2025
