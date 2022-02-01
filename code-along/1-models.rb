# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# model is a class that represents a table in the database
# database in ruby on rails lives in "db"


# 1a. check out the schema file
# ruby hash = database row

# 1b. check out the model file

    puts "There are now #{Company.all.count} companies in the database."



# 2. create new companies

    values = {name: "Apple, Inc.", url: "apple.com", city: "Cupertino", state: "CA"}
    apple = Company.new(values) #creating new company in memory
    apple.save                  #saving and committing new company to database

    values = {name: "Amazon, Inc.", url: "amazon.com", city: "Seatlle", state: "WA"}
    amazon = Company.new(values) 
    amazon.save                

    puts "There are now #{Company.all.count} companies in the database."



# 3. query companies table

    # puts Company.all.inspect #shows you data inside
    # puts Company.all

    # puts Company.where({state: "CA"}) --> expecting a Hash function inside
    california_company = Company.where({state: "CA"})[0] #Company.where... is an array, expecing a hash as an argument
    puts california_company.inspect



# 4. read column values from row

    puts california_company.read_attribute(:url)
    puts california_company.url #same as above



# 5. update attribute value

    california_company.write_attribute(:slogan, "Think different.")
    california_company.slogan = "Think different."
    california_company.save #updating original record

    puts california_company.inspect

    new_company = Company.new
    new_company.name = "Tesla, Inc."
    new_company.url = "tesla.com"
    new_company.city = "Palo Alto"
    new_company.state = "CA"
    new_company.save
