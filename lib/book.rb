class Book
  attr_reader :author_first_name,:author_last_name,:title,:publication_date
  def initialize(attributes)
    # @author = author.split 
    @author_first_name = attributes[:author_first_name]
    @author_last_name = attributes[:author_last_name]
    @title = attributes[:title]
    @publication_date = attributes[:publication_date]
  end

  #unable to split name in initialize block within reasonable timeframe
  def author
    @author_first_name + " " + @author_last_name
  end

  def publication_year
    @publication_date.split.last.to_i
  end

end