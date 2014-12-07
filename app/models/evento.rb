class Evento < ActiveRecord::Base
  belongs_to :editora
  belongs_to :user
end
