# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

use Big5HKSCS;
print "1..1\n";

my $__FILE__ = __FILE__;

# s///e
$a = "あいうえおH41かきくけこ";
if ($a =~ s/H([0-9A-Fa-f]{2})/sprintf('[%c]',hex($1))/e) {
    if ($a eq "あいうえお[A]かきくけこ") {
        print qq{ok - 1 \$a =~ s/H([0-9A-Fa-f]{2})/sprintf('[%c]',hex(\$1))/e ($a) $^X $__FILE__\n};
    }
    else {
        print qq{not ok - 1 \$a =~ s/H([0-9A-Fa-f]{2})/sprintf('[%c]',hex(\$1))/e ($a) $^X $__FILE__\n};
    }
}
else {
    print qq{not ok - 1 \$a =~ s/H([0-9A-Fa-f]{2})/sprintf('[%c]',hex(\$1))/e ($a) $^X $__FILE__\n};
}

__END__
