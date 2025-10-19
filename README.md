# Felipe Nunes - Resume

A professional resume built with LaTeX, supporting multiple specialized variants for different job applications.

## 🚀 Quick Start

```bash
# Build all resume variants
make all

# Build specific variant
make embedded    # For embedded systems positions
make hardware    # For hardware engineering positions
make firmware    # For firmware development positions
make software    # For software engineering positions
make project-management  # For project management roles
```

## 📁 Project Structure

```
├── README.md              # This file
├── Makefile              # Build automation
├── resume.tex            # Main resume document
├── .gitignore           # Git ignore rules
├── assets/              # Images and icons
│   ├── github.png
│   ├── linkedin.png
│   ├── mail.png
│   └── phone.png
├── src/                 # Resume content sections
│   ├── macros.tex       # Custom LaTeX commands
│   ├── header.tex       # Contact information
│   ├── summary.tex      # Professional summary
│   ├── education.tex    # Education section
│   ├── experience.tex   # Work experience
│   ├── projects.tex     # Personal/academic projects
│   ├── skills.tex       # Technical skills
│   └── languages.tex    # Language proficiencies
├── variants/            # Resume variants for different roles
│   ├── embedded.tex
│   ├── firmware.tex
│   ├── hardware.tex
│   ├── software.tex
│   └── project-management.tex
├── build/              # LaTeX build artifacts (generated)
└── out/                # Final PDF outputs (generated)
```

## 🛠️ Requirements

- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- `latexmk` (usually included with LaTeX distributions)
- Required LaTeX packages:
  - `geometry`, `graphicx`, `titlesec`, `color`, `enumitem`
  - `hyperref`, `fancyhdr`, `babel`, `tabularx`

## 📋 Available Commands

| Command | Description |
|---------|-------------|
| `make all` | Build all resume variants |
| `make embedded` | Build embedded systems variant |
| `make hardware` | Build hardware engineering variant |
| `make firmware` | Build firmware development variant |
| `make software` | Build software engineering variant |
| `make project-management` | Build project management variant |
| `make clean` | Remove all build artifacts |
| `make help` | Show available commands |

## 🎨 Customization

### Personal Information
Edit `src/macros.tex` to update:
- Name, email, phone number
- LinkedIn and GitHub profiles
- Custom formatting commands

### Content Sections
Modify files in `src/` directory:
- `experience.tex` - Add/modify work experience
- `projects.tex` - Update personal/academic projects
- `skills.tex` - Update technical skills
- `education.tex` - Add education details

### Creating New Variants
1. Create a new file in `variants/` directory
2. Add build target to `Makefile`
3. Use `\def\TARGET{variant-name}` to conditionally include content

## 🏗️ Build System

The project uses `latexmk` for reliable LaTeX compilation with:
- Automatic dependency tracking
- Multiple compilation passes when needed
- Separate output and auxiliary directories
- Error handling and reporting

## 📄 Output

Generated PDFs are saved in the `out/` directory with descriptive filenames:
- `FelipeNunes_Resume_Embedded.pdf`
- `FelipeNunes_Resume_Hardware.pdf`
- `FelipeNunes_Resume_Firmware.pdf`
- `FelipeNunes_Resume_Software.pdf`
- `FelipeNunes_Resume_Project-Management.pdf`

## 🤝 Contributing

Feel free to suggest improvements or report issues. This template can be adapted for other resumes.

## 📝 License

This resume template is open source and available under the MIT License.