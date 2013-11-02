json.array!(@oxidation_states) do |oxidation_state|
  json.extract! oxidation_state, 
  json.url oxidation_state_url(oxidation_state, format: :json)
end
