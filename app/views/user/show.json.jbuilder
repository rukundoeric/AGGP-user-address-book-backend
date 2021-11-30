json.data do
  json.user do
    json.call(
      @user,
      :id,
      :fullname,
      :username
    )
  end
end
