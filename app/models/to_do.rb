class ToDo
  include MongoMapper::Document

  key :text, String
  key :order,  Integer
  key :done,  String

end
