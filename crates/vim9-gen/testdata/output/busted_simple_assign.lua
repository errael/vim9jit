----------------------------------------
-- This file is generated via github.com/tjdevries/vim9jit
-- For any bugs, please first consider reporting there.
----------------------------------------

local NVIM9 = require('_vim9script')
describe('filename', function()
  -- vim9script

  it('Test_assignment_one', function()
    -- Set errors to empty
    vim.v.errors = {}

    -- Actual test
    local bool1 = NVIM9.convert.decl_bool(true)
    NVIM9.fn.assert_equal(vim.v['true'], bool1)

    -- Assert that errors is still empty
    assert.are.same({}, vim.v.errors)
  end)
end)
