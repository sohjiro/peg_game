class Panel

  attr_reader :rows, :columns, :pricks

  def initialize( rows, columns, pricks = [] )
    raise "Rows should be odd" if rows % 2 == 0
    @rows = rows
    @columns = columns
    @pricks = pricks
  end

  def add_pricks( *pricks )
    raise "First row should not contain missing pricks" if pricks.assoc(0)
    self.class.new( self.rows, self.columns, pricks )
  end

end
