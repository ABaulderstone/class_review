# Class Review

- git clone
- Code along!
- If you get stuck you can checkout to various branches

## Remeber to stash your changes

```
$ git stash
$ git checkout [BRANCH NAME]
```

---

## We've been using instance methods all along

I'm sure you've heard someone say _In Ruby everything is an Object!_
And this is **almost** true. But what does it mean?

<p> Let's jump into IRB </p>

```
"Classes are awesome!".class
```

This returns "String", which we all knew. But what we mean by _everything is an object_ is that this is an **instance** of the **String** class. It's the same as doing:

```
my_string = String.new("Classes are awesome!")
```

What are some methods we use on strings?

```
my_string.reverse
```

=>

```
"!emosewa era sessalC"
```

Awesome. One of Ruby's cool features is that we can easily check the methods available to us.

```
my_string.methods
```

note that these are **different** to the methods available at a **class level**

```
String.methods
```

What's another class we use a lot?

```
5.class
```

5 is an **instance** of the **Integer** class. Which means we can do this:

```
5.methods
```

That means that when we do something like

```
5.times do
  puts "Hello!"
end
```

We're calling the **times** method on an instance of Integer and passing it a **block**

---

## Why Classes

Let's imagine we're building a terminal app for CoderAcademy staff that deals with campus and student information. How would we go about storing information about each campus?

```
sydney_campus_location = " 3/118 Walker St, North Sydney, 2060"

melbourne_campus_location = "8/120 Spencer Street, Melbourne Victoria"

brisbane_campus_lcation = "60 Gloucester St, Spring Hill QLD 4000"
```

This doesn't feel very DRY though, and - as you might have picked up - it's prone to human error.

<p> How about storing information about students? </p>

What's a good data structure to store mulitple pieces of information about someone? Maybe a **hash**?

```

sydney_students = [
  {
    name: "Alex",
    age: 31,
    id: "CAS011914",
  },
  {
    name: "Luke",
    age: 25,
    id: "CAS011915",
  },
]

melbstudents = [
  {
    name: "Drew",
    age: 35,
    id: "CAM011920",
  },
  {
    name: "Sarah",
    age: 20,
    _id: "CAM01125",
  },
]
```

This could get very cumbersome, and there's nothing enforcing us to adhere to any kind of data structure.

---

## Using Classes

How do we define a Campus class?

```
class Campus

end
```

What method is _always_ called when we create a new **instance** of a class?

```
class Campus

  def initialize

  end
end
```

What's a property or **attribute** that we might want to give to each **instance** of the campus class?

Maybe a _location_?

```
class Campus

  def initialize(location)
    @location = location
  end
end
```
