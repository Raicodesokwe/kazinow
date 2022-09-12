# model folder

## Description

In this folder,we model out various mock payloads that we shall display on our app

## Content

*explore_service.dart*- In this file, we model out the exploreservicelist that is composed of ExploreService

widgets with three properties namely: pic, service and number. We then use this list to display images in
 
the profile page with exploreservicelist[index].pic. We also display the service offered by a person with
  
exploreservicelist[index].service and the number of pros available in a given area for a certain service
   
with exploreservicelist[index].number. All this is done inside a Listview.builder in the homepage


*map_marker.dart*- In this file, we model out the mapMarkers list that is composed of MapMarker widgets with

four properties namely: location, number, job, name and image. We then use this list to display different 

mock locations on our map in the map page with mapItem.location. We also display the images of servicemen 

nearby with mapMarker.image and the job name with mapMarker.job.


*profile_view.dart*- In this file, we model out the profileviewlist that is composed of ProfileView widgets

with four properties namely videoView, profilePic, description and name. We use this list in the profile

page. We display a background profile image with profileviewList[index].videoView!. We display the profile

pic of the serviceman with profileviewList[index].profilePic!. We display the job description of the 

serviceman with profileviewList[index].description! and display the name of the serviceman with

profileviewList[index].name!
