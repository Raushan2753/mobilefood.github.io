In this project, we have the data about Food Trucks in San Francisco. The link for the same is 
(https://data.sfgov.org/Economy-and-Community/Mobile-Food-Facility-Permit/rqzj-sfat)
Here I have build an API which allows the following operations on this data set
1. Search by name of applicant
2. Search by expiration date, to find whose permits have expired
3. Search by street name
4. Add new food truck entry to the dataset
5. Given a delivery location, find out the closest truck possible.

For the closest truck possible, I have used a gem called Geokit, and implemented the act_as_mappable function to calculate the distance between two points whose latitude and longitude are given.

The curl for search by name of applicant is 
curl --location --request GET 'http://localhost:3000/mobile_food/name?name=Ziaurehman Amini' \
--header 'Cookie: __profilin=p%3Dt'

Response is :
[
    {
        "id": 1,
        "Applicant": "Ziaurehman Amini",
        "FacilityType": "Push Cart",
        "locationid": 735318,
        "cnn": 30727000,
        "X": 6013916,
        "Y": 2117244,
        "Latitude": 37,
        "Longitude": -122,
        "LocationDescription": "MARKET ST: DRUMM ST intersection",
        "Address": "5 THE EMBARCADERO",
        "blocklot": "234017",
        "block": "234",
        "lot": "17",
        "permit": "15MFF-0159",
        "Status": "REQUESTED",
        "FoodItems": null,
        "Schedule": null,
        "NOISent": null,
        "Approved": null,
        "Received": 20151231,
        "PriorPermit": false,
        "ExpirationDate": null
    },
    {
        "id": 326,
        "Applicant": "Ziaurehman Amini",
        "FacilityType": "Push Cart",
        "locationid": 735315,
        "cnn": 4969000,
        "X": 6013552,
        "Y": 2116844,
        "Latitude": 37,
        "Longitude": -122,
        "LocationDescription": "DRUMM ST: MARKET ST to CALIFORNIA ST (1 - 6)",
        "Address": "1 CALIFORNIA ST",
        "blocklot": "264004",
        "block": "264",
        "lot": "4",
        "permit": "15MFF-0159",
        "Status": "REQUESTED",
        "FoodItems": null,
        "Schedule": null,
        "NOISent": null,
        "Approved": null,
        "Received": 20151231,
        "PriorPermit": false,
        "ExpirationDate": null
    }
]

2. The curl for search by expiration date is 
curl --location --request GET 'http://localhost:3000/mobile_food/expired_permits?expired_date=02-12-2024' \
--header 'Cookie: __profilin=p%3Dt'

Response for above curl is :
[
    {
        "id": 239,
        "Applicant": "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
        "FacilityType": "Push Cart",
        "locationid": 1265606,
        "cnn": 10628000,
        "X": 6010333,
        "Y": 2115237,
        "Latitude": 37,
        "Longitude": -122,
        "LocationDescription": "POST ST: STOCKTON ST to POWELL ST (300 - 399)",
        "Address": "384 POST ST",
        "blocklot": "295007",
        "block": "295",
        "lot": "7",
        "permit": "19MFF-00001",
        "Status": "REQUESTED",
        "FoodItems": "American Food: Hot dogs: pretzels: ice cream: salads: beverages: sandwiches: soup: coffee: pastries:etc.",
        "Schedule": null,
        "NOISent": null,
        "Approved": null,
        "Received": 20190107,
        "PriorPermit": false,
        "ExpirationDate": "2020-07-01"
    },
    {
        "id": 250,
        "Applicant": "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
        "FacilityType": "Push Cart",
        "locationid": 1265597,
        "cnn": 10628000,
        "X": null,
        "Y": null,
        "Latitude": 0,
        "Longitude": 0,
        "LocationDescription": "POST ST: STOCKTON ST to POWELL ST (300 - 399)",
        "Address": "Assessors Block /Lot",
        "blocklot": null,
        "block": null,
        "lot": null,
        "permit": "19MFF-00001",
        "Status": "REQUESTED",
        "FoodItems": "American Food: Hot dogs: pretzels: ice cream: salads: beverages: sandwiches: soup: coffee: pastries:etc.",
        "Schedule": null,
        "NOISent": null,
        "Approved": null,
        "Received": 20190107,
        "PriorPermit": false,
        "ExpirationDate": "2020-07-01"
    },
    {
        "id": 293,
        "Applicant": "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
        "FacilityType": "Push Cart",
        "locationid": 1265569,
        "cnn": 10678000,
        "X": 6010120,
        "Y": 2114926,
        "Latitude": 37,
        "Longitude": -122,
        "LocationDescription": "POWELL ST: GEARY ST to POST ST (300 - 399)",
        "Address": "331 POWELL ST",
        "blocklot": "307001",
        "block": "307",
        "lot": "1",
        "permit": "19MFF-00001",
        "Status": "REQUESTED",
        "FoodItems": "American Food: Hot dogs: pretzels: ice cream: salads: beverages: sandwiches: soup: coffee: pastries:etc.",
        "Schedule": null,
        "NOISent": null,
        "Approved": null,
        "Received": 20190107,
        "PriorPermit": false,
        "ExpirationDate": "2020-07-01"
    },
    {
        "id": 317,
        "Applicant": "San Francisco Carts & Concessions, Inc. DBA Stanley's Steamers Hot Dogs",
        "FacilityType": "Push Cart",
        "locationid": 1265607,
        "cnn": 6109000,
        "X": null,
        "Y": null,
        "Latitude": 0,
        "Longitude": 0,
        "LocationDescription": "GEARY ST: STOCKTON ST to POWELL ST (200 - 299)",
        "Address": "Assessors Block /Lot",
        "blocklot": null,
        "block": null,
        "lot": null,
        "permit": "19MFF-00001",
        "Status": "REQUESTED",
        "FoodItems": "American Food: Hot dogs: pretzels: ice cream: salads: beverages: sandwiches: soup: coffee: pastries:etc.",
        "Schedule": null,
        "NOISent": null,
        "Approved": null,
        "Received": 20190107,
        "PriorPermit": false,
        "ExpirationDate": "2020-07-01"
    }
]

3. The curl for search by street name is :
curl --location --request GET 'http://localhost:3000/mobile_food/address?address=5 THE EMBARCADERO' \
--header 'Cookie: __profilin=p%3Dt'

Response for the above is:
[
    {
        "id": 1,
        "Applicant": "Ziaurehman Amini",
        "FacilityType": "Push Cart",
        "locationid": 735318,
        "cnn": 30727000,
        "X": 6013916,
        "Y": 2117244,
        "Latitude": 37,
        "Longitude": -122,
        "LocationDescription": "MARKET ST: DRUMM ST intersection",
        "Address": "5 THE EMBARCADERO",
        "blocklot": "234017",
        "block": "234",
        "lot": "17",
        "permit": "15MFF-0159",
        "Status": "REQUESTED",
        "FoodItems": null,
        "Schedule": null,
        "NOISent": null,
        "Approved": null,
        "Received": 20151231,
        "PriorPermit": false,
        "ExpirationDate": null
    },
    {
        "id": 413,
        "Applicant": "San Francisco Street Foods, Inc.",
        "FacilityType": "Push Cart",
        "locationid": 1585475,
        "cnn": 30049000,
        "X": 6013916,
        "Y": 2117244,
        "Latitude": 37,
        "Longitude": -122,
        "LocationDescription": "DRUMM ST: CALIFORNIA ST intersection",
        "Address": "5 THE EMBARCADERO",
        "blocklot": "0234 017",
        "block": "234",
        "lot": "17",
        "permit": "21MFF-00146",
        "Status": "EXPIRED",
        "FoodItems": "Hot dogs: condiments: soft pretzels: soft drinks: coffee: cold beverages: pastries: bakery goods: cookies: ice cream: candy: soups: churros: chestnuts: nuts: fresh fruit: fruit juices: desserts: potato chips and popcorn.",
        "Schedule": null,
        "NOISent": null,
        "Approved": null,
        "Received": 20211217,
        "PriorPermit": true,
        "ExpirationDate": null
    }
]

4. The curl for finding the closest truck is:
curl --location --request GET 'http://localhost:3000/mobile_food/nearest?latitude=37.794331003246846&longitude=-122.39581105302317' \
--header 'Cookie: __profilin=p%3Dt'

response for the above is:
[
    {
        "id": 1,
        "Applicant": "Ziaurehman Amini",
        "FacilityType": "Push Cart",
        "locationid": 735318,
        "cnn": 30727000,
        "X": 6013916,
        "Y": 2117244,
        "Latitude": 37,
        "Longitude": -122,
        "LocationDescription": "MARKET ST: DRUMM ST intersection",
        "Address": "5 THE EMBARCADERO",
        "blocklot": "234017",
        "block": "234",
        "lot": "17",
        "permit": "15MFF-0159",
        "Status": "REQUESTED",
        "FoodItems": null,
        "Schedule": null,
        "NOISent": null,
        "Approved": null,
        "Received": 20151231,
        "PriorPermit": false,
        "ExpirationDate": null
    }
]
