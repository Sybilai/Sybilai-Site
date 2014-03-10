ActiveAdmin.register Page do

  controller do
    defaults finder: :find_by_permalink
  end

  permit_params :name, :content, :permalink
    
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :permalink
      f.input :content
    end
    f.actions
  end

  index do
    column :id
    column :name
    column :permalink
    default_actions
  end
end
