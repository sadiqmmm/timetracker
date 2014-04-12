class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.datetime :datetime_performed
      t.decimal :hours, precision: 5, scale: 2

      t.references :project, index: true
      t.references :user, index: true
      
      t.timestamps
    end
  end
end
