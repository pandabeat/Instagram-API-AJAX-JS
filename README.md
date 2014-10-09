Assignment: AJAX & 3rd Party APIs
Introduction
Goal: Create an app that fetches data from an external service using AJAX with jQuery Repository: N/A. You will be creating one from scratch. Duration: You should aim to have your app completed by the end of the day. It is not a multi­day project. Reminders:

Projects and unix commands are to be managed and run inside your vagrant box. Remember to vagrant ssh into your box.
Please create your own git repository on github.
Commit and push your progress on a regular basis.
We’ll be creating a JavaScript app that fetches data from 3rd party APIs. Data will be fetched using jQuery’s AJAX functionality. The APIs used will return data to us in JSON format.

In order to make our life easier, let’s download the JSONView Chrome Extension. It will allow us to see JSON data in an easy and readable format.

Remember that on most well­behaved JSON APIs, you can add a callback=nameOfYourFunctionparameter to the URL to have it spit back JSONP instead of just JSON. You need to do this since “Cross­Domain” AJAX requests are not allowed.

Option 1: Instagram Photos
Difficulty: Easy - ­Medium

Lighthouses are in. They are the fashion.

So let’s follow the trend and create an app that gets all recent images tagged with “lighthouse” from Instagram and shows them to us, one by one.

Signup URL: http://instagram.com/developer/

The following Instagram API endpoint allows us to search recent images (media) by tag. In our case, we’ll be using the tag “lighthouse” instead of their example which uses “snow” http://instagram.com/developer/endpoints/tags/#get_tags_media_recent

Your app will display only one image at a time. Every seconds, fade out that image and fade in the next image from the results from Instagram. It will essentially be slideshow of lighthouse imagery from instagram.

Hint: extract the image URL from the JSON data by referencing it like so:

json.data[index].images.standard_resolution.url
Where index is an integer variable

Enhancements: 1. Display the caption - Display the image caption underneath the image. It should of course change when the image changes. 2. Display additional data - Somewhere alongside the image, display the number of likes and comments. 3. Link to instagram page - Either make the entire image a link or add a link/button alongside the image that will take you to the instagram page for that image. It should open the URL in a new window or tab.

Option 2: Weather app
Difficulty: Medium - ­High(ish)

Why build another weather app? Because there are only like 3,420 different weather apps out there, and the jury is in: we need some more. So let’s all build one!

We’ll be using Weather Underground’s JSON API for this

Part 1: Search city
Allow the user to (partially) type in the name of a city into a text field. Upon submitting the data (clicking a button or hitting enter), display city names that match their search string.

Cities can be searched using WU’s Autocomplete API

Note: you do not need to signup for an account and get an API key for this endpoint. You will have to for the next part though.

Part 2: Weather information
When the user clicks the city, fetch and display the weather information for that city. The API documentation can be found here: http://www.wunderground.com/weather/api/d/docs

Please register and verify an account. After that, you can select the STRATUS plan as Developer ($0) to get your key.

Option 3: Pick another service
Pick another service and it’s public API. ProgrammableWeb.com has a great list of APIs. This list of popular APIs will help you filter the list to make sure the API supports JSON.

Ensure that the API supports JSONP and has some public API endpoints (URLs) that you can access, so you don’t have to worry about more complicated workflows like authentication. Most APIs require you to sign up for an API Key but this is usually a quick process.

Suggestions of other services to look into for your own idea: * 500px (eg: photo search) * last.fm (eg: album search) * github (eg: search repositories)