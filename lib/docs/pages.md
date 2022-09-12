# pages folder

## Description

In this folder,we set up the screen that we shall use for the entire app which in this case are four.

## Content

*splash_screen.dart*- This is the first screen that appears upon app start up. It contains a fun animation 

of the app logo. It appears for 5 seconds courtesy of the Timer widget

*home_page.dart*- This is the first screen that appears when the splash screen is done loading. It consists

of a customscrollview with a sliverappbar and a slivertoboxadapter. The sliverappbar is composed of a column

with the logo on top, a listview containing the profile pictures of the various servicemen, and a tabbar 

displaying the discover and explore options that can be toggled. The slivertoboxadapter is composed of a 

textield where one can search for a serviceman and a listview of trending and recommended services nearby.

There is also a textbutton navigating one to the map page

*map_page.dart*- One can navigate to this page upon pressing the open maps text button on the home page.

This page is composed of a map and a pageview displaying multiple cards of the servicemen located nearby 

complete with information about the servicemen. It also displays some mock locations of servicemen located

nearby

*profile_page.dart*- This page is composed of information about the respective servicemen. On top of the

column, there is a background image and the profile pic of the serviceman is positioned at the bottom of the

image via a stack widget. We also display info such as name, description and rating of the servicemen. There

is also a textbutton opening up a showmodalbottomsheet displaying the bio information of the serviceman.

There are two button displaying info on sharing the profile or adding the serviceman to the team. This is
 
then followed by a staggeredgridview displaying the images of works done by the service men. There is also a

floatingactionbutton at the bottom of the screen prompting the user to schedule with the serviceman
