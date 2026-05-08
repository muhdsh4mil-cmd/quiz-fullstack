@echo off
echo =======================================================
echo Starting code 144p Full Stack Project
echo =======================================================

echo.
echo [1/2] Initializing Backend (Django)...
cd c:\coding\Portfolio\project-final-version-main\backend

echo Setting up virtual environment...
python -m venv venv
call venv\Scripts\activate.bat

echo Installing backend dependencies...
pip install -r requirements.txt

echo Running Database Migrations...
python manage.py migrate

echo Launching Django Server in a new window...
start "code 144p - Backend Terminal" cmd /k "venv\Scripts\activate.bat && python manage.py runserver"


echo.
echo [2/2] Initializing Frontend (React/Vite)...
cd ..\frontend

echo Installing frontend dependencies (this may take a moment)...
call npm install

echo Launching React Server in a new window...
start "code 144p - Frontend Terminal" cmd /k "npm run dev"

echo.
echo =======================================================
echo All services launched! 
echo Keep the two new terminal windows open to keep the project active.
echo You can now click "Live Demo" in your portfolio.
echo =======================================================
pause
