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



%{
#include <vector>
#ifdef __GNUC__
#include <ext/hash_map>
#include <ext/hash_set>
#else
#include <hash_map>
#include <hash_set>
#endif
#include <set>
#include <map>
#include <string>
#include "base/basictypes.h"

%}


%include "src/geometry/r1interval.h"
%include "src/geometry/s1angle.h"
%include "src/geometry/s1interval.h"
%include "src/geometry/s2cellid.h"
%include "src/geometry/s2region.h"
%include "src/geometry/s2cap.h"
%include "src/geometry/s2latlng.h"
%include "src/geometry/s2latlngrect.h"
%include "src/geometry/s2regioncoverer.h"
%include "src/geometry/s2cell.h"
%include "src/geometry/s2cellunion.h"
%include "src/geometry/s2polygon.h"
%include "src/geometry/s2loop.h"
%include "src/geometry/s2polygon.h"
%include "src/geometry/s2polygonbuilder.h"




