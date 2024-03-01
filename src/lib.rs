use std::os::raw::c_int;

#[no_mangle]
fn hello(a: c_int) -> c_int {
    println!("Hello, world!");
    return a
}
