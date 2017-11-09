json.array! @monuments do |monument|
  json.partial! "monuments/monument", monument: monument
end
