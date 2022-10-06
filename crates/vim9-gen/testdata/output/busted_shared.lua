local __VIM9_MODULE = {}
describe("filename", function()
  -- vim9script

  it("Test_syn", function()
    -- Set errors to empty
    vim.v.errors = {}

    -- Actual test
    vim.cmd([===[  syn keyword Test testkeyword contained]===])
    require("vim9script").fn["assert_equal"](
      2,
      require("vim9script").fn["len"](
        require("vim9script").fn["split"](require("vim9script").fn["execute"]("syntax list Test"), "\n")
      )
    )

    -- Assert that errors is still empty
    assert.are.same({}, vim.v.errors)
  end)
end)
return __VIM9_MODULE
