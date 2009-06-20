class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.integer :exam_id
      t.string :question
      t.string :answer

      t.timestamps
    end
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'Various')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'Various')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'Various')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'Various')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'Various')
  end

  def self.down
    drop_table :questions
  end
end
