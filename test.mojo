fn main():
    var thing = SomeStruct()
    try:
        temp()
    except:
        print("An error occurred in temp()")
    
    fun_with_traits(thing)
    repeat[3]("Rupal")
    repeat[4]("Ram")


def temp():
    var x = 1
    add_one(x)
    print(x)


fn add_one(owned y: Int = 1):
    print(y)

fn fun_with_traits[T: SomeTrait](x: T):
    x.required_method(42)


trait SomeTrait:
    fn required_method(self, x: Int):
        ...


struct SomeStruct(SomeTrait):
    fn __init__(inout self):
        ...

    fn required_method(self, x: Int):
        print("hello traits", x)


fn repeat[count: Int](msg: String):
    for i in range(count):
        print(msg)
