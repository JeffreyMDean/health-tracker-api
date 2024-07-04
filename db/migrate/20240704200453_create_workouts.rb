class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.date :date
      t.string :workout_type
      t.integer :duration

      t.timestamps
    end
  end
end
