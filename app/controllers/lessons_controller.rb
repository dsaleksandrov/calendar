class LessonsController < ApplicationController
  # GET /lessons
  # GET /lessons.json
 



  def index
if params[:plan_id]
@lessons = Lesson.where(:plan_id => params[:plan_id])
@plan_id=params[:plan_id]
else
@lessons = Lesson.all
end
  respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lessons;@plan_id }
    end
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lesson }
    end
  end

  # GET /lessons/new
  # GET /lessons/new.json
  def new
    @plan_id= params[:plan_id]
    @lesson = Lesson.new
    @lesson.plan_id=@plan_id

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lesson;@plan_id}
    end
  end

  # GET /lessons/1/edit
  def edit
    @lesson = Lesson.find(params[:id])
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(params[:lesson])

    respond_to do |format|
      if @lesson.save
        plan_id=@lesson.plan_id
        format.html { redirect_to local_lessons_path(plan_id)}
        format.json { head :no_content}
      else
        format.html { render action: "new" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lessons/1
  # PUT /lessons/1.json
  def update
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      if @lesson.update_attributes(params[:lesson])
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson = Lesson.find(params[:id])
    @plan_id=@lesson.plan_id
     @lesson.destroy

    respond_to do |format|
      format.html { redirect_to local_lessons_path(@plan_id) }
      format.json { head :no_content }
    end
  end
end
