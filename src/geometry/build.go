package s2

// #cgo LDFLAGS:  -L/home/tudorh/usr/lib -lgflags -L/usr/lib -lz -L/usr/local/opt/openssl/lib
// #cgo CFLAGS:   -fPIC -O -DNDEBUG -I. -DARCH_K8 -I/home/tudorh/usr/include -I/usr/include -I/usr/local/opt/openssl/include -Wno-deprecated -DS2_USE_EXACTFLOAT
// #cgo CPPFLAGS: -I/usr/local/opt/openssl/include
import "C"
