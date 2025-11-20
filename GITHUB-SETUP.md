# 🚀 GitHub Setup Guide

Your project is ready to push to GitHub!

**Repository:** https://github.com/lkaczmarek88/malec-photo-website

---

## ✅ What's Already Done

- ✅ Git repository initialized
- ✅ .gitignore file created
- ✅ All files added and committed
- ✅ GitHub remote added
- ✅ Branch renamed to `main`

**Status:** Ready to push! You just need to authenticate.

---

## 🔐 How to Authenticate and Push

### ⚠️ First: Make Sure Repository Exists on GitHub

1. Go to https://github.com/lkaczmarek88/malec-photo-website
2. If it doesn't exist, create it:
   - Go to https://github.com/new
   - Repository name: `malec-photo-website`
   - Description: "Kasia Malec Photography Website - Professional food photography portfolio"
   - **Keep it Public** (or Private if you prefer)
   - **DO NOT** initialize with README, .gitignore, or license (we already have these)
   - Click "Create repository"

---

## 🎯 Authentication Method 1: GitHub CLI (Easiest)

### Install GitHub CLI

**macOS:**
```bash
brew install gh
```

**Or download from:** https://cli.github.com

### Authenticate and Push

```bash
cd /Users/lkaczmarek/Desktop/new-malecphoto

# Login to GitHub
gh auth login
# Follow the prompts - choose:
# - GitHub.com
# - HTTPS
# - Login with web browser (easiest)

# Push to GitHub
git push -u origin main
```

**Done!** ✅

---

## 🔑 Authentication Method 2: Personal Access Token

### Step 1: Create Personal Access Token

1. Go to https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Give it a name: "Malec Photo Website"
4. Select scopes:
   - ✅ `repo` (Full control of private repositories)
5. Click "Generate token"
6. **COPY THE TOKEN** - you won't see it again!

### Step 2: Push with Token

```bash
cd /Users/lkaczmarek/Desktop/new-malecphoto

# Change remote back to HTTPS (if you tried SSH)
git remote set-url origin https://github.com/lkaczmarek88/malec-photo-website.git

# Push (will ask for credentials)
git push -u origin main

# When prompted:
# Username: lkaczmarek88
# Password: [paste your token here, not your actual password]
```

### Step 3: Cache Credentials (Optional)

So you don't have to enter token every time:

```bash
# Cache for 1 hour (3600 seconds)
git config --global credential.helper 'cache --timeout=3600'

# Or store permanently (less secure)
git config --global credential.helper store
```

**Done!** ✅

---

## 🔐 Authentication Method 3: SSH Key (Most Secure)

### Step 1: Check if SSH Key Exists

```bash
ls -la ~/.ssh
```

Look for `id_rsa.pub` or `id_ed25519.pub`

### Step 2: Generate SSH Key (if needed)

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
# Press Enter for default location
# Enter passphrase (or leave empty)
```

### Step 3: Copy SSH Key

```bash
# macOS
pbcopy < ~/.ssh/id_ed25519.pub

# Or display and copy manually
cat ~/.ssh/id_ed25519.pub
```

### Step 4: Add to GitHub

1. Go to https://github.com/settings/ssh/new
2. Title: "MacBook Air"
3. Paste your key
4. Click "Add SSH key"

### Step 5: Update Remote and Push

```bash
cd /Users/lkaczmarek/Desktop/new-malecphoto

# Change remote to SSH
git remote set-url origin git@github.com:lkaczmarek88/malec-photo-website.git

# Test connection
ssh -T git@github.com
# Should say: "Hi lkaczmarek88! You've successfully authenticated..."

# Push
git push -u origin main
```

**Done!** ✅

---

## 🎉 After Successful Push

Once pushed, your repository will be live at:
**https://github.com/lkaczmarek88/malec-photo-website**

### What You'll See:

- ✅ All 15 HTML pages
- ✅ CSS and JavaScript
- ✅ All images (optimized + originals)
- ✅ Complete documentation (README, guides)
- ✅ Your beautiful commit message

### Optional: Enable GitHub Pages

To host the website for FREE on GitHub:

1. Go to repository Settings
2. Click "Pages" in left sidebar
3. Source: "Deploy from a branch"
4. Branch: `main` / `root`
5. Click "Save"

Your site will be live at:
**https://lkaczmarek88.github.io/malec-photo-website/**

---

## 🔄 Future Updates

When you make changes:

```bash
cd /Users/lkaczmarek/Desktop/new-malecphoto

# Check what changed
git status

# Add changes
git add .

# Commit with message
git commit -m "Your descriptive message here"

# Push to GitHub
git push
```

---

## 📝 Quick Reference Commands

```bash
# Check status
git status

# See commit history
git log --oneline

# See remote URL
git remote -v

# Change remote URL
git remote set-url origin [URL]

# Pull latest changes
git pull

# Create new branch
git checkout -b feature-name

# Switch branch
git checkout main

# Delete branch
git branch -d feature-name
```

---

## 🐛 Troubleshooting

### Error: "Authentication failed"
- Try GitHub CLI method (easiest)
- Or create Personal Access Token (not your GitHub password!)

### Error: "Permission denied (publickey)"
- Your SSH key isn't set up
- Either set up SSH key (Method 3) or use HTTPS with token (Method 2)

### Error: "Repository not found"
- Make sure you created the repository on GitHub first
- Check the URL matches exactly: `lkaczmarek88/malec-photo-website`

### Error: "Updates were rejected"
- Someone else pushed to the repository
- Run `git pull` first, then `git push`

### Error: "fatal: remote origin already exists"
- The remote is already added (that's fine!)
- Use `git remote set-url origin [URL]` to change it

---

## 💡 Recommended: Use GitHub CLI

**Why GitHub CLI is best:**
- ✅ Easiest authentication (browser-based)
- ✅ No manual token creation
- ✅ Secure and modern
- ✅ Works with 2FA automatically
- ✅ Additional GitHub features (issues, PRs, etc.)

**Install:**
```bash
brew install gh
```

**Use:**
```bash
gh auth login
git push -u origin main
```

That's it! 🎉

---

## 📞 Need Help?

### Common Questions:

**Q: Which authentication method should I use?**
A: GitHub CLI is easiest. Personal Access Token is good too.

**Q: Is my token/password secure?**
A: Never commit tokens to git! They're safe in git credential helper or keychain.

**Q: Can I use this with VS Code?**
A: Yes! VS Code has built-in git support. Just authenticate once and use the GUI.

**Q: Should the repository be public or private?**
A: Public = free, visible to everyone. Private = hidden, but you can still deploy.

**Q: How do I delete the repository?**
A: Go to Settings → Danger Zone → Delete repository. BE CAREFUL!

---

## ✅ What's Next?

After pushing to GitHub:

1. ✅ Check repository looks good on GitHub
2. ✅ Enable GitHub Pages for free hosting (optional)
3. ✅ Add repository description and topics
4. ✅ Create a nice README.md (already done!)
5. ✅ Invite collaborators if needed
6. ✅ Set up form backend (see FORM-SETUP-GUIDE.md)
7. ✅ Deploy to production

---

**Your project is ready! Choose an authentication method above and push to GitHub!** 🚀

---

**Created:** 14 November 2025
**Repository:** https://github.com/lkaczmarek88/malec-photo-website
