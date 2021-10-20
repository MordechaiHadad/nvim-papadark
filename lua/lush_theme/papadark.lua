--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

-- Palette
local foreground = "#E5E9F0"
local background = "#2E3440"
local yellow = "#d4d198"
local green = "#98C379"
local black = "#2b2e36"
local blue = "#5d8ac2"
local grey = "#3B4048"
local purple = "#c487b9"
local red = "#d94848"
local light_blue = "#8fc6e3"
local blue_green = "#4EC9B0"

--  Specific Colors
local vertsplit = "#373e4a"
local comment = "#699856"
local integer = "#B4CDA8"
local string = "#A3BE8C"
local line_number = "#4C566A"
local line_color = "#3B4252"
local quickfix_line = "#007acc"
local visual_grey = "#3E4452"
local interface_color = "#84D9AA"

local theme = lush(function()
    return {
        -- The following are all the Neovim default highlight groups from the docs
        -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
        -- probably style all of these at a bare minimum.
        --
        -- Referenced/linked groups must come before being referenced/lined,
        -- so the order shown ((mostly) alphabetical) is likely
        -- not the order you will end up with.
        --
        -- You can uncomment these and leave them empty to disable any
        -- styling for that group (meaning they mostly get styled as Normal)
        -- or leave them commented to apply vims default colouring or linking.

        Comment({ fg = comment, gui = "italic" }), -- any comment
        ColorColumn({ fg = "#d94848" }), -- used for the columns set with 'colorcolumn'
        -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor({ fg = black, bg = blue }), -- character under the cursor
        -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
        -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine({ bg = line_color }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory({ fg = "#5d8ac2" }), -- directory names (and other special names in listings)
        DiffAdd({ fg = black, bg = green }), -- diff mode: Added line |diff.txt|
        DiffChange({ fg = black, bg = "#d4d198" }), -- diff mode: Changed line |diff.txt|
        DiffDelete({ fg = black, bg = "#d94848" }), -- diff mode: Deleted line |diff.txt|
        DiffText({ fg = foreground, bg = "#d94848" }), -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer({ fg = background }), -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        -- TermCursor   { }, -- cursor in a focused terminal
        -- TermCursorNC { }, -- cursor in an unfocused terminal
        ErrorMsg({ DiffText }), -- error messages on  the command line
        VertSplit({ fg = vertsplit }), -- the column separating vertically split windows
        Folded({ fg = comment }), -- line used for closed folds
        -- FoldColumn   { }, -- 'foldcolumn'
        SignColumn({}), -- column where |signs| are displayed
        IncSearch({ fg = yellow, bg = comment }), -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        -- Substitute   { }, -- |:substitute| replacement text highlighting
        LineNr({ fg = line_number }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr({}), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen({ fg = foreground, bg = blue }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
        -- MsgArea      { }, -- Area for messages and cmdline
        -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
        -- MoreMsg      { }, -- |more-prompt|
        NonText({ fg = blue }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal({ fg = foreground, bg = background }), -- normal text
        NormalFloat({}), -- Normal text in floating windows.
        -- NormalNC     { }, -- normal text in non-current windows
        Pmenu({ bg = line_color }), -- Popup menu: normal item.
        PmenuSel({ fg = black, bg = blue }), -- Popup menu: selected item.
        PmenuSbar({ bg = visual_grey }), -- Popup menu: scrollbar.
        PmenuThumb({ fg = foreground }), -- Popup menu: Thumb of the scrollbar.
        Question({ fg = purple }), -- |hit-enter| prompt and yes/no questions
        QuickFixLine({ fg = foreground, bg = quickfix_line }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search({ fg = black, bg = blue }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad({ bg = red, gui = "undercurl" }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine({ fg = foreground, bg = background }), -- status line of current window
        StatusLineNC({ fg = comment }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine({ fg = comment }), -- tab pages line, not active tab page label
        -- TabLineFill  { }, -- tab pages line, where there are no labels
        TabLineSel({ fg = foreground }), -- tab pages line, active tab page label
        Title({ fg = green }), -- titles for output from ":set all", ":autocmd" etc.
        Visual({ bg = visual_grey }), -- Visual mode selection
        VisualNOS({ Visual }), -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg({ fg = yellow }), -- warning messages
        Whitespace({ fg = foreground }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu({ fg = black, bg = blue }), -- current match in 'wildmenu' completion
        FloatBorder({ fg = foreground }),

        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant({ fg = blue }), -- (preferred) any constant
        String({ fg = string }), --   a string constant: "this is a string"
        Character({ String }), --  a character constant: 'c', '\n'
        Number({ fg = integer }), --   a number constant: 234, 0xff
        Boolean({ Constant }), --  a boolean constant: TRUE, false
        Float({ Number }), --    a floating point constant: 2.3e10

        Identifier({ fg = light_blue }), -- (preferred) any variable name
        Function({ fg = yellow }), -- function name (also: methods for classes)

        Statement({ fg = blue }), -- (preferred) any statement
        -- Conditional    { }, --  if, then, else, endif, switch, etc.
        -- Repeat         { }, --   for, do, while, etc.
        -- Label          { }, --    case, default, etc.
        -- Operator       { }, -- "sizeof", "+", "*", etc.
        -- Keyword        { }, --  any other keyword
        -- Exception      { }, --  try, catch, throw

        PreProc({ fg = blue }), -- (preferred) generic Preprocessor
        -- Include        { }, --  preprocessor #include
        -- Define         { }, --   preprocessor #define
        -- Macro          { }, --    same as Define
        -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

        Type({ fg = blue }), -- (preferred) int, long, char, etc.
        -- StorageClass   { }, -- static, register, volatile, etc.
        -- Structure      { }, --  struct, union, enum, etc.
        -- Typedef        { }, --  A typedef

        Special({ fg = blue }), -- (preferred) any special symbol
        -- SpecialChar    { }, --  special character in a constant
        -- Tag            { }, --    you can use CTRL-] on this
        -- Delimiter      { }, --  character that needs attention
        -- SpecialComment { }, -- special things inside a comment
        -- Debug          { }, --    debugging statements

        -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
        -- Bold       { gui = "bold" },
        -- Italic     { gui = "italic" },

        -- ("Ignore", below, may be invisible...)
        -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error({ fg = red, gui = "undercurl", guisp = red }), -- (preferred) any erroneous construct

        -- Todo           { }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.

        -- LspReferenceText                     { }, -- used for highlighting "text" references
        -- LspReferenceRead                     { }, -- used for highlighting "read" references
        -- LspReferenceWrite                    { }, -- used for highlighting "write" references

        LspDiagnosticsDefaultError({ fg = red, gui = "undercurl", guisp = red }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultWarning({ fg = yellow, gui = "undercurl", guisp = yellow }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

        -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
        -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
        -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
        -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

        -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
        -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
        -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
        -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

        LspDiagnosticsFloatingError({ fg = red }), -- Used to color "Error" diagnostic messages in diagnostics float
        LspDiagnosticsFloatingWarning({ fg = yellow }), -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

        -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
        -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
        -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
        -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may change.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.

        -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        -- TSAttribute          { };    -- (unstable) TODO: docs
        TSBoolean({ Boolean }), -- For booleans.
        TSCharacter({ Character }), -- For characters.
        TSComment({ Comment }), -- For comment blocks.
        -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
        -- TSConditional        { };    -- For keywords related to conditionnals.
        TSConstant({ Constant }), -- For constants
        -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
        -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
        TSError({ Error }), -- For syntax/parser errors.
        -- TSException          { };    -- For exception related keywords.
        TSField({ fg = light_blue }), -- For fields.
        -- TSFloat              { };    -- For floats.
        -- TSFunction           { };    -- For function (calls and definitions).
        TSFuncBuiltin({ Function }), -- For builtin functions: `table.insert` in Lua.
        -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
        -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
        -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
        -- TSMethod             { };    -- For method calls and definitions.
        TSNamespace({ fg = blue_green }), -- For identifiers referring to modules and namespaces.
        -- TSNone               { };    -- TODO: docs
        -- TSNumber             { };    -- For all numbers
        -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
        -- TSParameter          { };    -- For parameters of a function.
        -- TSParameterReference { };    -- For references to parameters of a function.
        -- TSProperty           { };    -- Same as `TSField`.
        -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
        -- TSPunctBracket       { };    -- For brackets and parens.
        -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat             { };    -- For keywords related to loops.
        -- TSString             { };    -- For strings.
        -- TSStringRegex        { };    -- For regexes.
        -- TSStringEscape       { };    -- For escape characters within a string.
        -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
        TSType({ fg = blue_green }), -- For types.
        TSTypeBuiltin({ fg = blue }), -- For builtin types.
        TSVariable({ TSField }), -- Any variable name that does not have another highlight.
        -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

        -- TSTag                { };    -- Tags like html tag names.
        -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
        -- TSText               { };    -- For strings considered text in a markup language.
        -- TSEmphasis           { };    -- For text to be represented with emphasis.
        -- TSUnderline          { };    -- For text to be represented with an underline.
        -- TSStrike             { };    -- For strikethrough text.
        -- TSTitle              { };    -- Text that is part of a title.
        -- TSLiteral            { };    -- Literal text.
        -- TSURI                { };    -- Any URI like a link or email.

        -- Nvim Tree
        NvimTreeRootFolder({ fg = light_blue }),
        NvimTreeFileDeleted({ fg = red }),
        NvimTreeGitDeleted({ fg = red }),
        NvimTreeGitDirty({ fg = yellow }),

        -- GitSigns
        GitSignsAdd({ fg = green, bg = background }),
        GitSignsChange({ fg = yellow, bg = background }),
        GitSignsDelete({ fg = red, bg = background }),

        -- Lsp trouble
        LspTroubleSignError({ fg = red }),
        LspTroubleSignWarning({ fg = yellow }),
        LspTroubleText({ fg = foreground }),
    }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
