#!/usr/bin/env perl6


my $quaternion = Metamodel::ClassHOW.new_type(name => "Quaternion",
            ver => v0.0.1,
            auth => "github:JJ");

for <i j k l> -> $a {
    my $attr = Attribute.new(name => '$.'~$a, type => Num, package =>
$quaternion,:has_accessor);
    say $attr.raku;
    $quaternion.^add_attribute( $attr );
}

my $modulo = method ( $invocant: ) {
    sqrt( $invocant.i²+$invocant.j²+$invocant.k²+$invocant.l²)
};

$quaternion.^add_method( "modulo", $modulo );
$quaternion.^compose;

my $a-quaternion = $quaternion.new( :i(0.0.Num), :j(1.0.Num), :k(1.0.Num), :l(3.0.Num));

say $a-quaternion.modulo();

