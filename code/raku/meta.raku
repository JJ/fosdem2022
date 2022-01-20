use experimental :macros;

macro modulo( $c ) {
    quasi { sqrt ({{{$c}}}.re*{{{$c}}}.re + {{{$c}}}.im*{{{$c}}}.im) }
};

proto     prefix:<📏>(|) returns Num {*}
multi sub prefix:<📏>( Complex $c ) returns Num { return modulo( $c ) }
multi sub prefix:<📏>( @a ) returns Num { return sqrt @a Z* @a  }
multi sub prefix:<📏>( $a ) returns Num { return ($a²).Num  }

say 📏$_ for (3+2i, [3,2,1], 4i, 2 );

