import Debug "mo:base/Debug";

actor DBank{
  var currentValue = 300;
  currentValue := 100;

  let id = 233254512221;

  // Debug.print(debug_show(currentValue));
  // Debug.print(debug_show(id));

 public func topUp (){
    currentValue +=1;
    Debug.print(debug_show(currentValue));
  };
 // topUp();
}
// dfx canister call dbank topUp