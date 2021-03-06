class QuestionsController < ApplicationController


  def ask
    session['total_score'] = nil
    session['score'] = nil

    @exam = Exam.find(params[:exam_id])
    @question = Question.find(params[:id], :conditions => ['exam_id = ?', @exam])
            @prev_question = Question.find(@question.id-1, :conditions => ['exam_id = ?', @exam]) unless @question.id == 1
    @response = Response.new
            logger.warn('WTF')
  end


  # GET /questions
  # GET /questions.xml
  def index
    @exam = Exam.find(params[:exam_id])
    @questions = @exam.question

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questions }
    end
  end

  # GET /questions/1
  # GET /questions/1.xml
  def show
    @exam = Exam.find(params[:exam_id])
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question }
    end
  end

  # GET /questions/new
  # GET /questions/new.xml
  def new
    @exam = Exam.find(params[:exam_id])
    @question = Question.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question }
    end
  end

  # GET /questions/1/edit
  def edit
    @exam = Exam.find(params[:exam_id])
    @question = Question.find(params[:id])
  end

  # POST /questions
  # POST /questions.xml
  def create
    @exam = Exam.find(params[:exam_id])
    @question = Question.new(params[:question])

    respond_to do |format|
      #if @question.save
      if @exam.question << @question 
        flash[:notice] = 'Question was successfully created.'
        format.html { redirect_to(exam_questions_url) }
        format.xml  { render :xml => @question, :status => :created, :location => @question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /questions/1
  # PUT /questions/1.xml
  def update
    @question = Question.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        flash[:notice] = 'Question was successfully updated.'
        format.html { redirect_to(@question) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.xml
  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to(exam_questions_url) }
      format.xml  { head :ok }
    end
  end
end
