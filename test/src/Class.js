import MyClass from "./foreign/class.js";
export const instance_ = new MyClass();
export const constructor = MyClass;
export const instanceOf = a => b => a instanceof b
