ActiveAdmin.register State do
  permit_params :name
  index do
    id_column
    column :name
    actions
  end
   csv_importable :columns => [:name],:import_unique_key => :name 
   config.sort_order = "created_at_asc"                        
end
