ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :admin, :first_name, :last_name, :company
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :admin, :first_name, :last_name, :company]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    column :id
    column :email
    column :first_name
    column :last_name
    column :company
    column :created_at
    column :admin
    actions
  end

  ActiveAdmin.register User do
  form do |f|
    f.inputs "Identity" do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :company
    end
    f.inputs "Admin" do
    f.input :admin
    end
    f.submit
  end

  permit_params :first_name, :last_name, :email, :company, :admin
end

end

