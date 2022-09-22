# test folder

## Description

Contains various unit tests on methods called in our app

## Configuration

*api_provider_test.dart*- In this, we test an Api call to the currency 

converter endpoint. We use a dioadapter object from the http mock adapter

package. We create a test function and call an onget method on dioadapter

to simulate an API call. We call the currencyconverter method from the 

apiprovider and pass dummy data to the from and to currency parameters 

and the amount parameter. We then pass the response to the expect method 

and check whether its type matches the response type. We check the succes

case and failure case and place these two test methods in a group.

*currency_converter_bloc_test.dart*- In this , we test the currency  

converter bloc and check whether it emits a stream using a matcher method.

*from_currencies_provider_test.dart*- In this, we call the 

selectedfromcurrency function located in the from currencies provider and

pass an index and check whether the image or name property of the object 

located in that index matches

*to_currencies_provider_test.dart*- In this, we call the 

selectedtocurrency function located in the from currencies provider and

pass an index and check whether the image or name property of the object 

located in that index matches
