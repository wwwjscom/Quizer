class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.integer :exam_id
      t.string :question
      t.string :answer

      t.timestamps
    end
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'tura luka')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'myto pod dumbierom')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'brezno nad hronom')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'handlova')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'varin')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'secovce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'plavnica')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'dezerice')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'bogdanovce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'parnica')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'zakopcie')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'udavske')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'bijacovce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'lubenik')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'solosnica')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'maly lipnik')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'banka')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'nemce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'svaty kriz nad hronom')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'snina')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'batovce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'medzilaborce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'modry kamen')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'boleraz')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'prasice')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'dovalovo')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'kozarovce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'modranka')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'selce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'piarg')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'okruhle')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'priekopa')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'svaty ondrej nad hronom')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'lom nad hronom')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'pohorela')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'sered')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'dolny kubin')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'havaj')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'nadas')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'horne obdiekovce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'gnazda')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'sielnica')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'mnisek nad popradom')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'horne byhymcine')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'busevce')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'gocovo')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'malacky')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'hajniky')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'rakova')
    Question.create(:exam_id => 1, :question => 'Audio question', :answer => 'ruzomberok')
  end

  def self.down
    drop_table :questions
  end
end
