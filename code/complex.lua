local complex = { r= 3, i= 5 }

local mti = {
   __tostring = function( n )
      return n.r.."+".. n.i.."i"
   end,
   __len = function( n )
      return math.sqrt(n.r*n.r + n.i * n.i)
   end
}
setmetatable( complex, mti )
print( tostring(complex ) )
print( #complex )
