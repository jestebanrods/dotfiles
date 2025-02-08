local luasnip = require("luasnip")

local s = luasnip.snippet
local i = luasnip.insert_node
local f = luasnip.function_node
local t = luasnip.text_node

local function copy(args)
	return args[1]
end

luasnip.add_snippets("php", {
	-- trigger is `fn`, second argument to snippet-constructor are the nodes to insert into the buffer on expansion.
	s("fn", {
		-- Simple static text.
		t("//Parameters: "),
		-- function, first parameter is the function, second the Placeholders
		-- whose text it gets as input.
		f(copy, 2),
		t({ "", "function " }),
		-- Placeholder/Insert.
		i(1),
		t("("),
		-- Placeholder with initial text.
		i(2, "int foo"),
		-- Linebreak
		t({ ") {", "\t" }),
		-- Last Placeholder, exit Point of the snippet.
		i(0),
		t({ "", "}" }),
	}),
	s("_test", {
		t({ "", "public function test" }),
		i(1),
		t("("),
		i(2, "$foo Foo"),
		t({ "): void {", "\t" }),
		i(0),
		t({ "", "}" }),
	}),
	s("_dataprovider", {
		t({ "", "public function " }),
		i(1),
		t("Provider("),
		t({ "): array {", "\t" }),
		t({ "return [", "\t" }),
		t({ "\t[" }),
		i(0),
		t({ "]", "\t" }),
		t({ "];", "}" }),
	}),
	s("_skeleton", {
		t({ "<?php", "\t" }),
		t(""),
		t("namespace "),
		i(1),
		t(""),
	}),
})
