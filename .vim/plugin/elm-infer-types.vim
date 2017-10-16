" From https://gist.github.com/hoelzro/9228e18fb2cc6c672767193250e57497
function! s:GetReport(filename)
  " XXX async would be better
  let lines = systemlist("elm-make --report=json " . a:filename)
  let lines = lines[0:-2] " strip off last line, which isn't JSON
  return json_decode(join(lines, '\n'))
endfunction

function! s:ExtractAnnotations(report)
  let annotations = []
  for item in a:report
    if item['tag'] == 'missing type annotation'
      let line_no = item['region']['start']['line']
      let inferred_type = substitute(item['details'], '^.*\n\n', '', '')
      call add(annotations, { 'line': line_no, 'type': inferred_type })
    endif
  endfor
  return annotations
endfunction

function! s:CompareByLine(lhs, rhs)
  if a:lhs['line'] < a:rhs['line']
    return -1
  elseif a:lhs['line'] > a:rhs['line']
    return 1
  else
    return 0
  endif
endfunction

function! AddMissingTypes()
  let report = <SID>GetReport(expand('%'))
  let annotations = <SID>ExtractAnnotations(report)
  let annotations = reverse(sort(annotations, function('<SID>CompareByLine')))

  for annotation in annotations
    call append(annotation['line'] - 1, annotation['type'])
  endfor

  return annotations
endfunction
