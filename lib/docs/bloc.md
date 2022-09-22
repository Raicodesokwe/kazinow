# bloc folder

## Description

In this folder, we implement bloc streams with which we consume data from the currency converter Api

## Configuration

*base_bloc.dart*- Serves as the base bloc from which we inherit to create 

our bloc classes

*currency_converter_bloc.dart*- In this class,we use streams from the 

rxdart package to get the vresponse from the currency converter api. This 

is done in the convertcurrency future. We create a modelsubject to which 

we add our stream response