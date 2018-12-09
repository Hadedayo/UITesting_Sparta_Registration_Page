# UITesting_Sparta_Registration_Page
Selenium is a User Interface (UI) automation tool that drives web browsers. It is used in conjunction with RSPec to test Sparta Global's Registration Form Page.

## Installing the Repository
To access this repository, clone using HTTPS by copying the HTTPS link and running 'git clone <i>insert https link here'

## Selenium and Chromedriver
Selenium is widely used due to its compatibility with various browsers. In order to use Selenium in Google Chrome, download chromedriver.

ChromeDriver is a separate executable that WebDriver uses to control Chrome.
    After installation, navigate to system in control panel, go to advanced system settings and add chromedriver to the PATH.

    Run chromedriver in Git Bash and you should get a message as such;

    Starting ChromeDriver 2.44.609538 (b655c5a60b0b544917107a59d4153d4bf78e1b90) onport 9515
    Only local connections are allowed.


## Random Generator Class
A class that generates fake data such as name, age, postcodes etc, is incorporated into the testing so we are not repetively testing the same information, thus avoiding Pesticide Paradox .

## Starter code
Contains the required files and folders to start testing the registration page.

## Solution Code
Contains the methods generated to locate the elements on the Registration form page,  as well as the corresponding tests to verify the input of information into the different fields on the page.
