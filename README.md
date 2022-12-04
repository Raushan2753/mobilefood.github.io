In this project, we have the data about Food Trucks in San Francisco. The link for the same is 
(https://data.sfgov.org/Economy-and-Community/Mobile-Food-Facility-Permit/rqzj-sfat)
Here I have build an API which allows the following operations on this data set
1. Search by name of applicant
2. Search by expiration date, to find whose permits have expired
3. Search by street name
4. Add new food truck entry to the dataset
5. Given a delivery location, find out the closest truck possible.

For the closet trck possible, I have used a gem called Geokit, and implemented the act_as_mappable function to calculate the distance between two points whose latitude and longitude are given.
