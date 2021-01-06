ActiveAdmin.register Participant do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :first_name, :last_name, :address, :zipcode, :city, :company, :event_id, :workshop
  permit_params :email, :first_name, :last_name, :company, :organization, :position, :accepted_conditions, bookings_attributes: [:id, :workshop_id, :status]
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :first_name, :last_name, :address, :zipcode, :city, :company, :event_id, :workshop]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
