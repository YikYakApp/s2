package s2

import (
	"log"
	"testing"
)

func TestPolygonContainsPoint(t *testing.T) {

	lat := 40.0
	lon := 40.0

	//latLon := NewS2LatLng(S2LatLngFromDegrees(lat, lon))
	point := pointFromLL(lat, lon)

	cell := NewS2Cell(point)
	poly := NewS2Polygon(cell)

	if !poly.Contains(point) {
		t.Errorf("point %#v not in polygon %%v", point, poly)
	}

}

func pointFromLL(lat, lon float64) S2Point {
	l1 := S1AngleDegrees(lat)
	l2 := S1AngleDegrees(lon)
	l1.Normalize()
	l2.Normalize()
	ll := NewS2LatLng(l1, l2)
	ll = ll.Normalized()

	if !ll.Is_valid() {
		log.Println("invalid")
	}
	return ll.ToPoint()
}
