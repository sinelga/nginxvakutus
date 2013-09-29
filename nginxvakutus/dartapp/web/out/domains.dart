library domains;
import 'package:web_ui/web_ui.dart';
import 'package:web_ui/observe/observable.dart' as __observe;


@observable 
class ForMark extends Observable {
  
  String __$Title;
  String get Title {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'Title');
    }
    return __$Title;
  }
  set Title(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'Title',
          __$Title, value);
    }
    __$Title = value;
  }

  String __$Description;
  String get Description {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'Description');
    }
    return __$Description;
  }
  set Description(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'Description',
          __$Description, value);
    }
    __$Description = value;
  }

  String __$ImageLink;
  String get ImageLink {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'ImageLink');
    }
    return __$ImageLink;
  }
  set ImageLink(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'ImageLink',
          __$ImageLink, value);
    }
    __$ImageLink = value;
  }

  String __$Cont;
  String get Cont {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'Cont');
    }
    return __$Cont;
  }
  set Cont(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'Cont',
          __$Cont, value);
    }
    __$Cont = value;
  }

  String __$PubDate;
  String get PubDate {
    if (__observe.observeReads) {
      __observe.notifyRead(this, __observe.ChangeRecord.FIELD, 'PubDate');
    }
    return __$PubDate;
  }
  set PubDate(String value) {
    if (__observe.hasObservers(this)) {
      __observe.notifyChange(this, __observe.ChangeRecord.FIELD, 'PubDate',
          __$PubDate, value);
    }
    __$PubDate = value;
  }
 
}

class Navigation{
  
  String Locale,Themes,SubThemes;
  
}

//@ sourceMappingURL=domains.dart.map