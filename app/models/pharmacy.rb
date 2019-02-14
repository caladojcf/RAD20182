class Pharmacy < ApplicationRecord
	has_many :pharmacies


	#validates :nome, presence: true

	validates :ibge, presence: true, uniqueness: {case_sensitive: true}, numericality: {only_integer: true}
	validates :uf, presence: true, length: {is: 2}
	validates :cidade, presence: true
	validates :nome, presence: true, length: {in: 3 .. 60}
	validates :endereco, presence: true, length: {in: 3 .. 60}
	validates :bairro, presence: true, length: {in: 3 .. 40}
	validates :cep, presence: true, numericality: {only_integer: true}, length:{is: 8}
	validates :ddd, length:{in: 2 .. 3}
	validates :telefone, presence: true, numericality: {only_integer: true}
	validates :email, presence: true
	validates :cnpj_farmacia, presence: true, numericality: {only_integer: true}
	validates :cnpj_matriz, presence: true, numericality: {only_integer: true}
	validates :ano, presence: true
	validates :mes, presence: true
end
