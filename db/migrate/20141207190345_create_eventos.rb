class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.integer :ano
      t.string :pais
      t.string :idioma
      t.string :home_page
      t.string :titulo_ingles
      t.string :nome_evento
      t.string :cidade_evento
      t.integer :ano_realizacao
      t.string :titulo_anais
      t.string :volume
      t.string :fasciculo
      t.string :serie
      t.integer :pagina_inicial
      t.integer :pagina_final
      t.string :isbn
      t.integer :editora_id
      t.integer :user_id

      t.timestamps
    end
  end
end
