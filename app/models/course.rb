class Course < ActiveRecord::Base

	# Validações
	validates_presence_of :name, :workload, :description, :start_date, :end_date, :max_cap,
							:min_cap, :image, message: 'Campo obrigatório'



	# Foto
	mount_uploader :image, AvatarUploader

   	attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
   	after_update :crop_avatar

   	def crop_avatar
   		image.recreate_versions! if crop_x.present?
   	end


   	# Relacionamentos
   	has_many :classrooms
   	has_many :users, through: :classrooms

end
