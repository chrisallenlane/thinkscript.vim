thinkscript.vim
===============
A Vim syntax-highlighter for [thinkScript][].


Installation
------------
`thinkscript.vim` can be installed as described in [packages][], or by using a
package manager like [Pathogen][], [Vundle][], or [Plug][].


Configuring
-----------
By convention, thinkScript files have a `.ts` file extension. However, Vim will
commonly interpret `.ts` files as [TypeScript][] by default. A few workarounds
are available:

#### 1. Use the `.thinkscript` extension ####
Files suffixed with `.thinkscript` will always be handled as thinkScript, and require no further configuration.

#### 2. Preface thinkScript files with a modeline ###
You may explicitly specify a `.ts` file as thinkScript by prefacing it with the following modeline:

```bash
# vim: ft=thinkscript
```

#### 3. Always handle .ts files as thinkScript ####
You may configure Vim to always handle `.ts` files as thinkScript by adding the
following to your `.vimrc`:

```vim
autocmd BufNewFile,BufRead *.ts set filetype=thinkscript
```



[Pathogen]:    https://github.com/tpope/vim-pathogen
[Plug]:        https://github.com/junegunn/vim-plug
[TypeScript]:  https://www.typescriptlang.org/
[Vundle]:      https://github.com/VundleVim/Vundle.vim 
[packages]:    https://vimhelp.org/repeat.txt.html#packages
[thinkScript]: https://tlc.thinkorswim.com/center/reference/thinkScript
