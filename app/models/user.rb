class User < ApplicationRecord
  has_many :playlists #genera un método que permitirá llamar a todas las playlists de un usuario.
  validates :name, :email, presence: true #validates recibe primero los campos como simbolos, presence recibe un hash.
  validates :email, uniqueness: true
end
