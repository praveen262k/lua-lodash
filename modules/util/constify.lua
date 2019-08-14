local constify

--- The Following function helps in constifying the constants getting Overriden in other files where
-- its been accessed for. The error message that would be printed in the logs is also configured.
function constify(tbl)
    return setmetatable({}, {
        __index = tbl,
        __newindex = function(t, key, value)
            error("Constant file. Aborting attempt to change constant " ..
                   tostring(key) .. " to " .. tostring(value), 2)
        end
    })
end

return constify
