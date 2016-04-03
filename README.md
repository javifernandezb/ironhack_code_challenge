# ironhack_code_challenge
Ironhack code challenge

Load fixtures
rake db:fixtures:load

Get user exercises with basic auth (username: st1@ironhack.com, password: pw1)
curl -X GET -H "Authorization: Basic c3QxQGlyb25oYWNrLmNvbTpwdzE=" -H "Accept: application/json" -H "Content-Type: application/json" "http://localhost:3009/api/exercises.json"