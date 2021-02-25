require "http"

response = HTTP.get("http://localhost:3000/api/an_actor")

first_name = response.parse["actor"]["first_name"]
last_name = response.parse["actor"]["last_name"]
known_for = response.parse["actor"]["known_for"]

p "#{first_name} #{last_name} is knwon for his acting in the movie#{known_for}"
