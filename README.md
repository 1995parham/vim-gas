# VIM-GAS

## Introduction

This vim bundle adds advanced syntax highlighting for GNU as (AT&T) for x86 CPUs.

This file defines a (almost) complete syntax for GNU as assembler.

My motivation in writing this was the lack of a complete, working syntax for this
common assembler.

For now the basic as directives as well as the Intel / AMD instruction sets are included.
Opcodes supporting a size suffix are recognized plain as well as suffixed with `b/w/l/q`.

Because of some issues in vim-gas, I decided to develop some new features base on old project from
Rene Kocher.I did not change anything, just add some new features and fix some errors.

I hope this syntax file will be useful to other people
but don't blame me if it doesn't suit your needs.

## What does it look like?

![screenshot here..](screenshots/1.jpg)

## Supported instructions:

- X86 common instruction set (8086 - 686)
- Katmai Streaming SIMD instructions (SSE -- a.k.a. KNI, XMM, MMX2)
- Introduced in Deschutes but necessary for SSE support
- XSAVE group (AVX and extended state)
- Generic memory operations
- New MMX instructions introduced in Katmai
- AMD Enhanced 3DNow! (Athlon) instructions
- Willamette SSE2 Cacheability Instructions
- Willamette MMX instructions (SSE2 SIMD Integer Instructions)
- Willamette Streaming SIMD instructions (SSE2)
- Prescott New Instructions (SSE3)
- VMX Instructions
- Extended Page Tables VMX instructions
- Tejas New Instructions (SSSE3)
- AMD SSE4A
- New instructions in Barcelona
- Penryn New Instructions (SSE4.1)
- Nehalem New Instructions (SSE4.2)
- AMD SSE5 instructions
- Intel SMX
- Geode (Cyrix) 3DNow! additions
- Intel AES instructions
- Intel AVX AES instructions
- Intel AVX instructions
- Intel Carry-Less Multiplication instructions (CLMUL)
- Intel AVX Carry-Less Multiplication instructions (CLMUL)
- Intel Fused Multiply-Add instructions (FMA)
- VIA (Centaur) security instructions
- AMD XOP, FMA4 and CVT16 instructions (SSE5)
- Systematic names for the hinting nop instructions

You can set different highlighting for each set listed above by adding a line like this to you .vimrc:

```vim
hi def link gasOpcodeX86_PENT_SSE  <some_highlighting>
```

## per-file opcode enable / disable

It is possible to disable sets of opcodes by either CPU they where introduced in or by their extension name.
This is done by setting a special variable recognized by gas.vim to the list of disabled opcodes.

E.g.

```vim
" globally disable all x86_64 opcodes
:let g:gasDisableOpcodes='x86_64'


" disable SSE and SSE2 for this buffer
let b:gasDisableOpcodes='sse sse2'
```

Disabled opcodes will be highlighted as errors.

### Recognized CPU groups

- 186
- 286
- 386
- 3862
- 486
- 8086
- amd
- future
- ia64
- katmai
- nehalem
- p6
- pentium_m
- pentium
- prescott
- sandybridge
- x64
- x642
- x86_64

### Recognized extension groups

- base
- 3dnow
- mmx, mmx2
- sse, sse2, sse3, ssse3, sse4.1, sse4.2, sse4a, sse5
- avx
- fma
- vmx

## Installation

This syntax file can either be installed manually or by using pathogen.

### Manual Installation

Download gas.vim and copy the file to .vim/syntax/ in your home folder.
Add this line to the end of your file:

```
/* vim: ft=gas */
```

### Plugin Installation

#### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug '1995parham/vim-gas'
```
