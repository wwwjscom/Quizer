class CreateExams < ActiveRecord::Migration
  def self.up
    create_table :exams do |t|
      t.string :name
      t.integer :time

      t.timestamps
    end
    Exam.create(:name => 'M_0-5', :time => 1)
  end

  def self.down
    drop_table :exams
  end
end
