# SimpleJScripts

Allows execution of JScript using MSScriptControl.ScriptControl com objects.

## Installation

Load `SimpleJScript.mrc` located in the root folder onto mIRC.

## Usage

### Identifier \$jsCreate

```mirc-script
$jsCreate(name)
```

Creates a container where all JScript code will be held.

Returns 1 if success, 0 otherwise.

### Identifer \$jsAddCode

```mirc-script
$jsAddCode(name,code)
```

Adds code to a container.

Return 1 if success, 0 otherwise.

### Identifier \$jsEvaluate

```mirc-script
$jsEvaluate(name,code)
```

Evaluates code.

Returns the result.

### Identifier \$jsExecute

```mirc-script
$jsExecute(name,code)
```

Executes code.

Return 1 if success, 0 otherwise.

### Identifer \$jsDestroy

```mirc-script
$jsDestroy(name)
```

Removes everything from a JScript script and closes it.

Return 1 if success, 0 otherwise.

## License

This project is made available under the [MIT](https://choosealicense.com/licenses/mit/) License.

## Changelog

If you would like to see our changelog please read our [CHANGELOG.md](./CHANGELOG.md) file.
