json.client do
  json.id @client.id
  json.name @client.name
  json.last_name @client.last_name
  json.email @client.email
  json.adress @client.adress
  json.password @client.password
  json.block @client.block
end
