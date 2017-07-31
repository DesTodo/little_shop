require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    describe 'must have valid attributes' do
      it "can't be created without first or last name" do
        user1 = build(:user, first_name: nil)
        user2 = build(:user, last_name: nil)

        expect(user1.first_name).to eq(nil)
        expect(user2.last_name).to eq(nil)
        expect(user1.save).to be false
        expect(user2.save).to be false
      end

      it 'cannot have the same username' do
        user1 = create(:user)
        new_user = build(:user, username: user1.username)

        expect(new_user.save).to be false
      end
    end
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:email) }
  end

  context 'associations' do
    it { is_expected.to have_many(:user_courses) }
    it { should have_many(:courses).through(:user_courses) }
  end

  context 'enum role' do
    it 'can be created as an admin' do
      admin = create(:user, role: 1)

      expect(admin.role).to eq('admin')
      expect(admin.default?).to be false
    end

    it 'can be created as default user by default' do
      default = create(:user)

      expect(default.role).to eq('default')
      expect(default.default?).to be_truthy
    end
  end
end
