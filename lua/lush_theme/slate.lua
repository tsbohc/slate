-- {{{
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
-- }}}

local lush = require('lush')
local hsluv = lush.hsluv

local italic = 'italic'
local bold = 'bold'
local underline = 'underline'

--{{{
--local gr4 = hsluv(0,0,55) -- conceal
--local gr5 = hsluv(0,0,32) -- comment
--local gr6 = hsluv(0,0,44) -- parens
--local gr7 = hsluv(0,0,22) -- keywords
--local gr8 = hsluv(0,0,64) -- strings
--local gr9 = hsluv(0,0,20) -- default foregroud
--local wh0 = hsluv(0,0,5) -- functions

--local gr1 = hsluv(0,0,56) -- default background
--local gr2 = hsluv(0,0,60) -- line highlighting background
--local gr3 = hsluv(0,0,63) -- selection background
--
--local gr4 = hsluv(0,0,55) -- conceal
--local gr5 = hsluv(0,0,40) -- comment
--local gr6 = hsluv(0,0,40) -- parens
--local gr7 = hsluv(0,0,25) -- keywords
--local gr8 = hsluv(0,0,35) -- strings
--local gr9 = hsluv(0,0,20) -- default foregroud
--local wh0 = hsluv(0,0,5) -- functions

--local gr1 = hsluv(0,0,55) -- default background
--local gr2 = hsluv(0,0,60) -- line highlighting background
--local gr3 = hsluv(0,0,63) -- selection background
--}}}

local gr0 = hsluv(0,0,9) -- darker background
local gr1 = hsluv(0,0,12) -- default background
local gr2 = hsluv(0,0,14) -- line highlighting background
local gr3 = hsluv(0,0,17) -- selection background
local gr4 = hsluv(0,0,21) -- conceal
local gr5 = hsluv(0,0,29) -- comment
local gr6 = hsluv(0,0,35) -- parens
local gr7 = hsluv(0,0,45) -- keywords
local gr8 = hsluv(0,0,55) -- strings
local gr9 = hsluv(0,0,70) -- default foregroud
local wh0 = hsluv(0,0,90) -- functions

local ora0 = hsluv(45,80,69)
local gre0 = hsluv(105,45,54)
local red0 = hsluv(13,65,50)

local blu0 = hsluv(200, 81, 66)
local test0 = hsluv(296, 100, 62)

