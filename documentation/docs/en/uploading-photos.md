Photos document what litter is being collected. This is extended by the users device that captures the moment where and when the data was captured.<br />
Users can upload images with our app, or images can be uploaded to (openlittermap.com/upload)[openlittermap.com/upload]<br />
Only geotagged photos are accepted.<br />
Geotagged photos contain an EXIF metadata header that includes the GPS oordinates where the photo was taken and its timestamp.

### Controllers
When uploading to web, we visit `/upload` and make a post request to `PhotosController@store` at the same url.

### Hosting
Images are uploaded to S3 on production, or they will be saved locally if you are testing

### Reverse Geocoding
After extracting the GPS, we make a reverse geocode request to get the available address data from OpenStreetMap <3. These keys are values are saved to OLM, which we iterate over to extract the Country, State and City strings to build our list of locations. As users upload photos to OLM, these values are used to populate our list of locations dynamically. However, there are inconsistencies with OSM data and our implementation does not always classify locations into our 3 location types (Country, State and City). More research is needed here.

### Verification
To achieve good quality data that can train our AI, all of photos are currently being manually verified. Read more about The [Verification 
Process](verification-process.md)

### XP (experience points)
+1 xp is given for image uploaded