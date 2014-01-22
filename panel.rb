class Panel

  attr_reader :rows, :columns, :pricks, :out_column

  def initialize( rows, columns, pricks = [], out_column = 0 )
    raise "Rows should be odd" if rows % 2 == 0
    @rows = rows
    @columns = columns
    @pricks = pricks.clone.freeze
    @out_column = out_column
  end

  def add_pricks( *pricks )
    raise "First row should not contain missing pricks" if pricks.assoc(0)
    self.class.new( self.rows, self.columns, pricks )
  end

  def output_column( out_column )
    self.class.new( self.rows, self.columns, self.pricks, out_column )
  end

end
