const Opaque = opaque { foo: i32 };
export fn entry() void {
    const foo: ?*Opaque = null;
    _ = foo;
}

// error
// backend=stage1
// target=native
//
// tmp.zig:1:25: error: opaque types cannot have fields