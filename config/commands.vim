scriptencoding utf-8

" ┌──────────────────────────────────────────────────┐
" │ Make these commonly mistyped commands still work │
" └──────────────────────────────────────────────────┘
command! WQ wq
command! Wq wq
command! Wqa wqa
command! W w
command! Q q

" ┌──────────────────────────┐
" │ Use :C to clear hlsearch │
" └──────────────────────────┘
"# :C -- Clear hlsearch
command! C nohlsearch

"# :Del -- Delete current file and clear the buffer
command! Del :call delete(@%) | bdelete!

" ┌───────────────────────────────────────┐
" │ Force write readonly files using sudo │
" └───────────────────────────────────────┘
command! WS w !sudo tee %

"# :FormatJSON -- Format JSON in current buffer
command! FormatJSON %!python -m json.tool

"# :EditExtension <name> -- Edit the extension file with the given name
command! -bang -nargs=? EditExtension :call functions#EditExtension(<q-bang>, <q-args>)

"# :ReloadExtensions -- Reload and install missing extensions
command! ReloadExtensions :call extensions#reload()

"# :Prettier -- Run Prettier in current file
command! Prettier :silent !prettier --write %
