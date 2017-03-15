class RemainingTabs < ActiveRecord::Migration[5.0]
  def change
  			add_column :examinations, :fetal_pos_presentation, :string
				add_column :examinations, :fetal_pos_gestation_loc, :string
				add_column :examinations, :fetal_pos_probes, :string
				add_column :examinations, :fetal_pos_scan_quality, :string
				add_column :examinations, :fetal_pos_study_tech, :string
				
				add_column :examinations, :fetal_heart_4chamber, :string
				add_column :examinations, :fetal_heart_locsz, :string
				add_column :examinations, :fetal_heart_rhythm, :string
				add_column :examinations, :fetal_heart_lout, :string
				add_column :examinations, :fetal_heart_rout, :string
				add_column :examinations, :fetal_heart_venous_sys, :string
				
				add_column :examinations, :fetal_anat_intercranial, :string
				add_column :examinations, :fetal_anat_nf, :float
				add_column :examinations, :fetal_anat_lvwidth, :float
				add_column :examinations, :fetal_anat_face, :string
				add_column :examinations, :fetal_anat_thorax, :string
				add_column :examinations, :fetal_anat_spine, :string
				add_column :examinations, :fetal_anat_upper_extrm, :string
				add_column :examinations, :fetal_anat_lower_extrm, :string
				add_column :examinations, :fetal_anat_abdominal_wall, :string
				add_column :examinations, :fetal_anat_abdominal_cavity, :string
				add_column :examinations, :fetal_anat_stomach, :string
				add_column :examinations, :fetal_anat_bladder, :string
				add_column :examinations, :fetal_anat_rkidney, :string
				add_column :examinations, :fetal_anat_lkidney, :string
				add_column :examinations, :fetal_anat_skeletal, :string
				add_column :examinations, :fetal_anat_gender, :string
				
				add_column :examinations, :maternal_anat_cervix, :string
				add_column :examinations, :maternal_anat_cervix_length, :float
				add_column :examinations, :maternal_anat_internalos, :string
				add_column :examinations, :maternal_anat_os_distance, :float
				
				add_column :examinations, :amniotic_afi, :float
				add_column :examinations, :amniotic_sdp, :float
				add_column :examinations, :amniotic_findings, :string
				
				add_column :examinations, :biometry_bpd, :float
				add_column :examinations, :biometry_hc, :float
				add_column :examinations, :biometry_ac, :float
				add_column :examinations, :biometry_fl, :float
				add_column :examinations, :biometry_hum, :float
				add_column :examinations, :biometry_cer, :float
				add_column :examinations, :biometry_cm, :float
				add_column :examinations, :biometry_ofd, :float
  end
end
