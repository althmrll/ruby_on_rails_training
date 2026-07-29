require './tic_tac_toe_game'
describe 'TicTacToe' do
  let(:game) {TicTacToe.new }
  it 'outputs the current grid layout to stdout' do
    expect { game.print_board }.to output(a_string_including("---+---+---")).to_stdout
  end
end