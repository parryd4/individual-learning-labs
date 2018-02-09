require 'rails_helper'

RSpec.describe ApplicationController do
  describe 'current_user' do
    it 'returns the name of the current user' do
      current_name = 'Learningto Test'
      @request.session[:name] = current_name
      expect(subject.current_user).to eq current_name
    end
  end
end
