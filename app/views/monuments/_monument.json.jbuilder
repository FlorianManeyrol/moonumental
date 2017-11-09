json.extract! monument, :name, :tagline, :url, :id

json.user do
  json.extract! monument.user, :avatar_url
end

json.up_votes monument.votes_for.count

if user_signed_in?
  json.up_voted current_user.voted_for? monument
end
