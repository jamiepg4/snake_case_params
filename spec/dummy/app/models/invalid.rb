class Invalid
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :id, :camel_case_me
  validates_presence_of :id, :camel_case_me
end
