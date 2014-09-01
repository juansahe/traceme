require 'spec_helper'

describe User do
	before { @user = User.new(name:"Juan David", email: "juansahe@gmail.com") } 
	subject { @user }

	it { should respond_to(:name) }
	it { should respond_to(:email) }

	it { should be_valid }

	describe "when name is blank" do
		before { @user.name = "" }
		it { should_not be_valid }
	end

	describe "when email is blank" do 
		before { @user.email = "" }
		it { should_not be_valid }
	end

	describe "when user.name is tooo long" do
		before { @user.name = "a"*51 }
		it { should_not be_valid }
	end

	describe "when email format is invalid" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo.
				foo@bar_bazcom foo@bar+baz.com]
			addresses.each do |invalid_address|
				@user.email = invalid_address
				expect(@user).not_to be_valid
			end
		end
	end

	describe "when email format is valid" do
		it "should be valid" do
			addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@user.email = valid_address
				expect(@user).to be_valid
			end
		end
	end
	
end 