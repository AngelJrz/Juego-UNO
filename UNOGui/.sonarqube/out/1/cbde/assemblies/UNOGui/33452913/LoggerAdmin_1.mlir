func @_UNOGui.Logica.Log.LoggerAdmin.EscribirLog$string.System.Exception$(none, none) -> () loc("D:\\Juego-UNO\\UNOGui\\Logica\\Log\\LoggerAdmin.cs" :14 :8) {
^entry (%_message : none, %_ex : none):
%0 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\Log\\LoggerAdmin.cs" :14 :39)
cbde.store %_message, %0 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\Log\\LoggerAdmin.cs" :14 :39)
%1 = cbde.alloca none loc("D:\\Juego-UNO\\UNOGui\\Logica\\Log\\LoggerAdmin.cs" :14 :55)
cbde.store %_ex, %1 : memref<none> loc("D:\\Juego-UNO\\UNOGui\\Logica\\Log\\LoggerAdmin.cs" :14 :55)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\Log\\LoggerAdmin.cs" :16 :12) // Not a variable of known type: log
%3 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\Log\\LoggerAdmin.cs" :16 :22) // Not a variable of known type: message
%4 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\Log\\LoggerAdmin.cs" :16 :31) // Not a variable of known type: ex
%5 = cbde.unknown : none loc("D:\\Juego-UNO\\UNOGui\\Logica\\Log\\LoggerAdmin.cs" :16 :12) // log.Error(message, ex) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
