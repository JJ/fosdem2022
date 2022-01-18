struct Complex
    r::Real
    i::Real
end

macro len(x)
    return :( sqrt( $x.r * $x.r + $x.i*$x.i ) )
end

print(@len(Complex(3,4)))
