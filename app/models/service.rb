class Service < ApplicationRecord
  # COMENTARIO: le-se: "'service 'possui muitas 'stages'"
  has_many :stages, inverse_of: :service, dependent: :destroy
  # COMENTARIO: Aqui declaramos a associação entre os models e adicionamos o dependent: :destroy para eliminar as stages caso o service seja deletado

  accepts_nested_attributes_for :stages, reject_if: :all_blank, allow_destroy: true
  # COMENTARIO: O reject_if: :all blank faz com que não seja salvo um record caso o usuário tente adicionar uma 'stage' com todos os campos vazios
end
