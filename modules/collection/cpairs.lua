--- Iterate the constants create using constify method
-- A constant can be created in our framework using constify.
-- E.g.
-- local COUNTRY = {
--     USA = "United States of America",
--     CHINA = "China",
--     AUSTRALIA="Australia",
--     GERMANY = "Germany",
-- }

-- local constVal = constify(testData)
-- if you try to modify constVal table you would get error()
-- However, when we try to iterate them using pairs(...) pair function does not
-- use index and hence since constify is return {} table it does iterate
-- In order to resolve this we had to come with custom pairs that iterates constant
-- hence the pairs was prefixed with c to signify it is related to constants
local function cpairs(CONSTANT)
    local mt = getmetatable(CONSTANT)

    --- constify method when called on table we are adding
    --- a custom attribute to identify if is constant we created
    if mt and mt.__is_factset_constant then
        -- return the __index which holds original table
        CONSTANT = mt.__index
    end

    -- even if you end up calling pairs on regular table just return the pairs
    return pairs(CONSTANT)
end

return cpairs
