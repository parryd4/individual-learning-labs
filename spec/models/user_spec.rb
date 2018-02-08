require 'rails_helper'

RSpec.describe User, :type => :model do
  let(:user) {
    User.create(:name => 'Buddy')
  }
  let(:admin) {
    User.create(:name => "Adadministrator", :admin => true)
  }

  it "is valid with a name" do
    expect(user).to be_valid
  end

  it "is not valid without a name" do
    expect(User.new).not_to be_valid
  end

  it "defaults to admin => false" do
    expect(user.admin).to eq(false)
  end
end
