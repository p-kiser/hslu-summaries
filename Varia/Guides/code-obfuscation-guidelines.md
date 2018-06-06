# Code Obusctaion Guidelines

Any [Real Programmer](http://www.catb.org/jargon/html/R/Real-Programmer.html) knows the first principle of computer programming:

> If it was hard to write it should be hard to read.

This is a guide on how to better obfuscate your code.

# Language choice

Use one of the big boy languages like C, Perl or assembly. They'll basically obfuscate themselves. All examples are in written in C.

# Syntax

## Short and meaningless identifiers

Because `a=aaa*aa;` will always be more obfuscated than `result = value * factor;`

## macros and define

In order to have short identifiers, _obfuscators&copy;_ tend to `#define` many things.

`TODO examples`

## Reversed array indexing

You just have to remember that `var[3]` and `3[var]` are equivalent.

## Digraphs and trigraphs

`if(a< <:b+aa??))??<f();%>`

should be less readable than:

`if (a < (b+aa)) { f(); }`

These are all the trigraphs, use them as often as possible:

| Character | Trigraphs |
|---|---|
| # | `??=` |
| \ | `??/` |
| [ | `??(` |
| ] | `??)` |
| ^ | `??'` |
| { | `??<` |
| } | `??>` |
| &#124; | `??!` |
| ~ | `??-` |

## Look-alike characters

Sometimes, it's hard to tell apart `l`, `1` and `I` or `o`, `0` and `O`. For example, if you write `10l`, I bet everyone will read `101` instead.

---

`//TODO:`

## Pointer shenanigans

## Semantic obfuscation

> orwenn's answer nicely covers obfuscation of syntax. But there is another level, and that is semantic obfuscation. Consider that the oft-mentioned Turing Machine has the same > computational power as any other programming language (ignoring considerations of input and output). In fact all of the various models of computation have sibling models with equivalent power.
>
>For example, a string char s[N] can be considered a mapping from indices to characters, so any string can be represented instead by a function which always delivers the appropriate character when called with a specified index char f(int i). Now read [this](https://www.stavros.io/posts/printing-hello-world-using-curve-fitting/). Crazy, right?

## Antipatterns and other fun stuff

* https://en.wikipedia.org/wiki/Anti-pattern
* https://en.wikipedia.org/wiki/Cargo_cult_programming
* https://en.wikipedia.org/wiki/Voodoo_programming
* https://en.wikipedia.org/wiki/Shotgun_debugging
* https://en.wikipedia.org/wiki/Magic_(programming)#Variants
* https://en.wikipedia.org/wiki/Magic_number_(programming)
* http://www.catb.org/jargon/html/H/heavy-wizardry.html
* http://www.catb.org/jargon/html/A/Alderson-loop.html

Sources:

 * [Stack Overflow](https://stackoverflow.com/questions/17080750/tutorials-for-code-obfuscation-in-c)
 * [code.wikia](http://code.wikia.com/wiki/International_Obfuscated_C_Code_Contest)
 * [Quora](https://www.quora.com/Whats-the-best-way-to-obfuscate-your-C-code)
 * [Quora example explained](https://www.quora.com/How-does-this-1984-International-Obfuscated-C-Code-Contest-winning-entry-work)
 * [Antipattern](https://sourcemaking.com/antipatterns)
 * [Wiki Anitpattern](https://en.wikipedia.org/wiki/Anti-pattern)
 * [IOCCC](https://ioccc.org/)
 * [Example](https://stackoverflow.com/questions/15393441/obfuscated-c-code-contest-2006-please-explain-sykes2-c)
 * [Weird language features](https://stackoverflow.com/questions/1995113/strangest-language-feature/1995156#1995156)
 * http://www.catb.org/jargon/html/O/Obfuscated-C-Contest.html

Things to research:

* X-macros
