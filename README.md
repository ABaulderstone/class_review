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
