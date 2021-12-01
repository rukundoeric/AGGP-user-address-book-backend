json.data do
  json.contact JSON
    .parse(
      @contact.to_json(include: %i[phones emails])
    )
end
