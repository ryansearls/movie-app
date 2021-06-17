require "http"

  response = HTTp.get("http://localhost:3000/all_movies")

  p response.parse(:json)