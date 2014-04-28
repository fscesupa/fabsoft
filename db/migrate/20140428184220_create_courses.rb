class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :workload
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :max_cap
      t.integer :min_cap
      t.string :image

      t.timestamps
    end
  end
end
