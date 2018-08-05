document.addEventListener 'turbolinks:load', ->
  instrumentImage = document.querySelector('.instrument-image')

  handleFileSelect = (evt) ->
    files = evt.target.files
    # FileList object
    # Loop through the FileList and render image files as thumbnails.
    i = 0
    f = undefined
    while f = files[i]
      # Only process image files.
      if !f.type.match('image.*')
        i++
        continue
      reader = new FileReader
      # Closure to capture the file information.
      reader.onload = ((theFile) ->
        (e) ->
          # Render thumbnail.
          span = document.createElement('span')
          span.innerHTML = [
            '<img class="instrument-preview-thumb" src="'
            e.target.result
            '" title="'
            escape(theFile.name)
            '"/>'
          ].join('')
          document.getElementById('list').insertBefore span, null
          return
      )(f)
      # Read in the image file as a data URL.
      reader.readAsDataURL f
      i++
    return

  if instrumentImage
    @addEventListener 'change', handleFileSelect, false
  return
