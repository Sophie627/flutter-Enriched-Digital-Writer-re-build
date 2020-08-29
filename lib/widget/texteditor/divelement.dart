final String divBeforeEditor = """
  <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>CKEditor 5 – document editor build sample</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        main #editor {
            width: 100%;
            min-height: 21cm;
            margin: 0 auto;
            padding: 25px 20px;
        }
        main #editor:focus {
          outline: 0 !important;
        }
    </style>
</head>

<main>
    <div class="document-editor">
        <div class="toolbar-container"></div>
        <div class="content-container">
            <div id="editor" contenteditable="true">
""";

final String divAfterEditor = """
</div>
        </div>
    </div>

</main>

<script>
  //Change background color
  parent.connect_content_to_flutter && parent.connect_content_to_flutter(window)
  function changeBackgroundColor(color) {
    \$('body').css('background', color);
  }

  // Delete
  parent.connect_content_to_flutter && parent.connect_content_to_flutter(window)
  function deleteText() {
    document.execCommand('delete');
    // document.body.style.zoom = "80%";
  }

  // Copy
  parent.connect_content_to_flutter && parent.connect_content_to_flutter(window)
  function copyText() {
    document.execCommand('copy');
  }

  // Paste
  parent.connect_content_to_flutter && parent.connect_content_to_flutter(window)
  function pasteText() {
    document.execCommand('insertText');
  }

  // Undo
  parent.connect_content_to_flutter && parent.connect_content_to_flutter(window)
  function undoText() {
    document.execCommand('undo');
  }

  // Redo
  parent.connect_content_to_flutter && parent.connect_content_to_flutter(window)
  function redoText() {
    document.execCommand('redo');
  }

  // ForeColor
  parent.connect_content_to_flutter && parent.connect_content_to_flutter(window)
  function changeFontColor(color) {
    document.execCommand('foreColor', false, color);
  }

  // ForeName
  parent.connect_content_to_flutter && parent.connect_content_to_flutter(window)
  function changeFontName(fontFamily) {
    document.execCommand('fontName', false, fontFamily);
  }

</script>

</html>
""";

final String divBeforeCKEditor = """
  <!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>CKEditor 5 – document editor build sample</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        main #editor {
            box-shadow: 2px 2px 2px rgba(0, 0, 0, .1);
            border: 1px solid #DFE4E6;
            width: 100%;
            min-height: 21cm;
            padding: 1cm 1cm 2cm;
            margin: 0 auto;
            box-shadow: 2px 2px 1px rgba(0, 0, 0, .05);
        }
    </style>
</head>

<main>
    <div class="document-editor">
        <div class="toolbar-container"></div>
        <div class="content-container">
            <div id="editor">
""";

final String divAfterCKEditor = """
</div>
        </div>
    </div>

</main>

<script src="https://cdn.jsdelivr.net/gh/Sophie627/js-text-editor/ckeditor.js"></script>

<script>
  // variant 1
  parent.connect_content_to_flutter && parent.connect_content_to_flutter(window)
  function changeBackgroundColor(color) {
    \$('body').css('background', color);
  }

  // variant 2
  window.addEventListener("message", (message) => {
    if (message.data.id === "test") {
      alert(message.data.msg)
    }
  })
</script>

<script>
    DecoupledEditor
        .create(document.querySelector('#editor'), {
            // toolbar: [ 'heading', '|', 'bold', 'italic', 'link' ]
        })
        .then(editor => {
            const toolbarContainer = document.querySelector('main .toolbar-container');

            toolbarContainer.prepend(editor.ui.view.toolbar.element);

            window.editor = editor;
        })
        .catch(err => {
            console.error(err.stack);
        });
</script>

</html>
""";