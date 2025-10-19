# Conditional Compilation Guide

This resume project uses a simple conditional compilation system that allows you to create different versions of your resume for different job types without duplicating code.

## How It Works

Each variant file (e.g., `variants/software.tex`) defines a `TARGET` variable and includes the main resume:
```latex
\def\TARGET{software}
\input{../resume.tex}
```

The content files use conditional macros to show different content based on the target:

## Available Conditionals

- `\ifembedded{content}` - Shows content only in embedded variant
- `\ifsoftware{content}` - Shows content only in software variant  
- `\ifhardware{content}` - Shows content only in hardware variant
- `\iffirmware{content}` - Shows content only in firmware variant
- `\ifprojectmgmt{content}` - Shows content only in project management variant

## Usage Examples

### Simple Conditional Content
```latex
\ifembedded{
    This content only appears in the embedded systems resume.
}

\ifsoftware{
    This content only appears in the software engineering resume.
}
```

### Experience Section Example
```latex
\resumeSubheading
{\href{https://company.com/}{Company Name}}{May 2024 – Aug 2024}
{Position Title}{Location}
\resumeItemListStart

\ifembedded{
    \resumeItem{Embedded systems focused achievement 1}
    \resumeItem{Embedded systems focused achievement 2}
    \resumeItem{Embedded systems focused achievement 3}
}

\ifsoftware{
    \resumeItem{Software development focused achievement 1}
    \resumeItem{Software development focused achievement 2}
    \resumeItem{Software development focused achievement 3}
}

\resumeItemListEnd
```

### Skills Section Example
```latex
\section{Technical Skills}
\begin{itemize}[leftmargin=0.15in, label={}]
    \small{\item{
        
        \ifembedded{
            \textbf{Programming Languages}: {C/C\texttt{++}, Python, Assembly} \\
            \textbf{Operating Systems}: {FreeRTOS, Zephyr, Linux} \\
            \textbf{Hardware}: {PCB design, Microcontrollers, FPGA}
        }
        
        \ifsoftware{
            \textbf{Programming Languages}: {Python, JavaScript, TypeScript} \\
            \textbf{Frameworks}: {React, Node.js, Express} \\
            \textbf{Databases}: {MongoDB, PostgreSQL, Redis}
        }
        
    }}
\end{itemize}
```

## Best Practices

1. **Complete Separation**: Each variant should have completely different content blocks rather than shared content with small modifications.

2. **Clear Organization**: Group related conditional blocks together and use consistent formatting.

3. **Consistent Structure**: Keep the same section structure across all variants for predictable output.

4. **Build Testing**: Always test builds for all variants after making changes:
   ```bash
   make clean
   make all  # Builds all variants
   ```

## Building Variants

Build individual variants:
```bash
make software     # Software engineering resume
make embedded     # Embedded systems resume
make hardware     # Hardware engineering resume
make firmware     # Firmware engineering resume
make project-management  # Project management resume
```

Build all variants:
```bash
make all
```

Clean build files:
```bash
make clean
```

## File Organization

```
src/
├── macros.tex      # Contains conditional compilation macros
├── summary.tex     # Job title varies by variant
├── experience.tex  # Different bullet points per variant
├── skills.tex      # Different skill sets per variant
├── projects.tex    # Can emphasize different aspects
└── ...
```

## Adding New Variants

1. Create new variant file: `variants/new-variant.tex`
   ```latex
   \def\TARGET{new-variant}
   \input{../resume.tex}
   ```

2. Add build target to `Makefile`:
   ```makefile
   new-variant:
       $(LATEX) -jobname=FelipeNunes_Resume_NewVariant variants/new-variant.tex
   ```

3. Add conditional macro to `src/macros.tex`:
   ```latex
   \newcommand{\ifnewvariant}[1]{\@checkTarget{new-variant}{#1}{}}
   ```

4. Update content files with new conditional blocks:
   ```latex
   \ifnewvariant{
       Content specific to new variant
   }
   ```

This system keeps your resume maintainable while allowing complete customization for different job applications.
