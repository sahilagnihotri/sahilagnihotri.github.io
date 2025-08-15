# Portfolio Minimal

A modern, minimal Hugo theme designed for portfolios, personal websites, and resumes. Built on the foundation of the excellent [hugo-xmin](https://github.com/yihui/hugo-xmin) theme by Yihui Xie.

[![Hugo](https://img.shields.io/badge/hugo-0.80+-blue.svg)](https://gohugo.io)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## ✨ Features

- **🌙 Modern Dark Theme**: Beautiful dark color scheme with CSS custom properties
- **📱 Responsive Design**: Mobile-first design with hamburger navigation
- **📄 PDF Export**: Built-in functionality to export pages as PDF
- **🔗 Social Media Integration**: Configurable social media links
- **⚡ Fast & Lightweight**: Minimal JavaScript, optimized CSS
- **♿ Accessible**: Keyboard navigation and screen reader friendly
- **🔍 SEO Optimized**: Structured data and meta tags
- **🎨 Customizable**: Easy theming with CSS custom properties
- **📝 Math Support**: Optional KaTeX integration for mathematical expressions

## 🚀 Demo

Visit the [live demo](https://sahilagnihotri.github.io/portfolio-minimal/) to see the theme in action.


## 📦 Installation

### Option 1: Git Submodule (Recommended)

```bash
git submodule add https://github.com/sahilagnihotri/portfolio-minimal.git themes/portfolio-minimal
```

### Option 2: Git Clone

```bash
git clone https://github.com/sahilagnihotri/portfolio-minimal.git themes/portfolio-minimal
```

### Option 3: Download ZIP

Download and extract the theme into your Hugo site's `themes/portfolio-minimal` directory.

---

## 🚀 Local Setup & Initial Testing

### Prerequisites

- Hugo >= 0.80.0
- Modern web browser
- Git (for theme installation)

### Setup Commands

```sh
# Clone or navigate to your Hugo site
cd your-hugo-site

# Install theme as submodule (recommended)
git submodule add https://github.com/sahilagnihotri/portfolio-minimal.git themes/portfolio-minimal

# Or test with example site
cd themes/portfolio-minimal/exampleSite
hugo server --themesDir ../..
```

### Configuration Validation

```sh
# Check Hugo version
hugo version

# Validate configuration
hugo config

# Test build without serving
hugo --dry-run
```

---

## ⏺ Update Todos

  ⎿  ☒ Create comprehensive testing guide with local setup instructions
     ☐ Detail PDF export testing procedures
     ☐ Cover responsive design validation
     ☐ Include production deployment testing
     ☐ Add feature validation checklist

---

## ⏺ 📄 PDF Export Testing (Critical)

### Enable PDF Export

```toml
# In hugo.toml
[params]
  enablePDFExport = true
  pdfExportSelector = "main"
  pdfFilename = "resume.pdf"
```

### PDF Export Test Checklist

```sh
# Start local server
hugo server

# Navigate to page with PDF export (usually /about)
# Click "Download PDF" button
```

**Critical PDF Requirements:**
- White background (not dark theme colors)
- Contact information visible and properly formatted
- Company icons replaced with company names in text
- No duplicate "Sahil Agnihotri" or author name text
- Content with `.no-pdf` class is hidden
- Content with `.pdf-only` class appears only in PDF
- Proper page breaks and formatting
- All text is readable and properly sized

### PDF Testing Code Examples

```html
<!-- Test content for PDF export -->
<div class="no-pdf">
  <p>This should NOT appear in PDF</p>
</div>

<div class="pdf-only">
  <p>This should ONLY appear in PDF</p>
</div>

<div class="contact-info">
  <p>Email: test@example.com</p>
  <p>Phone: +1-234-567-8900</p>
</div>
```

### PDF Browser Testing

Test PDF export in multiple browsers:
- Chrome/Chromium
- Firefox
- Safari (macOS)
- Edge

## ⚙️ Configuration

### Basic Setup

Add the theme to your `hugo.toml`:

```toml
theme = "portfolio-minimal"
```

### Example Configuration

```toml
baseURL = "https://example.com"
languageCode = "en-us"
title = "Your Name"
theme = "portfolio-minimal"

# Enable unsafe HTML rendering for custom content
[markup]
  [markup.goldmark]
    [markup.goldmark.renderer]
      unsafe = true

[params]
  # Basic site information
  author = "Your Name"
  description = "A minimal portfolio website"
  
  # Social media links (all optional)
  github = "https://github.com/yourusername"
  linkedin = "https://linkedin.com/in/yourusername"
  email = "mailto:your.email@example.com"
  
  # Theme features (all optional)
  math = false                    # Enable KaTeX math rendering
  centerImages = true             # Center images in content
  enablePDFExport = false         # Enable PDF export functionality
  showSocialOnAbout = true        # Show social links on about page
  
  # Footer settings
  showFooterSocial = false        # Show social links in footer
  hideDefaultFooter = false       # Hide the default copyright footer
  showHugoBranding = true         # Show "Built with Hugo" text in footer
  
  # PDF Export settings (only if enablePDFExport = true)
  pdfExportSelector = "main"      # CSS selector for PDF content
  pdfFilename = "resume.pdf"      # Default filename for PDF export

# Navigation menu
[menu]
  [[menu.main]]
    name = "Home"
    url = "/"
    weight = 1
  [[menu.main]]
    name = "About"
    url = "/about"
    weight = 2
  [[menu.main]]
    name = "Projects"
    url = "/projects"
    weight = 3
  [[menu.main]]
    name = "Blog"
    url = "/post"
    weight = 4
```

## 📝 Content Types

### Home Page

Create `content/_index.md`:

```markdown
---
title: "Your Name"
---

## Your Title/Role

Welcome message and brief introduction...
```

### About Page

Create `content/about.md`:

```markdown
---
title: "About Me"
---

# Your Name

Your detailed biography, experience, skills, etc.

<!-- PDF Export Button (optional) -->
<div class="no-pdf">
<div class="export-buttons">
  <a href="#" id="download-pdf" class="btn">
    <i class="fas fa-download"></i> Download PDF
  </a>
</div>
</div>
```

### Blog Posts

```bash
hugo new post/my-first-post.md
```

### Projects

```bash
hugo new projects/my-project.md
```

## 🎨 Customization

### Color Scheme

The theme uses CSS custom properties that you can override in your own CSS:

```css
:root {
  --color-primary: #3b82f6;        /* Main accent color */
  --color-background: #0f172a;     /* Page background */
  --color-surface: #1e293b;        /* Card/content backgrounds */
  --color-text: #f8fafc;           /* Primary text */
  --color-text-secondary: #cbd5e1; /* Secondary text */
  --border-radius: 8px;            /* Border radius for components */
}
```

### Custom CSS

Add custom styles by creating `assets/css/custom.css` in your site:

```css
/* Your custom styles */
.custom-class {
  /* Your styles here */
}
```

Then include it in your configuration:

```toml
[params]
  customCSS = ["css/custom.css"]
```

## 📱 Mobile Navigation

The theme includes a responsive hamburger menu that automatically appears on mobile devices. The menu closes when:
- A menu item is clicked
- The user clicks outside the menu
- The hamburger button is clicked again

## 📄 PDF Export

When `enablePDFExport = true`, the theme includes PDF export functionality:

1. Add the export button to your content:
```html
<div class="no-pdf">
<div class="export-buttons">
  <a href="#" id="download-pdf" class="btn">
    <i class="fas fa-download"></i> Download PDF
  </a>
</div>
</div>
```

2. Content with `no-pdf` class will be hidden in the PDF
3. Content with `pdf-only` class will only appear in the PDF

## 📐 Math Support

Enable math rendering with KaTeX:

```toml
[params]
  math = true
```

Then use math in your content:

```markdown
Inline math: $E = mc^2$

Display math:
$$
\\int_{-\\infty}^{\\infty} e^{-x^2} dx = \\sqrt{\\pi}
$$
```

## 🚀 Development

### Running the Example Site

```bash
cd exampleSite
hugo server --themesDir ../..
```

### Building for Production

```bash
hugo --minify
```

## 📋 Requirements

- Hugo >= 0.80.0
- Modern web browser with CSS custom properties support

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **[hugo-xmin](https://github.com/yihui/hugo-xmin)** by Yihui Xie - The foundation this theme is built upon
- **[Hugo](https://gohugo.io)** - The amazing static site generator
- **[Font Awesome](https://fontawesome.com)** - Icons used throughout the theme
- **[Inter Font](https://rsms.me/inter/)** - Beautiful typography
- **[JetBrains Mono](https://www.jetbrains.com/mono/)** - Code font

## 📞 Support

If you have any questions or need help with the theme:

1. Check the [documentation](https://github.com/sahilagnihotri/portfolio-minimal/wiki)
2. Look through [existing issues](https://github.com/sahilagnihotri/portfolio-minimal/issues)
3. Create a [new issue](https://github.com/sahilagnihotri/portfolio-minimal/issues/new)

---

**Built with ❤️ for the Hugo community**