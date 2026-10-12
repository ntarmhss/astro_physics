# Astrophysics Coursework & Programs

A collection of computational physics scripts, simulations, data analysis, and notebooks developed for astrophysics coursework.

## 📁 Repository Structure

```text
astro_physics/
├── notebooks/        # Jupyter notebooks for interactive analysis and plots
├── scripts/          # Standalone Python scripts and simulation models
├── data/             # Input datasets, observations, or ephemerides
├── requirements.txt  # Python package dependencies
└── README.md
```

## 🚀 Getting Started

### Prerequisites

- Python 3.10+
- Recommended virtual environment:

```bash
python -m venv .venv
# Windows PowerShell:
.venv\Scripts\Activate.ps1
# Windows Command Prompt:
.venv\Scripts\activate.bat
```

Install core dependencies:

```bash
pip install -r requirements.txt
```

---

## 🔄 Daily Git Workflow (How to push new work)

When you create or update scripts:

1. **Check changed files:**
   ```bash
   git status
   ```

2. **Stage your files:**
   ```bash
   git add .
   ```

3. **Commit with a descriptive message:**
   ```bash
   git commit -m "Add orbital simulation script"
   ```

4. **Push to GitHub:**
   ```bash
   git push origin main
   ```
