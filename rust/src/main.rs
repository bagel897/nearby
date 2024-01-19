use autocxx::prelude::*; // use all the main autocxx functions

include_cpp! {
    #include "connections/core.h"
    safety!(unsafe) // see details of unsafety policies described in the 'safety' section of the book
    generate!("Core") // add this line for each function or type you wish to generate
}
