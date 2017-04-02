class ExaminationsController < ApplicationController
  before_action :set_examination, only: [:show, :edit, :update, :destroy]

  # GET /examinations
  # GET /examinations.json
  def index
    @examinations = Examination.all
    @study = params[:study]


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @examinations }
    end
  end

  # GET /examinations/1
  # GET /examinations/1.json
  def show
  end

	# GET /examinations/1/report
	def report
		#estimated delivery date
		@examination = Examination.find(params[:id])
		@edd = @examination[:demographics_lmp] >> 9
		
		#predictions based on various biometries
		#arbitrarily choose STAT*2.x
		@edd_bpd = @examination[:biometry_bpd]
		if(@edd_bpd)
			@edd_bpd = @edd_bpd*2.0
		end
		
		@edd_hc = @examination[:biometry_hc]
		if(@edd_hc)
			@edd_hc = @edd_hc*2.1
		end
		
		@edd_ac = @examination[:biometry_ac]
		if(@edd_ac)
			@edd_ac = @edd_ac*2.2
		end
		
		@edd_fl = @examination[:biometry_fl]
		if(@edd_fl)
			@edd_fl = @edd_fl*2.25
		end
	end

  # GET /examinations/new
  def new
    @examination = Examination.new
  end

  # GET /examinations/1/edit
  def edit
  end

  # POST /examinations
  # POST /examinations.json
  def create
    @examination = Examination.new(examination_params)

    respond_to do |format|
      if @examination.save
        format.html { redirect_to @examination, notice: 'Examination was successfully created.' }
        format.json { render :show, status: :created, location: @examination }
      else
        format.html { render :new }
        format.json { render json: @examination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examinations/1
  # PATCH/PUT /examinations/1.json
  def update
    respond_to do |format|
      if @examination.update(examination_params)
        format.html { redirect_to @examination, notice: 'Examination was successfully updated.' }
        format.json { render :show, status: :ok, location: @examination }
      else
        format.html { render :edit }
        format.json { render json: @examination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examinations/1
  # DELETE /examinations/1.json
  def destroy
    @examination.destroy
    respond_to do |format|
      format.html { redirect_to examinations_url, notice: 'Examination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examination
      @examination = Examination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examination_params
      params.require(:examination).permit(:study, :name, :voltage, :current, :exposure, 
      :demographics_study_location, :demographics_accession, :demographics_study_date, :demographics_history, 
      :demographics_gravida, :demographics_para, :demographics_lmp, :demographics_maternal_weight, 
      :fetal_pos_presentation, :fetal_pos_gestation_loc, :fetal_pos_probes, :fetal_pos_scan_quality, :fetal_pos_study_tech,
      :placenta_general, :placenta_longitude, :placenta_transverse, :placenta_appearance, :placenta_cord_vessels, :placenta_grade, :placenta_cord_ins, :placenta_chorionicity, 
      :fetal_heart_hrate, :fetal_heart_4chamber, :fetal_heart_locsz, :fetal_heart_rhythm, :fetal_heart_lout, :fetal_heart_rout, :fetal_heart_venous_sys, 
      :fetal_anat_general, :fetal_anat_intercranial, :fetal_anat_nf, :fetal_anat_lvwidth, :fetal_anat_face, :fetal_anat_thorax, :fetal_anat_spine, :fetal_anat_upper_extrm, :fetal_anat_lower_extrm, 
      :fetal_anat_abdominal_wall, :fetal_anat_abdominal_cavity, :fetal_anat_stomach, :fetal_anat_bladder, :fetal_anat_rkidney, :fetal_anat_lkidney, :fetal_anat_skeletal, :fetal_anat_gender, :maternal_anat_cervix, 
      :maternal_anat_cervix_length, :maternal_anat_internalos, :maternal_anat_os_distance, 
      :amniotic_afi, :amniotic_sdp, :amniotic_findings, 
      :biometry_bpd, :biometry_hc, :biometry_ac, :biometry_fl, :biometry_hum, :biometry_cer, :biometry_cm, :biometry_ofd,)
    end
end
