ffi foo : int -> int
ffi bar serverOnly benignEffectful : int -> transaction unit
ffi baz : transaction int
ffi adder : int -> int -> int

ffi bup jsFunc "alert" : string -> transaction unit

fun other () : transaction page =
    (*bar 17;
    q <- baz;*)
    return <xml><body>
      (*{[foo 42]}, {[q]}*)
      <button onclick={fn _ => bup "asdf"}/>
    </body></xml>

fun main () = return <xml><body>
  <form>
    <submit action={other}/>
  </form>
</body></xml>
