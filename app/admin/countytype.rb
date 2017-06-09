ActiveAdmin.register Countytype do
permit_params :type
  index do
    id_column
    column :type
    actions
  end
   config.sort_order = "created_at_asc"          
end
