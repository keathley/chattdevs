class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :company_name
      t.string :company_website
      t.text :how_to_apply

      t.timestamps
    end
  end
end
