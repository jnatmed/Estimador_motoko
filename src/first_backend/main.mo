import Int "mo:base/Int";
import Float "mo:base/Float";

actor class Calculadora() = self {
  
  stable var quotationNumber : Int = 0;
  stable var productCostInICP : Float = 2;
  var flooringArea : Float = 0;
  let estimatorName : Text = "Juan";

  public func calculateArea(length : Float, width : Float) : async Float {
    flooringArea := length * width;
    return flooringArea;
  };  

  public func createEstimate() : async Text {
    quotationNumber := quotationNumber + 1 ;

    var Estimate : Text = "Quotation #: "
      # Int.toText(quotationNumber)
      # " Estimated by : "
      # estimatorName
      # " Area : "
      # Float.toText(flooringArea)
      # " Flooring Cost per Metre: "
      # Float.toText(productCostInICP)
      # " Total Cost: "
      # Float.toText(productCostInICP*flooringArea);
    return Estimate;
  };

  public func setcost(newCost : Float) : async () {
    productCostInICP := newCost;
    return;
  };
};
