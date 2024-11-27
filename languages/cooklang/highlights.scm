; Based off of https://github.com/nvim-treesitter/nvim-treesitter/blob/master/queries/cooklang/highlights.scm
; SPDX-License-Identifier: Apache-2.0
; Summary of changes:
; - `@spell` removed from comment identifier

(metadata) @comment

(comment) @comment

[
  "{"
  "}"
] @punctuation.bracket

"%" @punctuation.special

(ingredient
  "@" @punctuation.delimiter
  (name)? @string.special.symbol
  (amount
    (quantity)? @number
    (units)? @constant)?)

(timer
  "~" @punctuation.delimiter
  (name)? @string.special.symbol
  (amount
    (quantity)? @number
    (units)? @constant)?)

(cookware
  "#" @punctuation.delimiter
  (name)? @string.special.symbol
  (amount
    (quantity)? @number
    (units)? @constant)?)
