json.data do
  json.contacts JSON
    .parse(
      @contacts.group_by_first_char.to_json(include: %i[phones emails])
    )
end
