ActiveAdmin.register Claim do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :content
index do 
    column :id
    column :content
    column :created_at
    actions
end
form do |f| 
    f.input :content
   
    actions 
end


end
