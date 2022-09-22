# Api folder

## Description

In this folder, we consume the currency converter api

## Configuration

*api_provider.dart*-Consists of the convert currency future that we call

when consuming the currency converter Api. We use the Dio package to make

network requests.We pass the from currency and to currency properties to 

the payload baseurl. We also pass the apikey as a query parameter. We 

create a constructor to pass the Dio object that shall be useful when 

testing

*api_repository.dart*- Serves as a repository for the future methods that 

we use to consume our APIs