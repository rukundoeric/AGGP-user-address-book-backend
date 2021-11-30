json.data do
  json.user do
    json.call(
      @user,
      :fullname,
      :username
    )
    json.current_user @current_user
  end
end
