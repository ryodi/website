#!/usr/bin/perl

my @c = ('#ec008c', '#fbe408', '#64bc47', '#25aae1');
my $s = 1;

print "    linear-gradient(90deg,\n";
for (my $i = 0; $i < 100 / $s; $i++) {
  my $f = $i*$s;
  my $t = ($i+1)*$s;
print "        ".$c[$i % @c]." $f% $t%".($t >= 100 ? '' : ',')."\n";
}
print "    );\n";
