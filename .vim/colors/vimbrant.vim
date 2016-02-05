" Vim color file
" Scriptname:   vimbrant
" Author:       Thayer Williams <thayer.cinderwick.ca>
" Description:  A vibrant light-on-dark colorscheme with support
" for GUI, 256-color and 16-color terminals and optional transparency
"
" Based on the molokai theme by Tomas Restrepo, which in turn 
" is based on the monokai theme for textmate by Wimer Hazenberg
" and its darker variant by Hamish Stuart Macpherson.  A big 
" thanks to these individuals for making what are some of the 
" best color schemes ever.
 
hi clear
set background=dark
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="vimbrant"

    " 256-color scheme

hi Boolean         ctermfg=135
hi Character       ctermfg=186
hi Number          ctermfg=135
hi String          ctermfg=186
hi Conditional     ctermfg=161               cterm=bold
hi Constant        ctermfg=135               cterm=bold
hi Cursor          ctermfg=16  ctermbg=253
hi Debug           ctermfg=225               cterm=bold
hi Define          ctermfg=81
hi Delimiter       ctermfg=241

hi DiffAdd                     ctermbg=24
hi DiffChange      ctermfg=181 ctermbg=239
hi DiffDelete      ctermfg=162 ctermbg=53
hi DiffText                    ctermbg=102   cterm=bold

hi Directory       ctermfg=118               cterm=bold
hi Error           ctermfg=219 ctermbg=89
hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
hi Exception       ctermfg=118               cterm=bold
hi Float           ctermfg=135
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi Function        ctermfg=118
hi Identifier      ctermfg=208
hi Ignore          ctermfg=244 ctermbg=232
hi IncSearch       ctermfg=193 ctermbg=16

hi Keyword         ctermfg=161               cterm=bold
hi Label           ctermfg=229               cterm=none
hi Macro           ctermfg=193
hi SpecialKey      ctermfg=81

" mail-related syntaxes
"hi mailHeaderEmail links to mailEmail 
"hi mailURL         links to String 
"hi mailEmail       links to Special 
"hi mailSignature   links to PreProc 
hi mailSubject     ctermfg=186
hi mailHeaderKey   ctermfg=186
hi mailHeader      ctermfg=186
hi mailQuoted1     ctermfg=6
hi mailQuoted2     ctermfg=14
hi mailQuoted3     ctermfg=2
hi mailQuoted4     ctermfg=3
hi mailQuoted5     ctermfg=1
hi mailQuoted6     ctermfg=5

hi MatchParen      ctermfg=16  ctermbg=208   cterm=bold
hi ModeMsg         ctermfg=229
hi MoreMsg         ctermfg=229
hi Operator        ctermfg=161

" complete menu
hi Pmenu           ctermfg=81  ctermbg=16
hi PmenuSel                    ctermbg=244
hi PmenuSbar                   ctermbg=232
hi PmenuThumb      ctermfg=81

hi PreCondit       ctermfg=118               cterm=bold
hi PreProc         ctermfg=118
hi Question        ctermfg=81
hi Repeat          ctermfg=161               cterm=bold
hi Search          ctermfg=253 ctermbg=162

" marks column
hi SignColumn      ctermfg=118 ctermbg=235
hi SpecialChar     ctermfg=161               cterm=bold
hi SpecialComment  ctermfg=245               cterm=bold
hi Special         ctermfg=81 
hi SpecialKey      ctermfg=245

hi Statement       ctermfg=161               cterm=bold
hi StatusLine      ctermfg=238 ctermbg=253
hi StatusLineNC    ctermfg=244 ctermbg=232
hi StorageClass    ctermfg=208
hi Structure       ctermfg=81
hi Tag             ctermfg=161
hi Title           ctermfg=166
hi Todo            ctermfg=231 ctermbg=232   cterm=bold

hi Typedef         ctermfg=81
hi Type            ctermfg=81                cterm=none
hi Underlined      ctermfg=244               cterm=underline

hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
hi VisualNOS                   ctermbg=238
hi Visual          ctermfg=33  ctermbg=17
hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
hi WildMenu        ctermfg=81  ctermbg=16

hi Normal          ctermfg=248 ctermbg=0
hi Comment         ctermfg=225
hi CursorLine                  ctermbg=234   cterm=none
hi CursorColumn                ctermbg=234
hi LineNr          ctermfg=240 ctermbg=235
hi NonText         ctermfg=250

" Outlines
hi OL1             ctermfg=118
hi OL2             ctermfg=197
hi OL3             ctermfg=208
hi OL4             ctermfg=81
hi OL5             ctermfg=135
hi OL6             ctermfg=186
hi OL7             ctermfg=225
hi OL8             ctermfg=161
hi OL9             ctermfg=67

" Outline tags
hi outlTags        ctermfg=118               cterm=bold

" Body text
hi BT1             ctermfg=244
hi BT2             ctermfg=244
hi BT3             ctermfg=244
hi BT4             ctermfg=244
hi BT5             ctermfg=244
hi BT6             ctermfg=244
hi BT7             ctermfg=244
hi BT8             ctermfg=244
hi BT9             ctermfg=244

" Pre-formatted text
hi PT1             ctermfg=135
hi PT2             ctermfg=135
hi PT3             ctermfg=135
hi PT4             ctermfg=135
hi PT5             ctermfg=135
hi PT6             ctermfg=135
hi PT7             ctermfg=135
hi PT8             ctermfg=135
hi PT9             ctermfg=135

" Tables
hi TA1             ctermfg=67
hi TA2             ctermfg=67
hi TA3             ctermfg=67
hi TA4             ctermfg=67
hi TA5             ctermfg=67
hi TA6             ctermfg=67
hi TA7             ctermfg=67
hi TA8             ctermfg=67
hi TA9             ctermfg=67

" 'user text'
hi UT1             ctermfg=244
hi UT2             ctermfg=244
hi UT3             ctermfg=244
hi UT4             ctermfg=244
hi UT5             ctermfg=244
hi UT6             ctermfg=244
hi UT7             ctermfg=244
hi UT8             ctermfg=244
hi UT9             ctermfg=244

" non-wrapping 'user text'
hi UB1             ctermfg=240
hi UB2             ctermfg=240
hi UB3             ctermfg=240
hi UB4             ctermfg=240
hi UB5             ctermfg=240
hi UB6             ctermfg=240
hi UB7             ctermfg=240
hi UB8             ctermfg=240
hi UB9             ctermfg=240
