class Author
  attr_reader :first_name,:last_name, :books
  def initialize(author_name)
    @first_name = author_name[:first_name]
    @last_name = author_name[:last_name]
    @books = []
  end

  def name
    @first_name + ' ' + @last_name
  end

  def write(book, date)
    catalog = []
    @books.each do |book|
      catalog[book] = book.date
      require 'pry';binding.pry
    end
    catalog
  end

end
