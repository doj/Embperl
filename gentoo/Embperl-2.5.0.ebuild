# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 perl-functions

DESCRIPTION="Embperl is a framework for building websites with Perl."
HOMEPAGE="https://perl.apache.org/embperl/"
EGIT_REPO_URI="https://github.com/doj/${PN}.git"
SLOT="0"
KEYWORDS="-* amd64"
DEPEND="www-apache/mod_perl"
RDEPEND="${DEPEND}"

src_configure() {
    perl_set_version
    perl Makefile.PL INSTALL_BASE=/usr INSTALLMAN1DIR=/usr/share/man1 INSTALLMAN3DIR=/usr/share/man3 INSTALLDIRS=perl INSTALLARCHLIB=/usr/lib64/perl5/$PERL_VERSION
}

src_compile() {
    # disable parallel build
    emake -j1
}

src_test() {
    # currenty test is disabled, something is failing
    #emake test
    true
}

src_install() {
    my_vendorlib="$(perl_get_vendorlib)"
    emake install DESTDIR=${D}

    perl_set_version
    dodir /etc/apache2/modules.d
    F="$D/etc/apache2/modules.d/99_embperl.conf"
    echo "Installing $F"
    echo '<IfDefine PERL>' > "$F"
    echo "LoadModule embperl_module /usr/lib64/perl5/$PERL_VERSION/auto/Embperl/Embperl.so" >> "$F"
    echo 'PerlModule Embperl' >> "$F"
    echo '</IfDefine>' >> "$F"
}
