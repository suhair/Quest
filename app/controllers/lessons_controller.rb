class LessonsController < ApplicationController
  before_filter :fetch_course
  # GET /lessons
  # GET /lessons.xml
  def index
    @lessons = @course.lessons.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lessons }
    end
  end

  # GET /lessons/1
  # GET /lessons/1.xml
  def show
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lesson }
    end
  end

  # GET /lessons/new
  # GET /lessons/new.xml
  def new
    @lesson = Lesson.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lesson }
    end
  end

  # GET /lessons/1/edit
  def edit
    @lesson = Lesson.find(params[:id])
  end

  # POST /lessons
  # POST /lessons.xml
  def create
    @lesson = @course.lessons.new(params[:lesson])

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to([@course, @lesson], :notice => 'Lesson was successfully created.') }
        format.xml  { render :xml => @lesson, :status => :created, :location => @lesson }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lessons/1
  # PUT /lessons/1.xml
  def update
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      if @lesson.update_attributes(params[:lesson])
        format.html { redirect_to([@course, @lesson], :notice => 'Lesson was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lesson.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.xml
  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

    respond_to do |format|
      format.html { redirect_to(course_lessons_url) }
      format.xml  { head :ok }
    end
  end

  private

  def fetch_course
    @course = Course.find(params[:course_id])
  end

end
