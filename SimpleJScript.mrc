/**
*
* Current version of the project.
*
* @const $SIMPLE_JSCRIPT
*
* @global
*
*/
alias -l SIMPLE_JSCRIPT return 1.0.0

/**
*
* Creates a JScript container.
*
* @identifier $jsCreate
*
* @param <name>  Name of the container.
*
* @returns  1 on success, 0 otherwise.
*
* @global
*
*/
alias jsCreate {
  if ($~isid) {
    if ($~0 >= 1) {
      !set -l %name $~+(js,$~1)

      if (!$~com(%name)) {
        .!comopen %name MSScriptControl.ScriptControl

        if (!$~comerr) !return $~com(%name,language,4,bstr,jscript)
      }
    }

    !return 0
  }
  else {
    !echo -ces info * jsCreate: is not a command

    !halt
  }
}

/**
*
* Adds code to a container.
*
* @identifier $jsAddCode
*
* @param <name>  Name of the container.
* @param <code>  Code to be added.
*
* @returns  1 on success, 0 otherwise.
*
* @global
*
*/
alias jsAddCode {
  if ($~isid) {
    if ($~0 >= 2) {
      !set -l %name $~+(js,$~1)

      if (!$~com(%name)) !return $~com(%name,addcode,1,bstr,$~2-)
    }

    !return 0
  }
  else {
    !echo -ces info * jsAddCode: is not a command

    !halt
  }
}

/**
*
* Evaluates a JScript snippet.
*
* @identifier $jsEvaluate
*
* @param <name>  Name of the container.
* @param <code>  Snippet to be evaluated.
*
* @returns  the result of the evaluation.
*
* @global
*
*/
alias jsEvaluate {
  if ($~isid) {
    if ($~0 >= 2) {
      !set -l %name $~+(js,$~1)

      if (!$~com(%name)) && ($~com(%name,eval,1,bstr,$~2-)) !return $~com(%name).result
    }

    !return 0
  }
  else {
    !echo -ces info * jsEvaluate: is not a command

    !halt
  }
}

/**
*
* Executes a JScript snippet.
*
* @identifier $jsExecute
*
* @param <name>  Name of the container.
* @param <code>  Snippet to be executed.
*
* @returns  1 on success, 0 otherwise.
*
* @global
*
*/
alias jsExecute {
  if ($~isid) {
    if ($~0 >= 2) {
      !set -l %name $~+(js,$~1)

      if (!$~com(%name)) && ($~com(%name,executestatement,1,bstr,$~2-)) !return 1
    }

    !return 0
  }
  else {
    !echo -ces info * jsExecute: is not a command

    !halt
  }
}

/**
*
* Destroys a JScript container.
*
* @identifier $jsDestroy
*
* @param <name>  Name of the container.
*
* @returns  1 on success, 0 otherwise.
*
* @global
*
*/
alias jsDestroy {
  if ($~isid) {
    !set -l %name $~+(js,$~1)

      if (!$~com(%name)) {
        .!comclose %name

        !return 1
      }

    !return 0
  }
  else {
    !echo -ces info * jsDestroy: is not a command

    !halt
  }
}