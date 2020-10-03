local queries = require "nvim-treesitter.query"

local M = {}

-- TODO: In this function replace `module-template` with the actual name of your module.
function M.init()
  require "nvim-treesitter".define_modules {
    brcktng_kw = {
      module_path = "treesitter-scope.brcktng_kw",
      is_supported = function(lang)
        -- TODO: you don't want your queries to be named `awesome-query`, do you ?
        return queries.get_query(lang, 'awesome-query') ~= nil
      end
    },
    sign_column = {
      module_path = "treesitter-scope.sign_column",
      is_supported = function(lang)
        -- TODO: you don't want your queries to be named `awesome-query`, do you ?
        return queries.get_query(lang, 'awesome-query') ~= nil
      end
    }
  }
end

return M
