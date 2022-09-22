# Widgets folder

## Description

Contains widgets for the various pages. Meant to declutter large dart

files and make our code clean and lean.

## Configuration

# checkrates page

*from_currency_overlay.dart*- Contains a pop up alert dialog displaying a 

list of currencies that can be selected to fill the from currency 

parameter that shall enable us get a response from the currency converter

endpoint. We use the consumer widget from provider to listen to the 

currency that the user has selected and pass the value to the 

selectedfromcurrency property in the fromcurrenciesprovider. We then

display this value in the actionchip widget in the checkrates page

*to_currency_overlay.dart*- Contains a pop up alert dialog displaying a 

list of currencies that can be selected to fill the to currency 

parameter that shall enable us get a response from the currency converter

endpoint. We use the consumer widget from provider to listen to the 

currency that the user has selected and pass the value to the 

selectedtocurrency property in the tocurrenciesprovider. We then

display this value in the actionchip widget in the checkrates page

# homepage

*home_app_bar.dart*- Contains the sliverappbar with clipped containers 

displaying the company logo, balance amount etc

*home_scroll_sheet.dart*-Contains the slivertoboxadapter with a textfield

can input the amount and select the currency in which he wishes to send

the money. There is also a textfield where the user can search for a 

recipient and chip widgets showing three recipients commonly sends the

money to. There is also two listtiles showing two of the most recent

transactions and a textbutton 'see all' navigating the user to the

transactions page.

# transactions

*transactions_list.dart*-Contains a listview builder displaying a list of 

transactions in list tiles based on the transactionsmodel class

# extra

*custom_clipper.dart*- Contains a clipper object that takes a path 

enabling us clip the bottom left and top right edges of containers

*custom_clippertwo.dart*- Contains a clipper object that takes a path 

enabling us clip the bottom left and top right edges of containers. We 

use a higher radius value here to make the clipping sharper