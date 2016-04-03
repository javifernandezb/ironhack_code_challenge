# Ironhack code challenge

[Heroku Link] (https://calm-falls-75702.herokuapp.com/)

###Load fixtures
```
rake db:fixtures:load
```

###Test credentials

>**email:** st1@ironhack.com

>**password:** pw1


###Get user exercises
```
curl -X GET -H "Authorization: Basic c3QxQGlyb25oYWNrLmNvbTpwdzE=" -H "Accept: application/json" -H "Content-Type: application/json" "https://calm-falls-75702.herokuapp.com/api/exercises.json"
```

###User completes an exercise
```
curl -X POST -H "Authorization: Basic c3QxQGlyb25oYWNrLmNvbTpwdzE=" -H "Content-Type: application/json" -H "Accept: application/json" -d '{ "pre_work_id": 1, "url": "url1", "completed": 1 }' "https://calm-falls-75702.herokuapp.com/api/exercises"
```

###Get user progress
```
curl -X GET -H "Authorization: Basic c3QxQGlyb25oYWNrLmNvbTpwdzE=" -H "Content-Type: application/json" -H "Accept: application/json" "https://calm-falls-75702.herokuapp.com/api/progress"
```