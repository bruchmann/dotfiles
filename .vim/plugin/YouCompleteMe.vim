" Plugin -- YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_min_num_identifier_candidate_chars = 3
let g:tern_show_argument_hints = 'on_hold'

if !exists("g:ycm_semantic_triggers")
	let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
