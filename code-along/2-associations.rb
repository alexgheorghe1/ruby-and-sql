# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-associations.rb

# 1. Query all of the contacts at Apple Inc.

    apple = Company.where({name: "Apple, Inc."})[0]
    apple_id = apple.id
    # contacts = Contact.where({company_id: apple_id})

    puts "Contacts at Apple, Inc."
    for contact in apple.contacts
        puts "#{contact.first_name} #{contact.last_name} - "
    end


# 2. add association to contacts in Company model

    # has_many :contacts #built in function in rails to create associations


# 3. add association to company in Contact model

    #belongs_to :company #create association between contacts and companies