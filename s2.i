%module s2

/*#pragma SWIG nowarn=312,451,454,503,362*/


%include <typemaps.i>
%include <exception.i>

%include "std_string.i"
%include "std_vector.i"
%include "std_common.i"
%include "std_pair.i"
%include "std_list.i"
%include "std_map.i"



// This will create 2 wrapped types in Go called
// "StringVector" and "ByteVector" for their respective
// types.
namespace std {
   %template(StringVector) vector<string>;
   %template(ByteVector) vector<char>;
}




%include "src/geometry/r1interval.h"
%{
#include "src/geometry/r1interval.h"
%}
