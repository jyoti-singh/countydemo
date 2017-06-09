ActiveAdmin.register Category do
 permit_params :name,:countytype_id
  index do
    id_column
    column :countytype_id
    column :name
    actions
  end
   config.sort_order = "created_at_asc"                        
end
