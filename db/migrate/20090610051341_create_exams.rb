class CreateExams < ActiveRecord::Migration
  def self.up
    create_table :exams do |t|
      t.string :name
      t.integer :time

      t.timestamps
    end
    Exam.create(:name => 'M_0-50')
  end

  def self.down
    drop_table :exams
  end
end
