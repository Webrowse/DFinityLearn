import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor DBank{
  var currentValue = 300;
  currentValue := 100;

  let id = 233254512221;

  // Debug.print(debug_show(currentValue));
  // Debug.print(debug_show(id));

 public func topUp (amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };
  public func topDown (amount: Nat){
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
  };
 // topUp();
}
// dfx canister call dbank topUp