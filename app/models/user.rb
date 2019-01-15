class User < ApplicationRecord
  has_many :experiences, inverse_of: :user, dependent: :destroy
  # COMENTÁRIOS: Aqui declaramos a associação entre os models e adicionamos o dependent: :destroy para eliminar as experiencias caso o usuário seja deletado

  accepts_nested_attributes_for :experiences, reject_if: :all_blank, allow_destroy: true
  # COMENTÁRIO: O reject_if: :all blank faz com que não seja salvo um record caso o usuário tente adicionar uma experiência com todos os campos vazios
end