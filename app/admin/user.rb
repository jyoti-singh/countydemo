ActiveAdmin.register User do
permit_params :name,:email,:phone_no,:description
 form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :phone_no
      f.input :description,:as => :ckeditor
    end
    f.actions
  end
end
