# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

use Big5HKSCS;
print "1..1\n";

my $__FILE__ = __FILE__;

# s///x ●
$a = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
if ($a =~ s/ J K L /かきく/x) {
    if ($a eq "ABCDEFGHIかきくMNOPQRSTUVWXYZ") {
        print qq{ok - 1 \$a =~ s/ J K L /かきく/x ($a) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 \$a =~ s/ J K L /かきく/x ($a) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 \$a =~ s/ J K L /かきく/x ($a) $^X $__FILE__\n};
}

__END__
