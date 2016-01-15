%module s2



%include <typemaps.i>
%include <exception.i>
%include <stl.i>



%{
#include <vector>
#if defined __GNUC__ || defined __APPLE__
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



// S2CellId named PACKED.  We don't need it so we clobber it with an empty body.
#define PACKED

// The DECLARE_POD macro makes SWIG think the specified type's defined twice.
// We don't need it, so we can just remove it.
#define DECLARE_POD(TypeName)

// Warning 510 is "friend function 'operator +' ignored.". We can't do anything
// about that.
#pragma SWIG nowarn=510

// suppress warnings about missing equality operators
#pragma SWIG nowarn=503


/*%typemap(in, numinputs=0)*/
/*vector<S2CellId> *OUTPUT(vector<S2CellId> temp) {*/
  /*$1 = &temp;*/
/*}*/

/*%typemap(argout, fragment="t_output_helper")*/
/*vector<S2CellId> *OUTPUT {*/
  /*$result = t_output_helper($result, vector_output_helper($1, &FromS2CellId));*/
/*}*/

/*%apply vector<S2CellId> *OUTPUT {vector<S2CellId> *covering};*/
/*%apply vector<S2CellId> *OUTPUT {vector<S2CellId> *output};*/



/*//  templates for vectors*/
/*namespace std {*/
        /*%template(StringVector) vector<string>;*/
        /*%template(ByteVector) vector<char>;*/
        /*%template(S2PointVector) vector<S2Point>;*/
/*}*/



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
#include "src/geometry/s2cell.h"
#include "src/geometry/s2cellunion.h"
#include "src/geometry/s2loop.h"
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
%include "src/geometry/s2cell.h"
%include "src/geometry/s2cellunion.h"
%include "src/geometry/s2loop.h"
%include "src/geometry/s2polygon.h"

// swig does not generate instance methods if there is a static method with the same name. 
// Insert dummy instance methods for these so that the go code will compile
%insert(go_wrapper) %{

func (p SwigcptrS2Cell) AverageArea__SWIG_0(arg1 int) (_swig_ret float64) {
	var swig_r float64
	return swig_r
}

func (p SwigcptrS2Loop) IsValid__SWIG_1(arg1 Vector_Sl_S2Point_Sg_, arg2 int) (_swig_ret bool) {
	var swig_r bool
	return swig_r
}

func (p SwigcptrS2Polygon) IsValid__SWIG_0(arg1 Vector_Sl_S2Loop_Sm__Sg_) (_swig_ret bool) {
	var swig_r bool
	return swig_r
}



%}        



