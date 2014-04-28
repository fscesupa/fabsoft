class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms, id: false do |t|
      t.belongs_to :course, index: true
      t.belongs_to :user, index: true
      t.string :paid, limit: 1
      t.date :payment_date
      t.date :validity_date

      t.timestamps
    end
  end
end
