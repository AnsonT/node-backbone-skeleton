(function() {
  var Foo;
  Foo = (function() {
    function Foo(bar) {
      this.bar = bar;
    }
    Foo.prototype.explain = function() {
      console.log('Put your own custom libraries/classes in this package');
      return console.log('something else');
    };
    return Foo;
  })();
  NameSpace.Foo = Foo;
}).call(this);
