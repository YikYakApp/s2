swig -go -cgo -c++ -intgosize 64 s2.i 
go build -ldflags "-L/home/tudorh/usr/lib -lgflags -L/usr/lib -lz -L/usr/local/opt/openssl/lib" -gcflags "-fPIC -O -DNDEBUG -I. -DARCH_K8 -I/home/tudorh/usr/include -I/usr/include -I/usr/local/opt/openssl/include -Wno-deprecated -DS2_USE_EXACTFLOAT"  -x
 
