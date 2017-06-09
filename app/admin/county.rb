ActiveAdmin.register County do
permit_params :name,:state_id
  index do
    id_column
    column :state_id
    column :name
    actions
  end
   config.sort_order = "created_at_asc"          
end
