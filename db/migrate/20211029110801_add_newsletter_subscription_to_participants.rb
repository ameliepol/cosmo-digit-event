class AddNewsletterSubscriptionToParticipants < ActiveRecord::Migration[6.0]
  def change
    add_column :participants, :newsletter_subscription, :boolean
  end
end
