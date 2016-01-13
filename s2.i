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


// S2CellId named PACKED.  We don't need it so we clobber it with an empty body.
#define PACKED

// The DECLARE_POD macro makes SWIG think the specified type's defined twice.
// We don't need it, so we can just remove it.
#define DECLARE_POD(TypeName)

// Warning 510 is "friend function 'operator +' ignored.". We can't do anything
// about that.
#pragma SWIG nowarn=510

// If we don't ignore this, the wrapper ends up assigning to None
%ignore S2CellId::None;



%{
#include "src/geometry/r1interval.h"
#include "src/geometry/s1angle.h"
#include "src/geometry/s1interval.h"
#include "src/geometry/s2cellid.h"
#include "src/geometry/s2region.h"
#include "src/geometry/s2cap.h"
#include "src/geometry/s2latlng.h"
#include "src/geometry/s2latlngrect.h"
#include "src/geometry/s2regioncoverer.h"
#include "src/geometry/s2polygon.h"
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
%include "src/geometry/s2polygon.h"


