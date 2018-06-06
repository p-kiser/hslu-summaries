# VIM

Zusammenfassung des `vimtutor` Tutorials, mit eignen Ergänzungen.

## Move cursor

```
     ^
     k
< h     l >
     j
     v
```

| character	| move to		|
|---		|---			|
| `gg`		| Beginning of file	|
| `G`		| End of file		|
| `21G`		| Line 21		|

Show line number / file status: `CTRL` + `g`

## Commands


Press `ESC`to enter _normal mode_ and type:

| command	| action		|
|---------------|-----------------------|
| `:q`		| quit			|
| `:q!`		| quit without saving	|
| `:wq`		| save and quit		|

## Text editing


Press `ESC` and type:

| character	| action				|
|---		|---					|
| `i`		| insert text				|
| `A`		| append text				|
| `x`		| delete character			|
| `u`		| undo					|
| `U`		| undo all changes in this line		|
| `dw`		| delete word				|
| `d$`		| delete to end of line			|
| `dd`		| delete line				|
| `p`		| insert previously deleted line	|
| `rx`		| replace character with x		|
| `ce`		| change until the end of a word	|


## Operators and motions

Some commands are made from an operator and a motion:

```
<operator><motion>
```

**Motions:**

| character	| motion				|
|---		|---					|
| w		| until the start of the next word	|
| e		| to the end of the current word	|
| $		| to the end of the line		|

**Count:**

Typing a number with an operator repeats it that many times:

Examples: `d2w` deletes two words, `3e`moves the cursor to the beginning of the third word

## Search command

* Type `/` in normal mode
* Type word you want to search for
* `Enter`
* To search again: `n`
* To search in the opposite direction: `N`
* To return to original cursor position: `CTRL` + `o`

### More search commands

| command	| action			|
|---		|--- 				|
| `/`		| search			|
| `?`		| search in opposite direction	|
| `%`		| find matching parethesis	|

## Substitute command

| command		| action   						|
|---			|---							|
| `:s/old/new`		| substitute _new_ for _old_ in a line			|
| `:s/old/new/g` 	| substitute _new_ for all _old_ in a line		|
| `:2,8s/old/new/g`	| substitute _new_ for all _old_ between line 2 and 8	|
| `%s/old/new/g`	| substitute _new_ for all _old_ in the file		|
| `%s/old/new/gc`	| Ask for confirmation each time			|


## Execute external commands


to execute an external command type: `:!<command>.

**Example:" `:!ls`

## Selecting, saving and inserting text

* Press `v` in normal mode and move the cursor to select text.
* Press `:` and write `w TEST` to save the selected test in the file TEST
* Write `:r TEST` to insert the content of the file TEST at the cursor position

`r` can be used insert the output of an external command. For example:

```
:r !ls
```
