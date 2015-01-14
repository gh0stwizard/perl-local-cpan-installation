#!/bin/sh

# cpan defaults
CPAN_HOME="$HOME/.cpan"
CPAN_CONF="${CPAN_HOME}/CPAN/MyConfig.pm"

# where is perl files will be kept
PERL_HOME="$HOME/perl"

mkdir -p ${CPAN_HOME}/CPAN || exit 1

echo "\$CPAN::Config->{cpan_home}='${CPAN_HOME}';\n\
\$CPAN::Config->{install_help}='manual';\n\
\$CPAN::Config->{makepl_arg}='INSTALLDIRS=site INSTALL_BASE=${PERL_HOME}';\n\
\$CPAN::Config->{mbuild_arg}='--installdirs=site --install_base=${PERL_HOME}';\n\
\$CPAN::Config->{mbuild_install_arg}='--installdirs=site --install_base=${PERL_HOME}';\
" > ${CPAN_CONF}

# initialize cpan
perl -MCPAN -e shell

ARCH_NAME=`perl -MConfig -e 'print $Config{archname}'`
PERL5LIB="${PERL_HOME}/lib/perl5:${PERL_HOME}/lib/perl5/${ARCH_NAME}"

echo
echo "Export the variable below in your ~/.bashrc or ~/.zshrc file:"
echo "   PERL5LIB=${PERL5LIB}"
echo

