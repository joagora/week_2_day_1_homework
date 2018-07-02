class Library
  def initialize
    @books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "everything_is_illuminated",
        rental_details: {
          student_name: "Barry",
          date: "05/12/17"
        }
      },
      {
        title: "hobbit",
        rental_details: {
          student_name: "Roger",
          date: "01/04/18"
        }
      }
    ]
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
end
