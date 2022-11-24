set background=dark
let g:colors_name="nightshift"
lua package.loaded['nightshift.theme'] = nil
lua require('lush')(require('nightshift.theme'))
