# This Makefile is for the SQL::Statement extension to perl.
#
# It was generated automatically by MakeMaker version
# 0.1021 (Revision: ) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#   ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker Parameters:

# ABSTRACT_FROM => q[:lib:SQL:Statement.pm]
# AUTHOR => q[Jochen Wiedmann (joe@ispsoft.de)]
# C => [q[sql_yacc.c sql_data.c sql_op.c]]
# DEFINE => q[]
# NAME => q[SQL::Statement]
# OBJECT => q[sql_yacc.o sql_data.o sql_op.o Statement.o]
# VERSION_FROM => q[:lib:SQL:Statement.pm]
# dist => { DIST_DEFAULT=>q[all tardist], COMPRESS=>q[gzip -9f], SUFFIX=>q[.gz] }

# --- MakeMaker constants section:
NAME = SQL::Statement
DISTNAME = SQL-Statement
NAME_SYM = SQL_Statement
VERSION = 0.1021
VERSION_SYM = 0_1021
XS_VERSION = 0.1021
INST_LIB = :::lib
INST_ARCHLIB = :::lib
PERL_LIB = :::lib
PERL_SRC = :::
MACPERL_SRC = :::macos:
MACPERL_LIB = :::macos:lib
PERL = :::miniperl
FULLPERL = :::perl
SOURCE =  sql_yacc.c sql_data.c sql_op.c Statement.c

MODULES = :lib:SQL:Eval.pm \
	:lib:SQL:Statement.pm \
	:lib:SQL:Statement:Hash.pm
PMLIBDIRS = lib


.INCLUDE : $(MACPERL_SRC)BuildRules.mk


VERSION_MACRO = VERSION
DEFINE_VERSION = -d $(VERSION_MACRO)="¶"$(VERSION)¶""
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -d $(XS_VERSION_MACRO)="¶"$(XS_VERSION)¶""

MAKEMAKER = MacintoshHD:macperl_src:perl:lib:ExtUtils:MakeMaker.pm
MM_VERSION = 5.45

# FULLEXT = Pathname for extension directory (eg DBD:Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT.
# ROOTEXT = Directory part of FULLEXT (eg DBD)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = SQL:Statement
BASEEXT = Statement
ROOTEXT = SQL:
DEFINE =  $(XS_DEFINE_VERSION) $(DEFINE_VERSION) -d __STDC__ -alloca

# Handy lists of source code files:
XS_FILES= Statement.xs
C_FILES = sql_yacc.c sql_data.c sql_op.c
H_FILES = ppport.h \
	sql_data.h \
	sql_yacc.h


.INCLUDE : $(MACPERL_SRC)ExtBuildRules.mk


# --- MakeMaker dlsyms section:

dynamic :: Statement.exp


Statement.exp: Makefile.PL
	$(PERL) "-I$(PERL_LIB)" -e 'use ExtUtils::Mksymlists; Mksymlists("NAME" => "SQL::Statement", "DL_FUNCS" => {  }, "DL_VARS" => []);'


# --- MakeMaker dynamic section:

all :: dynamic

install :: do_install_dynamic

install_dynamic :: do_install_dynamic


# --- MakeMaker static section:

all :: static

install :: do_install_static

install_static :: do_install_static


# --- MakeMaker htmlifypods section:

htmlifypods : pure_all
	$(NOOP)


# --- MakeMaker processPL section:


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	$(RM_RF) Statement.c
	$(MV) Makefile.mk Makefile.mk.old


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	$(RM_RF) Makefile.mk Makefile.mk.old


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd:
	@$(PERL) -e "print qq{<SOFTPKG NAME=\"SQL-Statement\" VERSION=\"0,1021,0,0\">\n}. qq{\t<TITLE>SQL-Statement</TITLE>\n}. qq{\t<ABSTRACT>SQL parsing and processing engine</ABSTRACT>\n}. qq{\t<AUTHOR>Jochen Wiedmann (joe\@ispsoft.de)</AUTHOR>\n}. qq{\t<IMPLEMENTATION>\n}. qq{\t\t<OS NAME=\"$(OSNAME)\" />\n}. qq{\t\t<ARCHITECTURE NAME=\"\" />\n}. qq{\t\t<CODEBASE HREF=\"\" />\n}. qq{\t</IMPLEMENTATION>\n}. qq{</SOFTPKG>\n}" > SQL-Statement.ppd

# --- MakeMaker postamble section:

# add the sfio.MrC.Lib to list of MrC dynamic libs

DYNAMIC_STDLIBS_MRC		+= "{{SFIO}}lib:sfio.MrC.Lib"

# add the sfio.PPC.Lib to list of PPC dynamic libs

DYNAMIC_STDLIBS_PPC		+= "{{SFIO}}lib:sfio.PPC.Lib"


# --- MakeMaker rulez section:

install install_static install_dynamic :: 
	$(MACPERL_SRC)PerlInstall -l $(PERL_LIB)

.INCLUDE : $(MACPERL_SRC)BulkBuildRules.mk


# End.
