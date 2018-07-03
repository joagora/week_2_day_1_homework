class Library
  def initialize books
    @books = books
  end

  def books
    return @books
  end

  def show_book title
    for book in @books
      if book[:title] == title
        return book
      end
    end
    return nil
  end

  def show_rental_details title
    book = show_book(title)
    if show_book(title) != nil
      return book[:rental_details]
    end
    return nil
  end

  def add_new_book title
    if show_book(title) != nil
      return
    end

    book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books << book
  end

  def set_rental_details title, person, date
    for book in @books
      if book[:title] == title
        book[:rental_details] = {
          student_name: person,
          date: date
        }
      end
    end
  end
end
