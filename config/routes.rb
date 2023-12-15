# frozen_string_literal: true

Rails.application.routes.draw do
  post 'listas/inverter', to: 'listas#inverter'
end
