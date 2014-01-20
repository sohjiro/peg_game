require_relative 'panel'

describe Panel do
  ROWS = 5
  COLUMNS = 5

  it "accepts the number of rows in the panel" do
    panel = Panel.new(ROWS, COLUMNS)
    expect(panel.dimentions).to eq([ROWS, COLUMNS])
  end

  it "only accepts odd rows" do
    expect { Panel.new(4, COLUMNS) }.to raise_error("Rows should be odd")
  end

  it "should accept missing pricks" do
    panel = Panel.new(ROWS, COLUMNS)
    panel.add_prick( 1, 1 )
    panel.add_prick( 2, 1 )
    panel.add_prick( 3, 2 )
    expect(panel.pricks.size()).to eq(3)
  end

end
