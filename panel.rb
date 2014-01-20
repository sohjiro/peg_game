class Panel

  def initialize( rows, columns )

    if rows % 2 == 0
      raise "Rows should be odd"
    end

    @dimentions = [ rows, columns ]
  end

  def dimentions
    @dimentions
  end

end
