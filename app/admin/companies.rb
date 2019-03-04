ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name
index do 
    column :id
    column :name 
    column :created_at
    actions
end
form do |f| 
    f.input :name
   
    actions 
end 


end
