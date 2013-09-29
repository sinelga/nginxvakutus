import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'dart:async';
import 'domains.dart';

List messages = toObservable(new List());
List<ForMark> forMarkList;

@observable
bool start = false;
@observable
bool firstSomeNews=false;
@observable
bool menu = false;
@observable
bool popupcell=false;

ForMark forMarkOne;

Completer completer = new Completer();

class CentralBoxComponent extends WebComponent implements StreamConsumer {  
     
  var leftboxxtag;
  
  void setUp(Element leftbox){

    leftboxxtag = leftbox.xtag;

  }
  
  void setUpMenu(List<ForMark> listForMark){
    
    if(!start) {
      forMarkList = listForMark;
    } else {
    
     forMarkList = listForMark;
      menu = true;
      start =true;
//      popupcell=false;
      
    }
    
  }
  
  close() {
    print("Close");

  }
  
  void clearMessages(){
    
    messages.clear();
    popupcell=false;
    
  }
  
  Future addStream(Stream stream)  {
    
      stream.listen(_onMessage,onError: _onError,onDone: _onDone,cancelOnError: true);
    
    return completer.future;
      
  }
  
  _onMessage(message) {
    
    if (!firstSomeNews) {
      firstSomeNews = true;
    }
    if (menu){
      menu = false;
      
    }
    if (messages.length ==1) {
      var messagelast = messages.removeAt(0);
      
    }
    
    messages.add(message); // add a ChatMessage to the list
    
  }
  
  _onError(error) {
    
    print("Error: $error");
  }
  
  _onDone() {
    
    print("complite");
    firstSomeNews=false;
    menu = true;
    
    leftboxxtag.streamStoped();

  }
  
 void openpopupcell(formarkIns){
 
      forMarkOne = formarkIns;
      popupcell=true;
      menu=false;    
  }
 
 void returnToNavigation(){
   
   popupcell=false;
   menu=true;
 
 }
  
}