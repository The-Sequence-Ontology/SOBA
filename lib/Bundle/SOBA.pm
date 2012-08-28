package Bundle::SOBA;

$VERSION = '0.01';

1;

__END__

=head1 NAME

Bundle::SOBA - CPAN prequisites for SOBAcl

=head1 SYNOPSIS

perl -I'lib/' -MCPAN -e 'install Bundle::SOBA'

=head1 CONTENTS

Getopt::Long
DBI
Number::Format
Template
Template::Plugin::Number::Format
Statistics::Descriptive
Set::IntSpan::Fast
Text::Table
SQL::Abstract
GD::Graph
GraphViz

=head1 CONFIGURATION

Summary of my perl5 (revision 5 version 10 subversion 1) configuration:
   
  Platform:
    osname=linux, osvers=2.6.24-27-server, archname=x86_64-linux-gnu-thread-multi
    uname='linux crested 2.6.24-27-server #1 smp fri mar 12 01:23:09 utc 2010 x86_64 gnulinux '
    config_args='-Dusethreads -Duselargefiles -Dccflags=-DDEBIAN -Dcccdlflags=-fPIC -Darchname=x86_64-linux-gnu -Dprefix=/usr -Dprivlib=/usr/share/perl/5.10 -Darchlib=/usr/lib/perl/5.10 -Dvendorprefix=/usr -Dvendorlib=/usr/share/perl5 -Dvendorarch=/usr/lib/perl5 -Dsiteprefix=/usr/local -Dsitelib=/usr/local/share/perl/5.10.1 -Dsitearch=/usr/local/lib/perl/5.10.1 -Dman1dir=/usr/share/man/man1 -Dman3dir=/usr/share/man/man3 -Dsiteman1dir=/usr/local/man/man1 -Dsiteman3dir=/usr/local/man/man3 -Dman1ext=1 -Dman3ext=3perl -Dpager=/usr/bin/sensible-pager -Uafs -Ud_csh -Ud_ualarm -Uusesfio -Uusenm -DDEBUGGING=-g -Doptimize=-O2 -Duseshrplib -Dlibperl=libperl.so.5.10.1 -Dd_dosuid -des'
    hint=recommended, useposix=true, d_sigaction=define
    useithreads=define, usemultiplicity=define
    useperlio=define, d_sfio=undef, uselargefiles=define, usesocks=undef
    use64bitint=define, use64bitall=define, uselongdouble=undef
    usemymalloc=n, bincompat5005=undef
  Compiler:
    cc='cc', ccflags ='-D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fno-strict-aliasing -pipe -fstack-protector -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64',
    optimize='-O2 -g',
    cppflags='-D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fno-strict-aliasing -pipe -fstack-protector -I/usr/local/include'
    ccversion='', gccversion='4.4.3', gccosandvers=''
    intsize=4, longsize=8, ptrsize=8, doublesize=8, byteorder=12345678
    d_longlong=define, longlongsize=8, d_longdbl=define, longdblsize=16
    ivtype='long', ivsize=8, nvtype='double', nvsize=8, Off_t='off_t', lseeksize=8
    alignbytes=8, prototype=define
  Linker and Libraries:
    ld='cc', ldflags =' -fstack-protector -L/usr/local/lib'
    libpth=/usr/local/lib /lib /usr/lib /lib64 /usr/lib64
    libs=-lgdbm -lgdbm_compat -ldb -ldl -lm -lpthread -lc -lcrypt
    perllibs=-ldl -lm -lpthread -lc -lcrypt
    libc=/lib/libc-2.11.1.so, so=so, useshrplib=true, libperl=libperl.so.5.10.1
    gnulibc_version='2.11.1'
  Dynamic Linking:
    dlsrc=dl_dlopen.xs, dlext=so, d_dlsymun=undef, ccdlflags='-Wl,-E'
    cccdlflags='-fPIC', lddlflags='-shared -O2 -g -L/usr/local/lib -fstack-protector'



=head1 AUTHOR

Barry Moore <barry.moore@genetics.utah.edu>
