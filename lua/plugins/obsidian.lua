return {
    "epwalsh/obsidian.nvim",
    enabled = true,
    version = "*", -- recommended, use latest release instead of latest commit
    ft = "markdown",
    -- init = function()
    --
    -- end,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        -- { "<leader>no", "<cmd>ObsidianOpen<cr>", desc = "Open Obsidian" },
        { "<leader>nn", "<cmd>ObsidianNew<cr>", desc = "New note" },
        -- { "<leader>ns", "<cmd>ObsidianSearch<cr>", desc = "Search notes" },
        { "<leader>nt", "<cmd>ObsidianTags<cr>", desc = "List notes by tags" },
        -- { "<leader>nn", "createNoteWithDefaultTemplate", desc = "[N]ew Obsidian [N]ote" },
        {
            "<leader>nq",
            "<cmd>ObsidianQuickSwitch<cr>",
            desc = "Quick switch in obsidian workspace",
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
        notes_subdir = "00-09 Inbox/Quick Notes",
        new_notes_location = "00-09 Inbox/01 Quick Notes",
        attachments = {
            img_folder = "files",
        },
        daily_notes = {
            template = "note",
        },
        mappings = {
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
            -- -- Create a new newsletter issue
            -- ["<leader>nn"] = {
            --     action = function()
            --         return require("obsidian").commands.new_note("daily")
            --     end,
            --     opts = { buffer = true },
            -- },
            ["eleader>ntt"] = {
                action = function()
                    return require("obsidian").util.insert_template("daily")
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

        -- note_id_func = function(title)
        --     -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
        --     -- In this case a note with the title 'My new note' will be given an ID that looks
        --     -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
        --     local suffix = ""
        --     if title ~= nil then
        --         -- If title is given, transform it into valid file name.
        --         suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        --     else
        --         -- If title is nil, just add 4 random uppercase letters to the suffix.
        --         for _ = 1, 4 do
        --             suffix = suffix .. string.char(math.random(65, 90))
        --         end
        --     end
        --     return tostring(os.time()) .. "-" .. suffix
        -- end,

        note_id_func = function(title)
            -- Crear el formato de la nota como YYYY-MM-DD
            local date_prefix = os.date("%Y-%m-%d")
            local suffix = ""

            if title ~= nil then
                -- Si se proporciona un título, transformarlo en un nombre de archivo válido.
                suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
                -- Si el título es nil, generar un sufijo aleatorio.
                local chars = "abcdefghijklmnopqrstuvwxyz0123456789"
                for _ = 1, 6 do
                    local rand_index = math.random(1, #chars)
                    suffix = suffix .. chars:sub(rand_index, rand_index)
                end
            end

            -- Devolver la fecha en formato YYYY-MM-DD seguido del sufijo aleatorio
            return date_prefix .. "-" .. suffix
        end,

        templates = {
            subdir = "30-39 Resources/31 Templates",
            date_format = "%Y-%m-%d-%a",
            gtime_format = "%H:%M",
            tags = "",
        },
        ui = {
            enable = false,
        },
    },
}
