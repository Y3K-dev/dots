if !exists('g:lspconfig')
	finish
endif

lua << EOF
	require'lspconfig'.tsserver.setup{}
EOF
