class CreateCartoons < ActiveRecord::Migration
  def change
    create_table :cartoons do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
