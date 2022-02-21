map <F9> :call Snippet()<cr>

function! Snippet()
	let language = expand('%:e')
	if expand('%:t') == ".vimrc"
		let language="vim"
	endif
	execute "r!~/snippetSearcher.sh " . language
	redraw!
endfunction
