ActiveAdmin.register User do
  permit_params(:email)
    index do
        selectable_column #l check bos l gmb l row
        id_column
        column :email
        column :created_at
        actions
      end   
      filter :email
      #to customize the sow
      show do |user|
        attributes_table do
        row :email
        end
      end 

end