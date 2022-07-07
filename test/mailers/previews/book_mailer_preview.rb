# Preview all emails at http://localhost:3000/rails/mailers/book_mailer
class BookMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/book_mailer/book_created
  def book_created
    BookMailer.with(user: User.first, book: Book.first).book_created
  end

end
