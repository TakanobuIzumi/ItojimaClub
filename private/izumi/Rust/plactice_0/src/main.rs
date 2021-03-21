fn main()
{
    println!("Hello, world!");

    let s1: String = String::from("Hello World");
    let s2: &str = &s1;
    let s3: String = s2.to_string();

    let mut t = (1, "2");
    t.0= 2;
    t.1 = "3";

    let mut a: [i32; 3] = [1,2,3];
    println!("{:?}", &a[0..3]);
    let b: [i32; 3] = [4;3];
    a[1] = b[1];
    a[2] = b[2];
    println!("{:?}", &a[0..3]);

    struct Person
    {
        name: String,
        age: u32,
    }

    let p = Person
    {
        name: String::from("John"),
        age: 8,
    };

    enum Event
    {
        Quit,
        KeyDown(u8),
        MouseDown{ x: i32, y: i32},
    }

    let e1 = Event::Quit;
    let e2 = Event::MouseDown{ x: 10, y:10 };
}
