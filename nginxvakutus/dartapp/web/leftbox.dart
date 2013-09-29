import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'dart:async';
import 'domains.dart';
//import 'jsonprequest/jsonprequest.dart';
import "package:js/js.dart" as js;
import "package:jsonp/jsonp.dart" as jsonp;
import 'package:intl/intl.dart';

List<ForMark> forMarkList;

List<Navigation> navigationList = new List<Navigation>();
//Navigation startNavigation = new Navigation();

@observable 
bool menu=false;

class LeftBoxComponent extends WebComponent {
  
  var forMarkList = new List<ForMark>();
  var centralboxxtag;
  
  void setUp(Element centralboxElement,List<Navigation> navigationListFirst){
 
    navigationList = navigationListFirst;

    centralboxxtag = centralboxElement.xtag;
    
    Future<js.Proxy> result = jsonp.fetch(
        uri: "http://suomipornome2.appspot.com/jsonout?locale=fi_FI&themes=finances&subthemes=Ulkomaat&callback=?"
          
    );
    result.then((js.Proxy proxy) {
               
      for (var i=0;i < proxy["results"].length;i++){
        
        ForMark forMark = new ForMark();
        
        forMark.Description = proxy["results"][i]["Description"];
        DateTime pubDate = DateTime.parse(proxy["results"][i]["PubDate"]);
        var timeStamp = new DateFormat("d-MMM-yyyy");
        String pubDateStr = timeStamp.format(pubDate);
        forMark.PubDate = pubDateStr;
        forMark.Title = proxy["results"][i]["Title"];
        forMark.ImageLink = proxy["results"][i]["ImageLink"];
        forMark.Cont = proxy["results"][i]["Cont"];
        forMarkList.add(forMark);
      }
      js.release(proxy); 
      centralboxxtag.setUpMenu(forMarkList);
      var stream = getForMarkStream(forMarkList);
      stream.pipe(centralboxxtag);
      
    });
    
  }
  
  void streamStoped(){

    menu = true;
    
  }
  
  Stream<ForMark> getForMarkStream(List<ForMark> listForMark) {
    
    var controller = new StreamController<ForMark>();
    var quanttopull = listForMark.length -3;
    new Timer.periodic(new Duration(seconds:4), (timer) {
      
      if (listForMark.length > quanttopull) {
        var message = listForMark.removeAt(0); // pull the first message of the list
        controller.add(message); // add to the stream
      }
      else {
        // no more messages
        controller.close(); // close the stream
        
        timer.cancel(); // cancel the timer
      }
    });
    
    return controller.stream;
  }

  selectSubThemes(navigationIns){
       
    menu = false;
    String subthemes =navigationIns.SubThemes;
    String themes = navigationIns.Themes;
    String locale =navigationIns.Locale;
    var url = "http://suomipornome2.appspot.com/jsonout?locale="+locale+"&themes="+themes+"&subthemes="+subthemes+"&callback=?";
    
    Future<js.Proxy> result = jsonp.fetch(
//        uri: "http://suomipornome2.appspot.com/jsonout?locale=fi_FI&themes=finances&subthemes=Ulkomaat&callback=?"
        uri: url
          
    );
    result.then((js.Proxy proxy) {
      forMarkList.clear();
      
      
      for (var i=0;i < proxy["results"].length;i++){
        
        ForMark forMark = new ForMark();
        
        forMark.Description = proxy["results"][i]["Description"];
        DateTime pubDate = DateTime.parse(proxy["results"][i]["PubDate"]);
        var timeStamp = new DateFormat("d-MMM-yyyy");
        String pubDateStr = timeStamp.format(pubDate);
        forMark.PubDate = pubDateStr;
        forMark.Title = proxy["results"][i]["Title"];
        forMark.ImageLink = proxy["results"][i]["ImageLink"];
        forMark.Cont = proxy["results"][i]["Cont"];
        forMarkList.add(forMark);
      }
      js.release(proxy); 
      
      centralboxxtag.setUpMenu(forMarkList);
      centralboxxtag.clearMessages();
      
      var stream = getForMarkStream(forMarkList);

      stream.pipe(centralboxxtag);
      
      
    }); 
    

  }
     
}