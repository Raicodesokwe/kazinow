# pages folder

## Description

In this folder,we set up the screen that we shall use for the entire app which in this case are four.

## Content

*splash_screen.dart*- This is the first screen that appears upon app start up. It contains a fun animation 

of the app logo. It appears for 5 seconds courtesy of the Timer widget

*home_page.dart*- This is the first screen that appears when the splash

screen is done loading. The is a fade animation and scale animation upon
 
initial load of the page . It consists

of a customscrollview with a sliverappbar and a slivertoboxadapter. The sliverappbar is composed of a column

with the logo on top, a Container with the user's details such as name 

and account balance and a button prompting the user to send money. 

The slivertoboxadapter consists of a textbutton 'check rates' navigating

the user to the currency converter page and another text button 'see all'

prompting the user to check the entire list of transactions

*check_rates.dart*- Consists of a textfield where the user can enter the

amount he wishes to convert, a to currency actionchip and from currency 

actionchip that pops an alert dialog where the user can select the 

currency he wishes to convert from and to and a clickable container that

triggers the api call to convert the given currency amount

*transactions_page.dart*- This page is composed of an fl_chart graph 

displaying the user's monthly transactions and a listview builder that 

displays listtiles containing information on the user's transactions 

based on the transactions model file
