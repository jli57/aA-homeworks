require 'rails_helper'

RSpec.describe User, type: :model do
  # validations
  subject(:user) do
    FactoryBot.build(:user,
      email: "jli@test.com",
      password: "test123" )
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:session_token) }
  it { should validate_length_of(:password).is_at_least(6) }


  describe "#is_password?" do
    it "checks to see if password is correct" do
      expect(user.is_password?("test123")).to be true
    end

    it "checks to see a password is wrong" do
      expect(user.is_password?("fake password")).to be false
    end

  end

  describe "#reset_session_token!" do
    it "resets the session token" do
      user.valid?
      old_session_token = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(old_session_token)
    end

    it "returns the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "::find_by_credential" do
    before { user.save! }

    it "finds the user by credentials" do
      expect(User.find_by_credential("jli@test.com", "test123")).to eq(user)
    end

    it "returns nil when credentials do not match" do
      expect(User.find_by_credential("jli@test.com", "blah")).to eq(nil)
    end
  end
end
