json.array!(@res_boards) do |res_board|
  json.extract! res_board, :id, :title, :address, :phoneNumber
  json.url res_board_url(res_board, format: :json)
end
