# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

use Big5HKSCS;
print "1..1\n";

my $__FILE__ = __FILE__;

if ('あいえ' =~ /(あ[いう]え)/) {
    if ("$1" eq "あいえ") {
        print "ok - 1 $^X $__FILE__ ('あいえ' =~ /あ[いう]え/).\n";
    }
    else {
        print "not ok - 1 $^X $__FILE__ ('あいえ' =~ /あ[いう]え/).\n";
    }
}
else {
    print "not ok - 1 $^X $__FILE__ ('あいえ' =~ /あ[いう]え/).\n";
}

__END__
