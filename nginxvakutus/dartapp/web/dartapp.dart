import 'dart:html';
import 'dart:async';
import 'domains.dart';
import 'dart:convert';
//import 'jsonprequest/jsonprequest.dart';
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;

List<ForMark> forMarkList;
Navigation startNavigation;
List<Navigation> navigationList;

main() {
  
 navigationList  = new List<Navigation>();
  
  Future<js.Proxy> result = jsonp.fetch(
       uri: "http://suomipornome2.appspot.com/start?callback=?"
 
  );
  

  result.then((js.Proxy proxy) {
    print(proxy["results"][0]["SubThemes"]);
    
//    List<js.proxyCount(all: , dartOnly: , jsOnly: )>
    print(proxy["results"].length );
    
    
    
    for (var i=0;i < proxy["results"].length;i++){
      
//      print(proxy["results"][i]["SubThemes"]);
      Navigation navigation = new Navigation();
      navigation.Locale = proxy["results"][i]["Locale"];
      navigation.Themes = proxy["results"][i]["Themes"];
      navigation.SubThemes = proxy["results"][i]["SubThemes"];
      navigationList.add(navigation);
    }
//    String jsonValue = js.context.JSON.stringify(proxy);
    
//    for (Map nav in proxy["results"]){
//      
//        print(nav["SubThemes"]);
////      navigationList.add(nav)
//      
//    }
//    
////    for (Map t in proxy["results"]) {
////      
//////      print(t["SubThemes"]);
////      
////      Navigation navigation = new Navigation();
////      navigation.Locale = t["Locale"];
////      navigation.Themes = t["Themes"];
////      navigation.SubThemes = t["SubThemes"];
////////      navigationList.add(navigation);
////
////    }
//    // It is important to release the data!
    js.release(proxy);
    
    var centralboxElement = query("#centralbox");
    var centralbox = centralboxElement.xtag;
    
    
    var leftboxElement = query("#leftbox");
    var leftbox = leftboxElement.xtag;
    
    centralbox.setUp(leftboxElement);
    leftbox.setUp(centralboxElement,navigationList);
   
    
  });
  
//  js.scoped(() {
    
//    var context = js.context;
//    var urlstr = "http://suomipornome2.appspot.com/start?";
//    context.display = new js.Callback.once(display);
//    
//    var s = new ScriptElement()..src =urlstr+"&callback=display";
//    document.body.nodes.add(s);
       
//  });
    
//  }
  
  
}

//void display(var data) {
//  var results = data.results;
//  print(results);
//  
//}




