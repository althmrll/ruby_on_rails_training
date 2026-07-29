require './tic_tac_toe_game'
describe '#print_board' do
  it 'outputs the current grid layout to stdout' do
    expect { game.print_board }.to output(a_string_including("---+---+---")).to_stdout
  end
end