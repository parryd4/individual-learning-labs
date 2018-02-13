class Material < ApplicationRecord
  belongs_to :lab
  belongs_to :user

  # Custom setter/getters were causing no method errors when form was called

  # def lab_title=(title)
  #   self.lab = Lab.find_or_create_by(title: title)
  # end
  #
  # def lab_title
  #   self.lab.title
  # end

end
