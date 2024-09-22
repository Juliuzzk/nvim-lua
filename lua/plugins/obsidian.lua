return {
    "epwalsh/obsidian.nvim",
    enabled = true,
    version = "*", -- recommended, use latest release instead of latest commit
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>no", "<cmd>ObsidianOpen<cr>", desc = "Open Obsidian" },
        { "<leader>nn", "<cmd>ObsidianNew<cr>", desc = "New note" },
        { "<leader>ns", "<cmd>ObsidianSearch<cr>", desc = "Search notes" },
        { "<leader>nt", "<cmd>ObsidianTags<cr>", desc = "List notes by tags" },
        {
            "<leader>nq",
            "<cmd>ObsidianQuickSwitch<cr>",
            desc = "Quick switch in obsidian workspace",
        },
        {
            "<leader>nw",
            "<cmd>ObsidianWorkspace work<cr>",
            desc = "Change to workspace work in obsidian",
        },
        {
            "<leader>np",
            "<cmd>ObsidianWorkspace personal<cr>",
            desc = "Change to workspace home in obsidian",
        },
    },
    opts = {

        workspaces = {
            {
                name = "Notes",
                path = "/Users/Julio/Library/Mobile Documents/iCloud~md~obsidian/Documents/My Vault",
            },
        },
        completion = {
            nvim_cmp = true,
            min_chars = 2,
        },
        notes_subdir = "Varios",
        new_notes_location = "Varios",
        attachments = {
            img_folder = "files",
        },
        daily_notes = {
            template = "note",
        },
        mappings = {
            ["gd"] = {
                action = function()
                    return require("obsidian").util.gf_passthrough()
                end,
                opts = { noremap = false, expr = true, buffer = true },
            },
            -- "Obsidian follow"
            ["<leader>nf"] = {
                action = function()
                    return require("obsidian").util.gf_passthrough()
                end,
                opts = { noremap = false, expr = true, buffer = true },
            },
            -- Toggle check-boxes "obsidian done"
            ["<leader>nd"] = {
                action = function()
                    return require("obsidian").util.toggle_checkbox()
                end,
                opts = { buffer = true },
            },
            -- Create a new newsletter issue
            ["<leader>nn"] = {
                action = function()
                    return require("obsidian").commands.new_note("Newsletter-Issue")
                end,
                opts = { buffer = true },
            },
            ["<leader>nnt"] = {
                action = function()
                    return require("obsidian").util.insert_template("Newsletter-Issue")
                end,
                opts = { buffer = true },
            },
        },
        note_frontmatter_func = function(note)
            -- This is equivalent to the default frontmatter function.
            local out = { id = note.id, aliases = note.aliases, tags = note.tags }

            -- `note.metadata` contains any manually added fields in the frontmatter.
            -- So here we just make sure those fields are kept in the frontmatter.
            if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
                for k, v in pairs(note.metadata) do
                    out[k] = v
                end
            end
            return out
        end,

        note_id_func = function(title)
            -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
            -- In this case a note with the title 'My new note' will be given an ID that looks
            -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
            local suffix = ""
            if title ~= nil then
                -- If title is given, transform it into valid file name.
                suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
                -- If title is nil, just add 4 random uppercase letters to the suffix.
                for _ = 1, 4 do
                    suffix = suffix .. string.char(math.random(65, 90))
                end
            end
            return tostring(os.time()) .. "-" .. suffix
        end,

        templates = {
            subdir = "Templates",
            date_format = "%Y-%m-%d-%a",
            gtime_format = "%H:%M",
            tags = "",
        },
    },
}