--local bg_red = hsluv(13,25,20) -- default background
--local bg_gre = hsluv(105,25,20) -- default background
-- local bg_gre = hsluv(105,37,56) -- default background

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    -- help ft
    helpExample { fg = gr7, gui = italic },
    helpSectionDelim { fg = gr5 },
    helpHyperTextEntry { fg = wh0, gui = italic },
    helpCommand { fg = gr7 },
    helpSpecial { fg = gr8 },
    helpUrl { fg = gr8, gui = underline },
    helpHeader { fg = gr8, gui = italic },

    LightspeedCursor { fg = gr0, bg = red0 },

    LightspeedGreyWash { fg = gr5 }, -- grayed out characters during search
    LightspeedMaskedChar { fg = gr7 }, --
    LightspeedLabel { fg = ora0 }, -- normal label (type one more character)
    LightspeedLabelOverlapped { fg = ora0.darken(30) },

    LightspeedShortcut { fg = gr0, bg = ora0 }, -- shortcut (available immediately)
    LightspeedShortcutOverlapped { fg = gr0, bg = ora0.darken(30) },

    LightspeedUnlabeledMatch { fg = gr9 }, -- the white matches

    LightspeedLabelDistant { fg = gre0 }, -- type <space> before using the label
    LightspeedLabelDistantOverlapped { fg = gre0.darken(30) },

    LightspeedOneCharMatch { fg = test0 },
    --LightspeedUniqueChar { bg = test0 },
    LightspeedPendingOpArea { fg = red0, bg = gre0, gui = underline },

    GitSignsAdd  { fg = gr6 },
    GitSignsDelete  { fg = gr6 },
    GitSignsChange  { fg = gr4 },

    IndentBlanklineChar { fg = gr4 },

    CmpItemKindFunction { fg = gr9 },
    CmpItemKindMethod { fg = gr9 },
    CmpItemKindVariable { fg = gr9 },

    CmpItemAbbrMatch { fg = gr9 },
    CmpItemAbbrMatchFuzzy { fg = gr9 },

    TelescopeNormal { fg = gr9, bg = gr1 },
    TelescopeBorder { fg = gr5, bg = gr1 },
    TelescopePromptCounter { fg = gr5 },
    TelescopeTitle { fg = gr7 },

    TelescopeSelection { fg = wh0, bg = gr2 },
    TelescopeSelectionCaret { fg = wh0, bg = gr2 },

    TelescopeMatching { fg = wh0 },

    -- .snippets hl
    snippet            { fg = gr7 },
    multiSnipText      { fg = wh0 },
    placeHolder        { fg = gr8, bg = gr2 },

    Comment      { fg = gr5, gui = italic }, -- any comment
    ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    Conceal      { fg = gr4 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { bg = wh0 }, -- character under the cursor
    lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = gr0 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { }, -- directory names (and other special names in listings)
    DiffAdd      { }, -- diff mode: Added line |diff.txt|
    DiffChange   { }, -- diff mode: Changed line |diff.txt|
    DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { fg = gr1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor   { }, -- cursor in a focused terminal
    TermCursorNC { }, -- cursor in an unfocused terminal
    ErrorMsg     { fg = gr1, bg = red0 }, -- error messages on the command line
    VertSplit    { fg = gr4 }, -- the column separating vertically split windows
    Folded       { fg = gr5 }, -- line used for closed folds
    FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { bg = 0 }, -- column where |signs| are displayed
    Search       { fg = gr0, bg = ora0 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch    { fg = gr0, bg = ora0 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { fg = gr0, bg = red0 }, -- |:substitute| replacement text highlighting
    LineNr       { fg = gr4 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = gr8, bg = gr0 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { fg = red0 }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = gr5 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { fg = gr8 }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { fg = gre0 }, -- |more-prompt|
    NonText      { fg = gr5 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = gr9, bg = gr1 }, -- normal text
    NormalFloat  { fg = gr9, bg = gr1 }, -- Normal text in floating windows.
    FloatBorder  { fg = gr4 },
    NormalNC     { }, -- normal text in non-current windows
    Pmenu        { fg = gr8, bg = gr0 }, -- Popup menu: normal item.
    PmenuSel     { fg = 1, bg = gr2 }, -- Popup menu: selected item.
    PmenuSbar    { bg = gr1 }, -- Popup menu: scrollbar.
    PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { gui = underline }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   { }, -- status line of current window
    StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { bg = gr0 }, -- tab pages line, not active tab page label
    TabLineFill  { bg = gr0 }, -- tab pages line, where there are no labels
    TabLineSel   { bg = gr1 }, -- tab pages line, active tab page label
    Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = gr3 }, -- Visual mode selection
    VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = ora0, bg = gr1, gui = 'nocombine' }, -- warning messages
    Whitespace   { fg = gr4 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     { }, -- current match in 'wildmenu' completion

   SymbolsOutlineConnector { Conceal },
   FocusedSymbol { fg = wh0 },

   -- These groups are for the neovim tree-sitter highlights.
   -- As of writing, tree-sitter support is a WIP, group names may change.
   -- By default, most of these groups link to an appropriate Vim group,
   -- TSError -> Error for example, so you do not have to define these unless
   -- you explicitly want to support Treesitter's improved syntax awareness.

    TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute          { };    -- (unstable) TODO: docs
    TSBoolean            { };    -- For booleans.
    TSCharacter          { };    -- For characters.
    TSComment            { fg = gr5, gui = italic };    -- For comment blocks.
    TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    TSConditional        { fg = gr7, gui = italic };    -- For keywords related to conditionnals.
    TSConstant           { fg = gr9 };    -- For constants
    TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    TSError              { };    -- For syntax/parser errors.
    TSException          { };    -- For exception related keywords.
    TSField              { };    -- For fields.
    TSFloat              { };    -- For floats.
    TSFunction           { fg = wh0 };    -- For function (calls and definitions).
    TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword            { fg = gr7, gui = italic };    -- For keywords that don't fall in previous categories.
    TSKeywordFunction    { TSKeyword };    -- For keywords used to define a fuction.
    TSLabel              { fg = red0 };    -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod             { fg = wh0 };    -- For method calls and definitions.
    TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    TSNone               { fg = gr9 };    -- TODO: docs
    TSNumber             { };    -- For all numbers
    TSOperator           { fg = wh0 };    -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter          { };    -- For parameters of a function.
    TSParameterReference { };    -- For references to parameters of a function.
    TSProperty           { };    -- Same as `TSField`.
    TSPunctDelimiter     { fg = gr9 };    -- For delimiters ie: `.`
    TSPunctBracket       { fg = gr6 };    -- For brackets and parens.
    TSPunctSpecial       { fg = gr6 };    -- For special punctutation that does not fall in the catagories before.
    TSRepeat             { TSKeyword };    -- For keywords related to loops.
    TSString             { fg = gr8 };    -- For strings.
    TSStringRegex        { };    -- For regexes.
    TSStringEscape       { fg = gr9 };    -- For escape characters within a string.
    TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    TSType               { };    -- For types.
    TSTypeBuiltin        { };    -- For builtin types.
    TSVariable           { };    -- Any variable name that does not have another highlight.
    TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag                { };    -- Tags like html tag names.
    TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    TSText               { };    -- For strings considered text in a markup language.
    TSEmphasis           { };    -- For text to be represented with emphasis.
    TSUnderline          { };    -- For text to be represented with an underline.
    TSStrike             { };    -- For strikethrough text.
    TSTitle              { };    -- Text that is part of a title.
    TSLiteral            { };    -- Literal text.
    TSURI                { };    -- Any URI like a link or email.


   -- These groups are not listed as default vim groups,
   -- but they are defacto standard group names for syntax highlighting.
   -- commented out groups should chain up to their "preferred" group by
   -- default,
   -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { TSConstant }, -- (preferred) any constant
    String         { TSString }, --   a string constant: "this is a string"
    Character      { TSCharacter }, --  a character constant: 'c', '\n'
    Number         { TSNumber }, --   a number constant: 234, 0xff
    Boolean        { TSBoolean }, --  a boolean constant: TRUE, false
    Float          { TSFloat }, --    a floating point constant: 2.3e10

    Identifier     { TSVariable }, -- (preferred) any variable name
    Function       { TSFunction }, -- function name (also: methods for classes)

    Statement      { }, -- (preferred) any statement
    Conditional    { TSConditional }, --  if, then, else, endif, switch, etc.
    Repeat         { TSRepeat }, --   for, do, while, etc.
    Label          { }, --    case, default, etc.
    Operator       { TSOperator }, -- "sizeof", "+", "*", etc.
    Keyword        { TSKeyword }, --  any other keyword
    Exception      { TSException }, --  try, catch, throw

    PreProc        { }, -- (preferred) generic Preprocessor
    Include        { }, --  preprocessor #include
    Define         { }, --   preprocessor #define
    Macro          { }, --    same as Define
    PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    Type           { TSType }, -- (preferred) int, long, char, etc.
    StorageClass   { }, -- static, register, volatile, etc.
    Structure      { }, --  struct, union, enum, etc.
    Typedef        { }, --  A typedef

    Special        { }, -- (preferred) any special symbol
    SpecialChar    { }, --  special character in a constant
    Tag            { }, --    you can use CTRL-] on this
    Delimiter      { }, --  character that needs attention
    SpecialComment { }, -- special things inside a comment
    Debug          { }, --    debugging statements

    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    --("Ignore", below, may be invisible...)
    Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { fg = gr1, bg = red0 }, -- (preferred) any erroneous construct

    Todo           { fg = ora0, gui = 'nocombine' }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

   -- These groups are for the native LSP client. Some other LSP clients may
   -- use these groups, or use their own. Consult your LSP client's
   -- documentation.

    LspReferenceText                     { bg = gr3 }, -- used for highlighting "text" references
    LspReferenceRead                     { bg = gr3 }, -- used for highlighting "read" references
    LspReferenceWrite                    { bg = gr3 }, -- used for highlighting "write" references

    LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    LspCodeLens                          { }, -- Used to color the virtual text of the codelens

    DiagnosticVirtualTextError           { fg = gr6, gui = "italic" },
    DiagnosticVirtualTextWarn            { fg = gr6, gui = "italic" },
    DiagnosticVirtualTextInfo            { fg = gr6, gui = "italic" },
    DiagnosticVirtualTextHint            { fg = gr6, gui = "italic" },

    DiagnosticUnderlineError             { bg = gr2 }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn              { bg = gr2 }, -- Used to underline "Warn" diagnostics
    DiagnosticUnderlineInfo              { bg = gr2 }, -- Used to underline "Info" diagnostics
    DiagnosticUnderlineHint              { bg = gr2 }, -- Used to underline "Hint" diagnostics

    DiagnosticSignError                  { fg = red0 }, -- Used for "Error" signs in sign column
    DiagnosticSignWarn                   { fg = ora0 }, -- Used for "Warn" signs in sign column
    DiagnosticSignInfo                   { fg = gr5 }, -- Used for "Info" signs in sign column
    DiagnosticSignHint                   { fg = gr5 }, -- Used for "Hint" signs in sign column

    -- should be here but i was lazy when doing th statusline module
    DiagnosticSignWarning                   { fg = ora0 }, -- Used for "Warn" signs in sign column

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
