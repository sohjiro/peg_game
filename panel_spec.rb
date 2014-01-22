require_relative 'panel'

describe Panel do
  ROWS = 5
  COLUMNS = 5

  it "should accepts the number of rows in the panel" do
    panel = Panel.new(ROWS, COLUMNS)
    expect(panel).to be_an_instance_of(Panel)
  end

  it "should only accepts odd rows" do
    expect { Panel.new(4, COLUMNS) }.to raise_error("Rows should be odd")
  end

  it "should accept missing pricks" do
    panel = Panel.new(ROWS, COLUMNS).add_pricks([1, 1])
    expect(panel).to be_an_instance_of(Panel)
    expect(panel.pricks.length).to eq(1)
  end

  it "should accept multiples missing pricks" do
    panel = Panel.new(ROWS, COLUMNS).add_pricks([1, 1], [2,1])
    expect(panel).to be_an_instance_of(Panel)
    expect(panel.pricks.length).to eq(2)
  end

  it "should not allow missing pricks at first row" do
    expect {
      Panel.new(ROWS, COLUMNS).add_pricks([1, 1], [0,1])
    }.to raise_error("First row should not contain missing pricks")
  end

  it "should not allow missing pricks at first row with one value of pricks" do
    expect {
      Panel.new(ROWS, COLUMNS).add_pricks([0,1])
    }.to raise_error("First row should not contain missing pricks")
  end

end

