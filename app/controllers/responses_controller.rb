class ResponsesController < ApplicationController
  # GET /responses
  # GET /responses.xml
  def index
    @responses = Response.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @responses }
    end
  end

  # GET /responses/1
  # GET /responses/1.xml
  def show
    @response = Response.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @response }
    end
  end

  # GET /responses/new
  # GET /responses/new.xml
  def new
    @response = Response.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @response }
    end
  end

  # GET /responses/1/edit
  def edit
    @response = Response.find(params[:id])
  end

  # POST /responses
  # POST /responses.xml
  def create
    @response = Response.new(params[:response])

    respond_to do |format|
      if @response.save
        #flash[:notice] = 'Response was successfully created.'

        if request.xhr?
          if (next_q_id = next_question?)
            @exam = Exam.find(params[:exam_id])
            @question = Question.find(next_q_id, :conditions => ['exam_id = ?', @exam])
            @response = Response.new
          end
        end

        format.js { render :template => 'responses/create', :locals => { :another => next_question? } } # run create.js.rjs
        format.html { next_question?(true) }
        format.xml  { render :xml => @response, :status => :created, :location => @response }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @response.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /responses/1
  # PUT /responses/1.xml
  def update
    @response = Response.find(params[:id])

    respond_to do |format|
      if @response.update_attributes(params[:response])
        flash[:notice] = 'Response was successfully updated.'
        format.html { redirect_to(@response) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @response.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.xml
  def destroy
    @response = Response.find(params[:id])
    @response.destroy

    respond_to do |format|
      format.html { redirect_to(responses_url) }
      format.xml  { head :ok }
    end
  end


  #------
  private


  # checks to see if there is a next questio and
  # returns false or the id of the next question.
  # If forward is true then we'll forward instead
  # accordingly.
  def next_question?(forward = false)
    e = Exam.find(params[:exam_id])
    max = e.question.size
    next_q = params[:response][:question_id].to_i+1

    logger.info("q: #{next_q} == max: #{max}")
    if next_q <= max
      if forward
        redirect_to ask_exam_question_url(e, next_q )
      else
        next_q
      end
    else
      flash[:notice] = 'All done!'
      if forward
        redirect_to exams_url
      else
        false
      end
    end
  end


end
