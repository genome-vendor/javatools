#!/usr/bin/perl                                                                                                                
use warnings;
use strict;
use Debian::Debhelper::Dh_Lib;

insert_before("dh_compress", "jh_installlibs");
insert_after("jh_installlibs", "jh_classpath");
insert_after("jh_classpath", "jh_manifest");
insert_after("jh_manifest", "jh_exec");
insert_after("jh_exec", "jh_depends");
insert_before("dh_installdocs", "jh_installjavadoc");
insert_before("dh_clean", "jh_clean");
insert_before("dh_auto_build", "jh_linkjars");
insert_after("dh_auto_build", "jh_build");

1;
