# ironhack_code_challenge
Ironhack code challenge

Load fixtures
rake db:fixtures:load

Heroku URL
https://calm-falls-75702.herokuapp.com/

email: st1@ironhack.com
passwrod: pw1

Get user exercises with basic auth (username: st1@ironhack.com, password: pw1)
curl -X GET -H "Authorization: Basic c3QxQGlyb25oYWNrLmNvbTpwdzE=" -H "Accept: application/json" -H "Content-Type: application/json" "https://calm-falls-75702.herokuapp.com/api/exercises.json"

User completes an exercise (username: st1@ironhack.com, password: pw1)
curl -X POST -H "Authorization: Basic c3QxQGlyb25oYWNrLmNvbTpwdzE=" -H "Content-Type: application/json" -H "Accept: application/json" -d '{ "pre_work_id": 1, "url": "url1", "completed": 1 }' "https://calm-falls-75702.herokuapp.com/api/exercises"

Get user progress (username: st1@ironhack.com, password: pw1)
curl -X GET -H "Authorization: Basic c3QxQGlyb25oYWNrLmNvbTpwdzE=" -H "Content-Type: application/json" -H "Accept: application/json" "https://calm-falls-75702.herokuapp.com/api/progress"