class AddProvisionedNumberIdToClientTextConversations < ActiveRecord::Migration
  def change
    add_column :client_text_conversations, :provisioned_number_id, :integer
  end
end
