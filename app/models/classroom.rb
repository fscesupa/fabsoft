class Classroom < ActiveRecord::Base

	# Relacionamentos
	belongs_to :course
	belongs_to :user

	# Validações
	validates_presence_of :course_id, :user_id, :paid, message: "Campo Obrigatório"

end
