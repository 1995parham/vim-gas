" Vim syntax file
" Language:	GNU as (AT&T) assembler for X86
" Maintainer:	Rene Koecher <shirk@bitspin.org>
" Maintainer:	Parham Alvani <parham.alvani@gmail.com>
" Last Change:	2015 Feb 06
" Version:	0.9
" Remark:	Intel compatible instructions only (for now)
" License:      BSD (3 clause), see LICENSE
"

autocmd BufRead,BufNewFile *.S set filetype=gas
