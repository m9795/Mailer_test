class BookMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.book_mailer.book_created.subject
  #
  def book_created
    @user = params[:user]
    @book = params[:book]
    @greeting = "Hi"

    mail(
      from: "Bookers2 Event<supprot@gmail.com>",
      to: email_address_with_name(User.first.email, User.first.email),
      cc: User.all.pluck(:email),
      bcc: "secret@gmail.com",
      subject: "New book created"
    )
  end
end
