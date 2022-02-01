class Company < ApplicationRecord

# creating associations between models
    # def contacts
    #    Contact.where({company_id: id})
    #end

has_many :contacts #built in function in rails to create associations

end
