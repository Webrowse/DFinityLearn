import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
  stable var currentValue: Float = 300;
  //currentValue := 100;
  var startTime = Time.now();
  Debug.print(debug_show (startTime));
  let id = 233254512221;

  // Debug.print(debug_show(currentValue));
  // Debug.print(debug_show(id));

  public func topUp(amount : Float) {
    currentValue += amount;
    Debug.print(debug_show (currentValue));
  };
  public func topDown(amount : Float) {
    let temp : Float = currentValue - amount;
    if (temp >= 0) {
      currentValue -= amount;
      Debug.print(debug_show (currentValue));
    } else {
      Debug.print("Does not have enough balance");
    };
  };
  public query func checkBalance() : async Float {
    return currentValue;
  };
  public func compound() {
    var currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  };
  // topUp();
};
// dfx canister call dbank topUp
