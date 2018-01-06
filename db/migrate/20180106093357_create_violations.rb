class CreateViolations < ActiveRecord::Migration[5.0]
  def change
    create_table :violations do |t|
      t.string :name
      t.string :first_offense_penalty
      t.string :second_offense_penalty
      t.string :third_offense_penalty
      
      t.timestamps
    end
  end
end
