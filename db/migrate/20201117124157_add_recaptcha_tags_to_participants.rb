class AddRecaptchaTagsToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :recaptcha_tags, :boolean
  end
end
