class Todolist < ActiveRecord::Base
  has_many :todoitems
  belongs_to :user
end
