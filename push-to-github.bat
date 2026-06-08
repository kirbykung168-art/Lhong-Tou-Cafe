@echo off
cd /d "%~dp0"
echo === LHONG TOU - push to GitHub ===
echo.

if not exist ".git" (
  git init
  git branch -M main
)

if not exist ".gitignore" (
  echo node_modules/> .gitignore
  echo .DS_Store>> .gitignore
  echo *.log>> .gitignore
  echo images/source/>> .gitignore
  echo screenshots/>> .gitignore
  echo .vercel/>> .gitignore
)

git remote remove origin 2>nul
git remote add origin https://github.com/kirbykung168-art/Lhong-Tou-Cafe.git

git add -A
git commit -m "LHONG TOU Cafe Bangkok - Yaowarat oriental dim sum site"
git push -u origin main --force

echo.
echo === Pushed to https://github.com/kirbykung168-art/Lhong-Tou-Cafe ===
pause
