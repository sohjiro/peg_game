class Panel

  def initialize( rows, columns )
    if rows % 2 == 0
      raise "Rows should be odd"
    end

    @dimentions = [ rows, columns ]
    @pricks = []
  end

  def dimentions
    @dimentions
  end

  def add_prick( x, y )
    if( x == 0)
      raise "First row should not contain missing pricks"
    end

    @pricks << [x, y]
  end

  def pricks
    @pricks
  end

end
