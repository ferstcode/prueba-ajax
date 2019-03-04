# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user= AdminUser.find_by(email: 'admin@example.com')
if @user.present?
    @user= AdminUser
else
    AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if AdminUser.where(email: 'admin@example.com').blank?
end



30.times do 
    User.create(
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end

@users = User.all

20.times do
Company.create(
    name: Faker::Company.name
)
end

@companies = Company.all
250.times do 
Claim.create(
    user: @users.sample,
    company: @companies.sample,
    content: Faker::App.author
    ) 
    
end





