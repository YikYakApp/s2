%module (directors="1") s2
/*%module s2*/



%include <typemaps.i>
%include <exception.i>
%include <stl.i>
%include <std_list.i>
%include <std_string.i>
%include <std_map.i>
%include <std_pair.i>



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
#include "src/geometry/base/basictypes.h"
%}



// S2CellId named PACKED.  We don't need it so we clobber it with an empty body.
#define PACKED

// The DECLARE_POD macro makes SWIG think the specified type's defined twice.
// We don't need it, so we can just remove it.
#define DECLARE_POD(TypeName)
#define PROPAGATE_POD_FROM_TEMPLATE_ARGUMENT(TemplateName)             \

// Warning 510 is "friend function 'operator +' ignored.". We can't do anything
// about that.
#pragma SWIG nowarn=510

// suppress warnings about missing equality operators
#pragma SWIG nowarn=503

// suppress std lib warnings
#pragma SWIG nowarn=315


// If we don't ignore this, the wrapper ends up assigning to None
%ignore S2CellId::None;



%{
#include "src/geometry/util/math/vector3-inl.h"
#include "src/geometry/r1interval.h"
#include "src/geometry/s1angle.h"
#include "src/geometry/s1interval.h"
/*#include "src/geometry/s2.h"*/
#include "src/geometry/s2cellid.h"
#include "src/geometry/s2region.h"
#include "src/geometry/s2pointregion.h"
#include "src/geometry/s2cap.h"
#include "src/geometry/s2latlng.h"
#include "src/geometry/s2latlngrect.h"
#include "src/geometry/s2regioncoverer.h"
#include "src/geometry/s2cell.h"
#include "src/geometry/s2cellunion.h"
#include "src/geometry/s2loop.h"
#include "src/geometry/s2polygon.h"
/*typedef  vector<S2Point> Vector_Sl_S2Point_Sg_ ;*/
%}


/*%typemap(in, numinputs=0)*/
/*vector<S2CellId> *OUTPUT(vector<S2CellId> temp) {*/
  /*$1 = &temp;*/
/*}*/

/*%typemap(in, numinputs=0)*/
/*vector<S2Point> *OUTPUT(vector<S2Point> temp) {*/
  /*$1 = &temp;*/
/*}*/



%feature("director"); 



%typemap(in, numinputs=0) std::vector<double>& OUTPUT(std::vector<double> temp) { $1 = &temp; } %typemap(argout) std::vector<double>& OUTPUT { %append_output(swig::from(*$1)); } 
%typemap(in, numinputs=0) const std::vector<double>& dVector "";
%typemap(argout) const std::vector<double>& dVector "";
%apply std::vector<double> & OUTPUT { std::vector<double>& dVector };
%apply const std::vector<double> & { const std::vector<double>& dVector };





/*typedef  vector<S2Point> Vector_Sl_S2Point_Sg_ ;*/

/*%template(Vector3_d) Vector3<double>;*/
/*%template(S2Point) Vector3<double>;*/
%template(S2PointVector) std::vector<S2Point>;
/*%template(StringVector) std::vector<string>;*/
/*%template(Vector_Sl_S2Point_Sg_) std::vector<S2Point>;*/
/*%template(S2PointConstVector) std::vector<S2Point> const;*/
/*%template(S2LoopVector) std::vector<S2Loop>;*/



%include "src/geometry/util/math/vector3-inl.h"
%include "src/geometry/r1interval.h"
%include "src/geometry/s1angle.h"
%include "src/geometry/s1interval.h"
/*%include "src/geometry/s2.h"*/
%include "src/geometry/s2cellid.h"
%include "src/geometry/s2region.h"
%include "src/geometry/s2pointregion.h"
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
	/*var swig_r float64*/
	return 1.0
}

func (p SwigcptrS2Loop) IsValid__SWIG_1(arg1 Vector_Sl_S2Point_Sg_, arg2 int) (_swig_ret bool) {
	/*var swig_r bool*/
	return true
}

func (p SwigcptrS2Polygon) IsValid__SWIG_0(arg1 Vector_Sl_S2Loop_Sm__Sg_) (_swig_ret bool) {
	/*var swig_r bool*/
	return true
}

%}        




