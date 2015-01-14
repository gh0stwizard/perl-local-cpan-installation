
Description
===========

All-in-one script to perform install modules from CPAN for an ordinary user.

This is shell scipt and applies for any *nix-like system:

* GNU/Linux
* FreeBSD
* OpenBSD


Usage
==========

```
shell> sh user_cpan_installation.sh
```

* Answer on questions in CPAN shell
* Exit from CPAN shell by typing "q" without quotes
* Use PERL5LIB environment variable in your ~/.bashrc, ~/.zshrc, etc (just add export PERL5LIB="...")

That's all. Install your modules as usual via CPAN shell:

```
shell> perl -MCPAN -e shell
```

Customization
=============

Look at *user_cpan_installation.sh* script via your editor. By default:

* CPAN's configuration files lies in $HOME/.cpan
* Installed modules are place in $HOME/perl


References
=============

[1]: [Oddmuse: CPAN Local Install](http://www.oddmuse.org/wiki/CPAN_Local_Install)
