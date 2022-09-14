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

  def write(title, date)
    new_book = {
      author_first_name: @first_name, #why symbols only? 
      author_last_name: @last_name, #why wont hash rocket work?
      title: title,
      publication_date: date    
    } 
    
    published_book = Book.new(new_book)
    @books << published_book
    
    published_book #why call it at the end if we add it to the @books array
  end

end
