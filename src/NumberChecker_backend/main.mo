import Text "mo:base/Text";
import Nat "mo:base/Nat";
import Bool "mo:base/Bool";

actor NumberChecker {
  type FancyResult = {
    #Ok : Text;
    #Err : Text;
  };

  
  func checkInput(input : Nat, boolInput : Bool) : FancyResult {
    if (input == 20) {
      return #Ok "The input is equal to 20";
    } else {
      return #Err "The input is not equal to 20";
    };
  };

  public query func useCheckInput(input : Nat, boolInput : Bool) : async Text {
    let operationResult = checkInput(input, boolInput);
    switch (operationResult) {
      case (#Ok successMessage) {
        return successMessage;
      };
      case (#Err errorMessage) {
        return errorMessage;
      };
    };
  };
};
