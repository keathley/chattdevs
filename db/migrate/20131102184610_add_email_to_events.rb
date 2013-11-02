class AddEmailToEvents < ActiveRecord::Migration
  def change
    add_column :events, :email, :string
    add_column :events, :starts_at, :datetime
    add_column :events, :link, :string
    add_column :events, :approved, :boolean, :default => false
  end
end
