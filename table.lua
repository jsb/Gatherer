-- Table related routines
--

-- credits: http://stackoverflow.com/a/2705804
function Gatherer_table_length(table)
  local count = 0;
  for _ in table do count = count + 1 end
  return count
end