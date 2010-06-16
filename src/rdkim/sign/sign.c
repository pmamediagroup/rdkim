#include "ruby.h"
#include <libdkim>
#ifndef GetWriteFile
  #include "ruby/io.h"
  #define GetWriteFile(fp) rb_io_stdio_file(fp)
  #define OpenFile rb_io_t
#else
  #include "rubyio.h"
#endif


