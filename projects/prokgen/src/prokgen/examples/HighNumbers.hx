package prokgen.examples;

import prokgen.generators.*;

@:build(prokgen.Generable.build())
class HighNumbers {
    var i:Int;
    var f:Float;
    var iList:Array<Int>;
    var fList:Array<Float>;

    static var iGen:IntGen = new IntGen(-1000, 1000);
    static var fGen:FloatGen = new FloatGen(-1000, 100);
    static var iListGen:ArrayGen<Int> = new ArrayGen<Int>(new IntGen(-1000, 1000), 0, 10);
    static var fListGen:ArrayGen<Float> = new ArrayGen<Float>(new FloatGen(-1000, 1000), 0, 10);

    function genScore() {
        var sum:Float = i + f;
        for (i in iList) {
            sum += i;
        }
        for (f in fList) {
            sum += f;
        }
        return sum;
    }

}
