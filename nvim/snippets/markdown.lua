require("luasnip.session.snippet_collection").clear_snippets("markdown")

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

local getFilename = function ()
	local filename = vim.fn.expand("%:t")
	filename = filename:gsub(".md", ''):gsub("-", ' '):sub(12, -1)
	return filename
end

ls.add_snippets("markdown", {
    s("codeblock-static", fmta(
        [[
        ``` <language>
        <code>
        ```
        ]],
        {
            language = i(1, "language"),
            code = i(2, ""),
        }
    )),
    s("codeblock-runnable", fmta(
        [[
        ``` {<language>}
        <code>
        ```
        ]],
        {
            language = i(1, "language"),
            code = i(2, ""),
        }
    )),
		s("note", fmta(
			[[
			---
			date: <date>
			tags:
				- <tag>
			---

			# <title>
			
			<body>
			]],
			{
				date = t(os.date("%Y-%m-%d")),
				tag = i(1),
				title = f(getFilename),
				body = i(2)
			}
		)),
		s("datetime", t(os.date("%Y-%m-%d %H:%M")))
})
