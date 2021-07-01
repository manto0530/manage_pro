class CreateProjectUserRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :project_user_relationships do |t|
      t.integer :user_id
      t.integer :project_id
      t.boolean :incharge

      t.timestamps
    end
  end
end
