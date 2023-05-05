# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user/welcome_email
  def welcome_email
    user = User.last # Get the first user from the database
    UserMailer.welcome_email(user).deliver_now
  end

end
