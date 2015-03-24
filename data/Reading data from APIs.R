# Accessing Twitter from R

myapp = oauth_app("twitter",key="0MD0wXBIpYRm04jMZm2QB1MwT",secret="moDfjieRIuAmDJCPo35CruGZWL7dDDexBpkjx8xWEQpazXHepm")
sig = sign_oauth1.0(myapp,token="2922122228-bpq6mh0VBLcQt8LgSEIT2t3vEudWGcYD5XXRGTE",token_secret="UtyiZZQgjHkbyKn2fteLYSo9xKeDlhZBTAxZxwQsnXCBn")
homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeline.json", sig)

# Converting the json object

json1 = content(homeTL)
json2 = jsonlite::fromJSON(toJSON(json1))
json2[1,1:4]