require 'rails_helper'

RSpec.describe 'Payments', type: :request do
  describe 'payments' do
    it 'GET /payments' do
      get payments_path
      expect(response).to render_template('index')
    end

    it 'GET /payments' do
      get payments_path
      expect(response).to have_http_status(200)
    end
  end
end
