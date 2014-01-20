require_relative 'panel'

describe Panel do
  ROWS = 5
  COLUMNS = 5

  it "should accepts the number of rows in the panel" do
    panel = Panel.new(ROWS, COLUMNS)
    expect(panel.dimentions).to eq([ROWS, COLUMNS])
  end

  it "should only accepts odd rows" do
    expect { Panel.new(4, COLUMNS) }.to raise_error("Rows should be odd")
  end

  it "should accept missing pricks" do
    panel = Panel.new(ROWS, COLUMNS)
    panel.add_prick( 1, 1 )
    panel.add_prick( 2, 1 )
    panel.add_prick( 3, 2 )
    expect(panel.pricks.size()).to eq(3)
  end

  it "should not allow missing pricks at first row" do
    panel = Panel.new(ROWS, COLUMNS)
    expect {
      panel.add_prick( 0, 1 )
    }.to raise_error("First row should not contain missing pricks")
  end

end

