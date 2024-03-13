local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>ref", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)

    -- Formatting
    vim.keymap.set("n", "<leader>fo", function() vim.lsp.buf.format({ async = false, timeout_ms = 10000 }) end, opts)
    lsp.buffer_autoformat()
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lsp.default_setup,
    },
})

lsp.preset("recommended")

lsp.setup()
