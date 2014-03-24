class Person < ActiveRecord::Base
    attr_accessible :age, :first_name, :last_name
end

Person.new first_name: "Andrew", last_name: "Burgess", age: 22

/**
  INSERT INTO "people" ("age", "created_at", "first_name", "last_name", "updated_at")
  VALUES (?, ?, ?, ?, ?)  [["age", 30], ["created_at", Fri, 15 Feb 2013 16:02:18 UTC +00:00],
  ["first_name", "John"], ["last_name", "Doe"],
  ["updated_at", Fri, 15 Feb 2013 16:02:18 UTC +00:00]]

**/

Person.offset(0).limit(10).find_by_last_name(params[:search_term])