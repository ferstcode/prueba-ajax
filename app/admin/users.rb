ActiveAdmin.register User do

permit_params :email, :password
index do 
    column :id
    column :email 
    column :created_at
    actions
end
form do |f| 
    f.input :email
    f.input :password 
    actions 
end 

controller do
    def update
        if (params[:user][:password].blank? && params[:user][:password_confirmation].blank?)
            params[:user].delete("password")
            params[:user].delete("password_confirmation")
        end
        super
    end
end



end
