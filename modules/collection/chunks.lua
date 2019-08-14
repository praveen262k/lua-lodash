--- Creates an array of elements split into groups the length of size. If array can't be split evenly, the final chunk will be the remaining elements.
-- @param array The array to process.
-- @param size The length of each chunk
-- _.chunk(['a', 'b', 'c', 'd'], 2);
-- => [['a', 'b'], ['c', 'd']]
local function chunk(array, size)
    size = size or 1
    for name, value in pairs(array) do
        -- TODO
    end
end

return chunk
