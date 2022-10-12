1- i create 3 pages (dart file) loading,home,and chose location
------------
2-in main i crate routes to these 3 pages  
3-in main i use initialroute that the app will start with override the routes
4-in main i used debugshowcheckmodebanner set to false to hide the above lable
5-in main i import 3 pages and metarial.dart
---------
-in loading page (statefull widget) i set initstate that will run a function
afunction in async and i create object of class and send parameters to constrater
after send parameters to class i call a function inside class and its await
await mean finish the func and go to next line after finishing
the func in class is async it contain get(url) api and its await
after we get response from api we use jsonedecode to open response body and
put the result in map,from map we extrct the data we need we get time and offset
then i formate the date and add offset to it
then i update the variabls
the class contain variables and try catch
if there is eror during get api print error or set the error exception in time variable
to displa to user
also inport material,http for api,convert for ormate time,intel for format te time
----
the class job is resive location to displa on ui ad url to use it in api and flag to display also
and it will get the data from api and reset value to variables
------
afterloading page call api class
it pushReplace to home page with arguments (new data)
also i hv parameter name isdaytime it contain true or false to determane what background to use in home
----
in loading build ijust used spinner widget for loading during callclass and pushreplace to home page
-----------
i inport in loading a material,classi use and spinkit
-----------------------------
in home page
in home we define map
and recive the argument from loading
featch the map and display data in build
also in home we have button to forward us to chose loacation page
the button on press function is async
it push to chose location and await the result from chose then conteniue
in chose_location we define list of class(api class) type the list contain all cityes we want

in build of chose location we send index of clicked list item to a async function
that fnction will get all values from list and call class (send paramerter to constractr)
and call class function and its await after get time values from class then pop to home back
with new values for display
we return to home page
we setstate to update value on home page we update data variable of map
and rebuild first step on rebuild will check the data (map) if empty or not if empty mean its first load and will set the argument recived from loading page else will set new data(map recived from chose page 

what i used in this app>>>>
in main 
-debugShowCheckedModeBanner
-routes
-initialRoute

in loading page 
-initState
-async func
-pushReplacementNamed
-send argument parameters to another page 
-SpinKitFoldingCube

in home 
-ModalRoute to recive parameters arugment from another page 
-SafeArea
-MAP
-async button
-setstate

in chose location page 
-list of class
-initState
-ListView.builder
-ListTile
-Navigator.pop (pop with parameters)

in worldtime class
-variables
-constractor
-try catch
-future
-get (for api)
-Map
-
