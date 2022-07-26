json.user do
    json.id @user.id
    json.name @user.name
    json.password @user.password
    json.mail @user.mail
    json.address @user.address
    json.role @user.role
end
