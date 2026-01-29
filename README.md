# Yongkang Yang's Blog

Source repository for my Hugo-powered blog, automatically deployed to [yongkang-yang.github.io/ykblog](https://yongkang-yang.github.io/ykblog/).

## 📚 Table of Contents

- [Deployment Workflow](#deployment-workflow)
- [How to Update the Blog](#how-to-update-the-blog)
- [Configuration](#configuration)

---

## Overview

This repository contains the Hugo source files for my personal blog. The blog uses the [PaperMod](https://github.com/adityatelange/hugo-PaperMod) theme and is automatically deployed to GitHub Pages via GitHub Actions.

**Key Repositories:**
- **Source**: [yongkang-yang/source-ykblog](https://github.com/yongkang-yang/source-ykblog) (this repo)
- **Deploy**: [yongkang-yang/ykblog](https://github.com/yongkang-yang/ykblog) (generated HTML)
- **Live Site**: https://yongkang-yang.github.io/ykblog/



## Deployment Workflow

The blog uses **GitHub Actions** to automatically build and deploy changes.

### How It Works

1. **Trigger**: Push to `master` branch triggers the workflow when these paths change:
   - `content/**` (blog posts)
   - `themes/**` (theme files)
   - `hugo.toml` (configuration)
   - `layouts/**`, `static/**`, `archetypes/**`
   - `.github/workflows/**` (workflow itself)

2. **Build Process** (`.github/workflows/deploy.yml`):
   ```yaml
   - Checkout source code from source-ykblog
   - Setup Hugo extended version
   - Build site: hugo --minify
   - Deploy to yongkang-yang/ykblog repository
   ```

3. **Deployment**:
   - Generated HTML pushed to `ykblog` repository
   - GitHub Pages serves from `ykblog/master` branch
   - Site updates automatically within 1-2 minutes

### Setup Requirements

The automated deployment requires SSH deploy keys configured between repositories:

1. **Generate SSH key pair** (done once):
   ```bash
   ssh-keygen -t ed25519 -C "github-actions-deploy" -f ~/.ssh/deploy_key -N ""
   ```

2. **Add PUBLIC key to ykblog**:
   - Go to: https://github.com/yongkang-yang/ykblog/settings/keys
   - Click "Add deploy key"
   - Title: `Deploy from source-ykblog`
   - Paste public key (`~/.ssh/deploy_key.pub`)
   - ✅ Check "Allow write access"

3. **Add PRIVATE key to source-ykblog**:
   - Go to: https://github.com/yongkang-yang/source-ykblog/settings/secrets/actions
   - Click "New repository secret"
   - Name: `DEPLOY_KEY`
   - Paste private key (`~/.ssh/deploy_key`)

4. **Configure GitHub Pages in ykblog**:
   - Go to: https://github.com/yongkang-yang/ykblog/settings/pages
   - Source: Deploy from a branch
   - Branch: `master` / `/ (root)`

## How to Update the Blog

### Adding a New Post

1. **Create a new post**:
   ```bash
   hugo new content/posts/my-new-post.md
   ```

2. **Edit the post** in `content/posts/my-new-post.md`:
   ```markdown
   ---
   title: "My New Post"
   date: 2026-01-25T10:00:00Z
   draft: false
   tags: ["tag1", "tag2"]
   categories: ["category"]
   ---

   Your content here...
   ```

3. **Preview locally**:
   ```bash
   hugo server -D
   ```

4. **Commit and push**:
   ```bash
   git add content/posts/my-new-post.md
   git commit -m "Add new post: My New Post"
   git push origin master
   ```

5. **Automatic deployment**:
   - GitHub Actions builds the site
   - Deploys to ykblog repository
   - Live in 1-2 minutes at https://yongkang-yang.github.io/ykblog/

### Updating Existing Content

1. **Edit the file** in `content/posts/`
2. **Commit and push**:
   ```bash
   git add content/posts/updated-post.md
   git commit -m "Update: post title"
   git push origin master
   ```

### Manual Deployment Trigger

The workflow supports manual triggers via `workflow_dispatch`:
- Go to: https://github.com/yongkang-yang/source-ykblog/actions
- Click "Deploy Hugo Blog" → "Run workflow"

## Configuration

### hugo.toml

Key configuration settings:

```toml
baseURL = 'https://yongkang-yang.github.io/ykblog/'
languageCode = 'en'
title = 'YONGKANG YANG'
theme = 'PaperMod'

[params]
  author = 'Yongkang Yang'
  description = "Yongkang's Research Blog"
  
  [params.homeInfoParams]
    Title = "Welcome to Yongkang's Blog"
    Content = "..."
```

**Important**: The `baseURL` must match your GitHub Pages URL for proper asset loading.

### Theme Configuration

This blog uses the PaperMod theme. To update the theme:

```bash
cd themes/PaperMod
git pull origin master
cd ../..
git add themes/PaperMod
git commit -m "Update PaperMod theme"
git push origin master
```

---

## Troubleshooting

### Site not updating?
- Check workflow status: https://github.com/yongkang-yang/source-ykblog/actions
- Verify commit triggered the workflow (check paths in workflow file)
- Ensure deploy keys are properly configured

### Build errors?
- Check Hugo version compatibility: `hugo version`
- Verify theme submodule: `git submodule update --init --recursive`
- Review workflow logs for detailed error messages

### Local preview not working?
- Ensure Hugo server is using correct baseURL: `hugo server -D --baseURL http://localhost:1313/ykblog/`
- Check port 1313 is not in use

---

**Blog maintained by**: Yongkang Yang  
**Contact**: ykyang.research@gmail.com  
**Website**: [https://https://yongkang-yang.github.io/Yongkang-Yang//](https://yongkang-yang.github.io/Yongkang-Yang/)


