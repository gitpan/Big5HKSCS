# This file is encoded in Big5-HKSCS.
die "This file is not encoded in Big5-HKSCS.\n" if q{あ} ne "\x82\xa0";

use Big5HKSCS;
print "1..1\n";

# マッチしないはずなのにマッチする（２）
if ("兄弟" =~ /Z/) {
    print qq<not ok - 1 "KYODAI" =~ /Z/>;
}
else {
    print qq<ok - 1 "KYODAI" =~ /Z/>;
}

__END__

Shift-JISテキストを正しく扱う
http://homepage1.nifty.com/nomenclator/perl/shiftjis.htm
