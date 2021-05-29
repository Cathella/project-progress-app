class CreateReports < ActiveRecord::Migration[6.1]
  def change
    create_table :reports do |t|
      t.string :title
      t.string :status
      t.text :comment
      t.references :project

      t.timestamps
    end
  end
end
