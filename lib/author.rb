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

  #should take in Book attributes
  def write(title, date)
    book = Book.new({})
    @books << book
    # require 'pry';binding.pry

   
    @books.each do |book|
      book << book.title
    end
    require 'pry';binding.pry
    # catalog = []
    # @books.each do |book|
    #   require 'pry';binding.pry
    #   catalog[book] = book.date
    # end
    # catalog.flatten
  end

end
