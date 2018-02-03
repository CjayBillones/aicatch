class CreateViolations < ActiveRecord::Migration[5.0]
  def change
    create_table :violations do |t|
      t.string :name
      t.decimal :fixed_penalty, default: 0
      t.decimal :first_offense_penalty
      t.decimal :second_offense_penalty
      t.decimal :third_offense_penalty
      
      t.timestamps
    end
  end
end
