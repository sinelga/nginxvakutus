import "dart:html" as o;import "dart:isolate" as HB;import "dart:async" as lB;import "dart:collection" as dC;import "dart:mirrors" as LH;class MH{static const  NH="Chrome";final  YG;final  minimumVersion;const MH(this.YG,[this.minimumVersion]);}class OH{const OH();}class PH{final  name;const PH(this.name);}class QH{const QH();}class RH{const RH();}class aB{var DD,XC,YC,WC,BD;}class IC{var qD,rD,CD;}var sB=iF(new List());var eC;final PB=new EB();var fC=false; get OE{if(v){CB(PB,l.u,'start');}return fC;}set OE( g){if(JB(PB)){t(PB,l.u,'start',fC,g);}fC=g;}var gC=false; get ND{if(v){CB(PB,l.u,'firstSomeNews');}return gC;}set ND( g){if(JB(PB)){t(PB,l.u,'firstSomeNews',gC,g);}gC=g;}var hC=false; get tB{if(v){CB(PB,l.u,'menu');}return hC;}set tB( g){if(JB(PB)){t(PB,l.u,'menu',hC,g);}hC=g;}var iC=false; get jC{if(v){CB(PB,l.u,'popupcell');}return iC;}set jC( g){if(JB(PB)){t(PB,l.u,'popupcell',iC,g);}iC=g;}var JC;var PE=new lB.Completer();class SH extends yC implements lB.StreamConsumer{var CI;static final QE=new o.Element.tag('template'),RE=new o.Element.html('<div class="scroll-view"></div>',treeSanitizer:GB),SE=new o.Element.html('<img class="imgCont">',treeSanitizer:GB),TE=new o.Element.html('<div>\n              <i class="icon-quote-left icon-4x icon-muted pull-left"></i>\n              <div class="well-large">\n            \n                <p class="muted"></p><p>\n              </p></div> \n            <div class="scroll-view"></div> \n            \n           \n          </div>',treeSanitizer:GB),UE=new o.Element.html('<img class="imgCont">',treeSanitizer:GB),VE=new o.Element.tag('template'),WE=new o.Element.html('<ul class="nav nav-list"> \n              <div class="centralboxmenu">      \n              <li><a></a></li>\n             </div>                     \n            </ul>',treeSanitizer:GB),XE=new o.Element.html('<i class="icon-ok"></i>',treeSanitizer:GB),YE=new o.Element.html('<i class="icon-quote-left icon-4x icon-muted pull-left"></i>',treeSanitizer:GB),ZE=new o.Element.html('<button class="close pull-right"><h1>×</h1></button>',treeSanitizer:GB),aE=new o.Element.html('<div class="well-large">\n            \n                <p class="muted"></p><p>\n              </p></div>',treeSanitizer:GB),bE=new o.DocumentFragment.html('''
        
        <template></template>
        
        <template></template>  
        
        
        <template></template>  
                     
                
        
      <!--   <template instantiate="if completer.isCompleted"> -->
     <!--    <template instantiate="if quantMessages !=null">-->
       <!--    <div>{{quantMessages}} messages</div>-->
          
      <!--   </template>-->
                 
        
      ''',treeSanitizer:GB);var DI,EI,FI;var GI; uD(){var HI=createShadowRoot("x-centralbox");LE("x-centralbox",new VC({"x-centralbox":"[is=\"x-centralbox\"]"}));CI=AE("x-centralbox");GI=new RC(HI);HI.nodes.add(bE.clone(true));DI=HI.nodes[1];GI.GC(DI,()=>ND,(GI){var II;II=QE.clone(true);GI.loop(II,()=>sB,(i,h,GI){var k=i[h];var JI,KI,LI,MI;MI=TE.clone(true);JI=MI.nodes[3].nodes[1];var NI=GI.iB(()=>k.XC,false);JI.nodes.add(NI);LI=MI.nodes[5];KI=UE.clone(true);GI.HE(()=>k.YC,(g){if(KI.src!=g)KI.src=g;},false,true);var OI=GI.iB(()=>k.WC,false);LI.nodes.addAll([new o.Text('\n                '),KI,new o.Text('\n                '),OI,new o.Text('\n             ')]);GI.addAll([new o.Text('  \n        \n          '),MI,new o.Text('\n          \n          ')]);});GI.addAll([new o.Text('\n          '),II,new o.Text('\n        ')]);});EI=HI.nodes[3];GI.GC(EI,()=>tB,(GI){var QI;QI=VE.clone(true);GI.loop(QI,()=>eC,(i,h,GI){var j=i[h];var RI,SI;SI=WE.clone(true);RI=SI.nodes[1].nodes[1].nodes[0];var TI=GI.iB(()=>j.BD,false);var UI=GI.iB(()=>j.DD,false);RI.nodes.addAll([XE.clone(true),TI,new o.Text(' '),UI]);GI.listen(RI.onClick,(m){CH(j);});GI.addAll([new o.Text('\n            \n            \n            '),SI,new o.Text('\n            \n          '),new o.Text('\n            \n          ')]);});GI.addAll([new o.Text('\n          \n          '),QI,new o.Text('  \n          \n        ')]);});FI=HI.nodes[5];GI.GC(FI,()=>jC,(GI){var VI,WI,XI,YI,ZI;VI=ZE.clone(true);GI.listen(VI.onClick,(m){FH();});XI=aE.clone(true);WI=XI.nodes[1];var aI=GI.iB(()=>JC.XC,false);WI.nodes.add(aI);ZI=RE.clone(true);YI=SE.clone(true);GI.HE(()=>JC.YC,(g){if(YI.src!=g)YI.src=g;},false,true);var bI=GI.iB(()=>JC.WC,false);ZI.nodes.addAll([new o.Text('\n                '),YI,new o.Text('\n                '),bI,new o.Text('\n              ')]);GI.addAll([new o.Text('\n        \n          '),VI,new o.Text('\n               \n              '),YE.clone(true),new o.Text('\n              '),XI,new o.Text(' \n            \n  \n              '),ZI,new o.Text('     \n         \n        ')]);});GI.ZB();} CE(){GI.insert();} KE(){GI.remove();GI=DI=EI=FI=null;}var FE; LD( g){FE=g.xtag;} ME( g){if(!OE){eC=g;}else{eC=g;tB=true;OE=true;}}close(){print("Close");} ZG(){sB.clear();jC=false;} addStream( g){g.listen(cI,onError:dI,onDone:eI,cancelOnError:true);return PE.future;}cI(g){if(!ND){ND=true;}if(tB){tB=false;}if(sB.length==1){var h=sB.removeAt(0);}sB.add(g);}dI(g){print("Error: ${g}");}eI(){print("complite");ND=false;tB=true;FE.IH();} CH(g){JC=g;jC=true;tB=false;} FH(){jC=false;tB=true;}}var kC;cE(){kC=new List<IC>();var DB=pC(uri:"http://suomipornome2.appspot.com/start?callback=?");DB.then(( g){print(g["results"][0]["SubThemes"]);print(g["results"].length);for(var h=0;h<g["results"].length;h++ ){var i=new IC();i.qD=g["results"][h]["Locale"];i.rD=g["results"][h]["Themes"];i.CD=g["results"][h]["SubThemes"];kC.add(i);}LC(g);var j=o.query("#centralbox");var q=j.xtag;var k=o.query("#leftbox");var m=k.xtag;q.LD(k);m.LD(j,kC);});} dE(){var fI=TG;var gI,hI;var iI=new RC(fI);gI=fI.nodes[1].nodes[1].nodes[1];iI.hB(new TH()..host=gI);hI=fI.nodes[1].nodes[3].nodes[1];iI.hB(new SH()..host=hI);iI.ZB();iI.insert();}main(){lD=true;cE();dE();}var OD=new List<IC>();final lC=new EB();var mC=false; get PD{if(v){CB(lC,l.u,'menu');}return mC;}set PD( g){if(JB(lC)){t(lC,l.u,'menu',mC,g);}mC=g;}class TH extends yC{var kI;static final eE=new o.Element.html('<div>\n          <i class="icon-spinner icon-spin icon-3x"></i>         \n        </div>',treeSanitizer:GB),fE=new o.Element.html('<div class="scroll-view">\n        <template></template>\n        \n       </div>',treeSanitizer:GB),gE=new o.Element.html('<ul class="nav nav-list">            \n               <li><a></a></li>             \n         </ul>',treeSanitizer:GB),hE=new o.Element.html('<i class="icon-ok"></i>',treeSanitizer:GB),iE=new o.DocumentFragment.html('''
        
        <template></template>
        
      <template></template>
 
     ''',treeSanitizer:GB);var lI,mI;var nI; uD(){var oI=createShadowRoot("x-leftbox");LE("x-leftbox",new VC({"x-leftbox":"[is=\"x-leftbox\"]"}));kI=AE("x-leftbox");nI=new RC(oI);oI.nodes.add(iE.clone(true));lI=oI.nodes[1];nI.GC(lI,()=>!PD,(nI){nI.addAll([new o.Text('\n        '),eE.clone(true),new o.Text('  \n      ')]);});mI=oI.nodes[3];nI.GC(mI,()=>PD,(nI){var pI,qI;qI=fE.clone(true);pI=qI.nodes[1];nI.loop(pI,()=>OD,(i,h,nI){var g=i[h];var rI,sI;sI=gE.clone(true);rI=sI.nodes[1].nodes[0];var tI=nI.iB(()=>g.CD,false);rI.nodes.addAll([hE.clone(true),tI]);nI.listen(rI.onClick,(j){GH(g);});nI.addAll([new o.Text('\n                  \n         '),sI,new o.Text('\n           \n          '),new o.Text('\n       '),new o.Text('\n          \n          \n           \n        ')]);});nI.addAll([new o.Text('\n        '),qI,new o.Text(' \n      ')]);});nI.ZB();} CE(){nI.insert();} KE(){nI.remove();nI=lI=mI=null;}var jB=new List<aB>();var rB; LD( j, DB){OD=DB;rB=j.xtag;var kB=pC(uri:"http://suomipornome2.appspot.com/jsonout?locale=fi_FI&themes=finances&subthemes=Ulkomaat&callback=?");kB.then(( g){for(var h=0;h<g["results"].length;h++ ){var i=new aB();i.XC=g["results"][h]["Description"];var WB=DateTime.parse(g["results"][h]["PubDate"]);var m=new KC("d-MMM-yyyy");var q=m.format(WB);i.BD=q;i.DD=g["results"][h]["Title"];i.YC=g["results"][h]["ImageLink"];i.WC=g["results"][h]["Cont"];jB.add(i);}LC(g);rB.ME(jB);var k=zD(jB);k.pipe(rB);});} IH(){PD=true;} zD( h){var g=new lB.StreamController<aB>();var i=h.length-3;new lB.Timer.periodic(new Duration(seconds:4),(j){if(h.length>i){var k=h.removeAt(0);g.add(k);}else{g.close();j.cancel();}});return g.stream;}GH(j){PD=false;var m=j.CD;var kB=j.rD;var k=j.qD;var WB="http://suomipornome2.appspot.com/jsonout?locale="+k+"&themes="+kB+"&subthemes="+m+"&callback=?";var JH=pC(uri:WB);JH.then(( h){jB.clear();for(var g=0;g<h["results"].length;g++ ){var i=new aB();i.XC=h["results"][g]["Description"];var KH=DateTime.parse(h["results"][g]["PubDate"]);var q=new KC("d-MMM-yyyy");var DB=q.format(KH);i.BD=DB;i.DD=h["results"][g]["Title"];i.YC=h["results"][g]["ImageLink"];i.WC=h["results"][g]["Cont"];jB.add(i);}LC(h);rB.ME(jB);rB.ZG();var cC=zD(jB);cC.pipe(rB);});}}class jE implements o.Element{var uI;var vI;var wI={}; get host{if(uI==null)throw new StateError('host element has not been set.');return uI;}set host( g){if(g==null){throw new ArgumentError('host must not be null.');}var h=g.xtag;if(h!=null&&h!=g){throw new ArgumentError('host must not have its xtag property set.');}if(uI!=null){throw new StateError('host can only be set once.');}g.xtag=this;uI=g;}createShadowRoot([ h]){var g=host.createShadowRoot();if(h!=null){wI[h]=g;}return g;} created(){} BE(){} JE(){}get isTemplate=>host.isTemplate;get content=>host.content; getAttribute( g)=>host.getAttribute(g); setAttribute( h, g)=>host.setAttribute(h,g); get childNodes=>host.childNodes; get nodes=>host.nodes; replaceWith( g){host.replaceWith(g);} remove()=>host.remove(); get nextNode=>host.nextNode; get document=>host.document; get previousNode=>host.previousNode;set text( g){host.text=g;} contains( g)=>host.contains(g); insertBefore( h, g)=>host.insertBefore(h,g); insertAllBefore( h, g)=>host.insertAllBefore(h,g); get attributes=>host.attributes; get children=>host.children; get classes=>host.classes; clone( g)=>host.clone(g); get parent=>host.parent; get parentNode=>host.parentNode; get nodeValue=>host.nodeValue;dynamic get on{throw new UnsupportedError('on is deprecated');} get id=>host.id;set id( g){host.id=g;} set innerHtml( g){host.innerHtml=g;} setInnerHtml( g,{ validator, treeSanitizer}){host.setInnerHtml(g,validator:validator,treeSanitizer:treeSanitizer);} createFragment( g,{ validator, treeSanitizer})=>host.createFragment(g,validator:validator,treeSanitizer:treeSanitizer); get tagName=>host.tagName; matches( g)=>host.matches(g); matchesWithAncestors( g)=>host.matchesWithAncestors(g); query( g)=>host.query(g); queryAll( g)=>host.queryAll(g); get className=>host.className;set className( g){host.className=g;} get firstChild=>host.firstChild; get lastChild=>host.lastChild; get localName=>host.localName; get nodeType=>host.nodeType; UG( i, g,[ h]){host.UG(i,g,h);} dispatchEvent( g)=>host.dispatchEvent(g); VG( i, g,[ h]){host.VG(i,g,h);}get xtag=>host.xtag;set xtag(g){host.xtag=g;} append( g)=>host.append(g); get onClick=>host.onClick;}class kE{var NAME;var ERAS,ERANAMES,NARROWMONTHS,STANDALONENARROWMONTHS,MONTHS,STANDALONEMONTHS,SHORTMONTHS,STANDALONESHORTMONTHS,WEEKDAYS,STANDALONEWEEKDAYS,SHORTWEEKDAYS,STANDALONESHORTWEEKDAYS,NARROWWEEKDAYS,STANDALONENARROWWEEKDAYS,SHORTQUARTERS,QUARTERS,AMPMS,DATEFORMATS,TIMEFORMATS;var AVAILABLEFORMATS;var FIRSTDAYOFWEEK;var WEEKENDRANGE;var FIRSTWEEKCUTOFFDAY;kE({this.NAME,this.ERAS,this.ERANAMES,this.NARROWMONTHS,this.STANDALONENARROWMONTHS,this.MONTHS,this.STANDALONEMONTHS,this.SHORTMONTHS,this.STANDALONESHORTMONTHS,this.WEEKDAYS,this.STANDALONEWEEKDAYS,this.SHORTWEEKDAYS,this.STANDALONESHORTWEEKDAYS,this.NARROWWEEKDAYS,this.STANDALONENARROWWEEKDAYS,this.SHORTQUARTERS,this.QUARTERS,this.AMPMS,this.DATEFORMATS,this.TIMEFORMATS,this.AVAILABLEFORMATS,this.FIRSTDAYOFWEEK,this.WEEKENDRANGE,this.FIRSTWEEKCUTOFFDAY});toString()=>NAME;}var lE=new kE(NAME:"en_US",ERAS:const['BC','AD'],ERANAMES:const['Before Christ','Anno Domini'],NARROWMONTHS:const['J','F','M','A','M','J','J','A','S','O','N','D'],STANDALONENARROWMONTHS:const['J','F','M','A','M','J','J','A','S','O','N','D'],MONTHS:const['January','February','March','April','May','June','July','August','September','October','November','December'],STANDALONEMONTHS:const['January','February','March','April','May','June','July','August','September','October','November','December'],SHORTMONTHS:const['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],STANDALONESHORTMONTHS:const['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'],WEEKDAYS:const['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'],STANDALONEWEEKDAYS:const['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'],SHORTWEEKDAYS:const['Sun','Mon','Tue','Wed','Thu','Fri','Sat'],STANDALONESHORTWEEKDAYS:const['Sun','Mon','Tue','Wed','Thu','Fri','Sat'],NARROWWEEKDAYS:const['S','M','T','W','T','F','S'],STANDALONENARROWWEEKDAYS:const['S','M','T','W','T','F','S'],SHORTQUARTERS:const['Q1','Q2','Q3','Q4'],QUARTERS:const['1st quarter','2nd quarter','3rd quarter','4th quarter'],AMPMS:const['AM','PM'],DATEFORMATS:const['EEEE, MMMM d, y','MMMM d, y','MMM d, y','M/d/yy'],TIMEFORMATS:const['h:mm:ss a zzzz','h:mm:ss a z','h:mm:ss a','h:mm a'],FIRSTDAYOFWEEK:6,WEEKENDRANGE:const[5,6],FIRSTWEEKCUTOFFDAY:5);var mE=const{'d':'d','E':'EEE','EEEE':'EEEE','LLL':'LLL','LLLL':'LLLL','M':'L','Md':'M/d','MEd':'EEE, M/d','MMM':'LLL','MMMd':'MMM d','MMMEd':'EEE, MMM d','MMMM':'LLLL','MMMMd':'MMMM d','MMMMEEEEd':'EEEE, MMMM d','QQQ':'QQQ','QQQQ':'QQQQ','y':'y','yM':'M/y','yMd':'M/d/y','yMEd':'EEE, M/d/y','yMMM':'MMM y','yMMMd':'MMM d, y','yMMMEd':'EEE, MMM d, y','yMMMM':'MMMM y','yMMMMd':'MMMM d, y','yMMMMEEEEd':'EEEE, MMMM d, y','yQQQ':'QQQ y','yQQQQ':'QQQQ y','H':'HH','Hm':'HH:mm','Hms':'HH:mm:ss','j':'h a','jm':'h:mm a','jms':'h:mm:ss a','jmv':'h:mm a v','jmz':'h:mm a z','jz':'h a z','m':'m','ms':'mm:ss','s':'s','v':'v','z':'z','zzzz':'zzzz','ZZZZ':'ZZZZ'};abstract class uB{var pattern;var parent;uB(this.pattern,this.parent); get width=>pattern.length; yD()=>pattern; toString()=>pattern; format( g){return pattern;}}class UH extends uB{UH(h,g):super(h,g);}class VH extends uB{var xI; yD()=>xI;VH(g,h):super(g,h){xI=g;EH();} EH(){if(pattern=="''"){pattern="'";}else{pattern=pattern.substring(1,pattern.length-1);var g=new RegExp(r"''");pattern=pattern.replaceAll(g,"'");}}}class WH extends uB{WH(h,g):super(h,g); format( g){return mG(g);} mG( g){switch (pattern[0]){case 'a':return iG(g);case 'c':return sG(g);case 'd':return jG(g);case 'E':return kG(g);case 'G':return lG(g);case 'h':return gG(g);case 'H':return fG(g);case 'K':return eG(g);case 'k':return hG(g);case 'L':return tG(g);case 'M':return pG(g);case 'm':return oG(g);case 'Q':return qG(g);case 'S':return nG(g);case 's':return rG(g);case 'v':return vG(g);case 'y':return xG(g);case 'z':return uG(g);case 'Z':return wG(g);default:return '';}} get symbols=>SD[parent.locale];lG( h){var g=h.year>0?1:0;return width>=4?symbols.ERANAMES[g]:symbols.ERAS[g];}xG( h){var g=h.year;if(g<0){g=-g;}return width==2?OB(2,g%100):g.toString();} pG( g){switch (width){case 5:return symbols.NARROWMONTHS[g.month-1];case 4:return symbols.MONTHS[g.month-1];case 3:return symbols.SHORTMONTHS[g.month-1];default:return OB(width,g.month);}} hG( g){return OB(width,g.hour);} nG( h){var g=OB(3,h.millisecond);if(width-3>0){var i=OB(width-3,0);return g+i;}else{return g;}} iG( g){var j=g.hour;var h=(g.hour>=12)&&(g.hour<24)?1:0;var i=symbols.AMPMS;return i[h];} gG( h){var g=h.hour;if(h.hour>12)g=g-12;if(g==0)g=12;return OB(width,g);} eG( g){return OB(width,g.hour%12);} fG( g){return OB(width,g.hour);} sG( g){switch (width){case 5:return symbols.STANDALONENARROWWEEKDAYS[g.weekday%7];case 4:return symbols.STANDALONEWEEKDAYS[g.weekday%7];case 3:return symbols.STANDALONESHORTWEEKDAYS[g.weekday%7];default:return OB(1,g.day);}} tG( g){switch (width){case 5:return symbols.STANDALONENARROWMONTHS[g.month-1];case 4:return symbols.STANDALONEMONTHS[g.month-1];case 3:return symbols.STANDALONESHORTMONTHS[g.month-1];default:return OB(width,g.month);}} qG( h){var g=((h.month-1)/3).truncate();if(width<4){return symbols.SHORTQUARTERS[g];}else{return symbols.QUARTERS[g];}} jG( g){return OB(width,g.day);} kG( g){return (width>=4?symbols.WEEKDAYS:symbols.SHORTWEEKDAYS)[(g.weekday)%7];} oG( g){return OB(width,g.minute);} rG( g){return OB(width,g.second);} vG( g){throw new UnimplementedError();} uG( g){throw new UnimplementedError();} wG( g){throw new UnimplementedError();} OB( i, k){var g=k.toString();if(g.length>=i)return g;var h=new StringBuffer();for(var j=0;j<i-g.length;j++ ){h.write('0');}h.write(g);return h.toString();}}class nE{static var nC;static var QD='en_US';static  oE( g, i,{ onFailure: pE}){if(g==null)return sE();if(i(g)){return g;}for(var h in [rE(g),qE(g)]){if(i(h)){return h;}}return onFailure(g);}static  pE( g){throw new ArgumentError("Invalid locale '${g}'");}static  qE( g){if(g.length<2)return g;return g.substring(0,2).toLowerCase();}static  rE( g){if(g==null)return QD;if(g=="C")return "en_ISO";if((g.length<5)||(g.length>6))return g;if(g[2]!='-'&&(g[2]!='_'))return g;var h=g.length==5?"":g[5].toUpperCase();return '${g[0]}${g[1]}_${g[3].toUpperCase()}' '${g[4].toUpperCase()}${h}';}static  sE(){if(nC==null)nC=QD;return nC;}}class KC{KC([ g, h]){yI=nE.oE(h,tE);ED(g);} format( h){var g=new StringBuffer();zI.forEach((i)=>g.write(i.format(h)));return g.toString();} get locale=>yI; XG()=>ED("yMMMMd"); WG()=>ED("jms");var yI;var AJ;var BJ;get zI{if(BJ==null){if(AJ==null)CJ();BJ=DH(AJ);}return BJ;}CJ(){XG();WG();}static var RD=[new RegExp("^\'(?:[^\']|\'\')*\'"),new RegExp("^(?:G+|y+|M+|k+|S+|E+|a+|h+|K+|H+|c+|L+|Q+|d+|m+|s+|v+|z+|Z+)"),new RegExp("^[^\'GyMkSEahKHcLQdmsvzZ]+")];DJ( g,[ h=' ']){if(AJ==null){AJ=g;}else{AJ="${AJ}${h}${g}";}} ED( g,[ h=' ']){BJ=null;if(g==null)return this;if(!EJ.containsKey(g)){DJ(g,h);}else{DJ(EJ[g],h);}return this;}get pattern=>AJ; get EJ{return vE[locale];}static  tE(g){if(g==null)return false;return SD.containsKey(g);}static  get uE=>[(h,g)=>new VH(h,g),(h,g)=>new WH(h,g),(h,g)=>new UH(h,g)]; DH( g){if(g==null)return null;return FJ(g).reversed.toList();} FJ( g){if(g.isEmpty)return [] ;var h=GJ(g);if(h==null)return [] ;var i=FJ(g.substring(h.yD().length));i.add(h);return i;} GJ( i){for(var g=0;g<RD.length;g++ ){var j=RD[g];var h=j.firstMatch(i);if(h!=null){return uE[g](h.group(0),this);}}}}var SD=new XH('initializeDateFormatting(<locale>)',lE);var vE=new XH('initializeDateFormatting(<locale>)',mE);class XH<wE>{final  message;final  wD;const XH(this.message,this.wD);operator[]( g)=>(g=='en_US')?wD:HJ(); get keys=>HJ(); containsKey( g)=>(g=='en_US')?true:HJ();HJ(){throw new YH("Locale data has not been initialized" ", call ${message}.");}}class YH implements Exception{final  message;YH(this.message);toString()=>"LocaleDataException: ${message}";}final xE=r"""
(function() {
  // Proxy support for js.dart.

  var globalContext = window;

  // Support for binding the receiver (this) in proxied functions.
  function bindIfFunction(f, _this) {
    if (typeof(f) != "function") {
      return f;
    } else {
      return new BoundFunction(_this, f);
    }
  }

  function unbind(obj) {
    if (obj instanceof BoundFunction) {
      return obj.object;
    } else {
      return obj;
    }
  }

  function getBoundThis(obj) {
    if (obj instanceof BoundFunction) {
      return obj._this;
    } else {
      return globalContext;
    }
  }

  function BoundFunction(_this, object) {
    this._this = _this;
    this.object = object;
  }

  // Table for local objects and functions that are proxied.
  function ProxiedObjectTable() {
    // Name for debugging.
    this.name = 'js-ref';

    // Table from IDs to JS objects.
    this.map = {};

    // Generator for new IDs.
    this._nextId = 0;

    // Counter for deleted proxies.
    this._deletedCount = 0;

    // Flag for one-time initialization.
    this._initialized = false;

    // Ports for managing communication to proxies.
    this.port = new ReceivePortSync();
    this.sendPort = this.port.toSendPort();

    // Set of IDs that are global.
    // These will not be freed on an exitScope().
    this.globalIds = {};

    // Stack of scoped handles.
    this.handleStack = [];

    // Stack of active scopes where each value is represented by the size of
    // the handleStack at the beginning of the scope.  When an active scope
    // is popped, the handleStack is restored to where it was when the
    // scope was entered.
    this.scopeIndices = [];
  }

  // Number of valid IDs.  This is the number of objects (global and local)
  // kept alive by this table.
  ProxiedObjectTable.prototype.count = function () {
    return Object.keys(this.map).length;
  }

  // Number of total IDs ever allocated.
  ProxiedObjectTable.prototype.total = function () {
    return this.count() + this._deletedCount;
  }

  // Adds an object to the table and return an ID for serialization.
  ProxiedObjectTable.prototype.add = function (obj) {
    if (this.scopeIndices.length == 0) {
      throw "Cannot allocate a proxy outside of a scope.";
    }
    // TODO(vsm): Cache refs for each obj?
    var ref = this.name + '-' + this._nextId++;
    this.handleStack.push(ref);
    this.map[ref] = obj;
    return ref;
  }

  ProxiedObjectTable.prototype._initializeOnce = function () {
    if (!this._initialized) {
      this._initialize();
      this._initialized = true;
    }
  }

  // Enters a new scope for this table.
  ProxiedObjectTable.prototype.enterScope = function() {
    this._initializeOnce();
    this.scopeIndices.push(this.handleStack.length);
  }

  // Invalidates all non-global IDs in the current scope and
  // exit the current scope.
  ProxiedObjectTable.prototype.exitScope = function() {
    var start = this.scopeIndices.pop();
    for (var i = start; i < this.handleStack.length; ++i) {
      var key = this.handleStack[i];
      if (!this.globalIds.hasOwnProperty(key)) {
        delete this.map[this.handleStack[i]];
        this._deletedCount++;
      }
    }
    this.handleStack = this.handleStack.splice(0, start);
  }

  // Makes this ID globally scope.  It must be explicitly invalidated.
  ProxiedObjectTable.prototype.globalize = function(id) {
    this.globalIds[id] = true;
  }

  // Invalidates this ID, potentially freeing its corresponding object.
  ProxiedObjectTable.prototype.invalidate = function(id) {
    var old = this.get(id);
    delete this.globalIds[id];
    delete this.map[id];
    this._deletedCount++;
  }

  // Gets the object or function corresponding to this ID.
  ProxiedObjectTable.prototype.get = function (id) {
    if (!this.map.hasOwnProperty(id)) {
      throw 'Proxy ' + id + ' has been invalidated.'
    }
    return this.map[id];
  }

  ProxiedObjectTable.prototype._initialize = function () {
    // Configure this table's port to forward methods, getters, and setters
    // from the remote proxy to the local object.
    var table = this;

    this.port.receive(function (message) {
      // TODO(vsm): Support a mechanism to register a handler here.
      try {
        var object = table.get(message[0]);
        var receiver = unbind(object);
        var member = message[1];
        var kind = message[2];
        var args = message[3].map(deserialize);
        if (kind == 'get') {
          // Getter.
          var field = member;
          if (field in receiver && args.length == 0) {
            var result = bindIfFunction(receiver[field], receiver);
            return [ 'return', serialize(result) ];
          }
        } else if (kind == 'set') {
          // Setter.
          var field = member;
          if (args.length == 1) {
            return [ 'return', serialize(receiver[field] = args[0]) ];
          }
        } else if (kind == 'apply') {
          // Direct function invocation.
          var _this = getBoundThis(object);
          return [ 'return', serialize(receiver.apply(_this, args)) ];
        } else if (member == '[]' && args.length == 1) {
          // Index getter.
          var result = bindIfFunction(receiver[args[0]], receiver);
          return [ 'return', serialize(result) ];
        } else if (member == '[]=' && args.length == 2) {
          // Index setter.
          return [ 'return', serialize(receiver[args[0]] = args[1]) ];
        } else {
          // Member function invocation.
          var f = receiver[member];
          if (f) {
            var result = f.apply(receiver, args);
            return [ 'return', serialize(result) ];
          }
        }
        return [ 'none' ];
      } catch (e) {
        return [ 'throws', e.toString() ];
      }
    });
  }

  // Singleton for local proxied objects.
  var proxiedObjectTable = new ProxiedObjectTable();

  // DOM element serialization code.
  var _localNextElementId = 0;
  var _DART_ID = 'data-dart_id';
  var _DART_TEMPORARY_ATTACHED = 'data-dart_temporary_attached';

  function serializeElement(e) {
    // TODO(vsm): Use an isolate-specific id.
    var id;
    if (e.hasAttribute(_DART_ID)) {
      id = e.getAttribute(_DART_ID);
    } else {
      id = (_localNextElementId++).toString();
      e.setAttribute(_DART_ID, id);
    }
    if (e !== document.documentElement) {
      // Element must be attached to DOM to be retrieve in js part.
      // Attach top unattached parent to avoid detaching parent of "e" when
      // appending "e" directly to document. We keep count of elements
      // temporarily attached to prevent detaching top unattached parent to
      // early. This count is equals to the length of _DART_TEMPORARY_ATTACHED
      // attribute. There could be other elements to serialize having the same
      // top unattached parent.
      var top = e;
      while (true) {
        if (top.hasAttribute(_DART_TEMPORARY_ATTACHED)) {
          var oldValue = top.getAttribute(_DART_TEMPORARY_ATTACHED);
          var newValue = oldValue + "a";
          top.setAttribute(_DART_TEMPORARY_ATTACHED, newValue);
          break;
        }
        if (top.parentNode == null) {
          top.setAttribute(_DART_TEMPORARY_ATTACHED, "a");
          document.documentElement.appendChild(top);
          break;
        }
        if (top.parentNode === document.documentElement) {
          // e was already attached to dom
          break;
        }
        top = top.parentNode;
      }
    }
    return id;
  }

  function deserializeElement(id) {
    // TODO(vsm): Clear the attribute.
    var list = document.querySelectorAll('[' + _DART_ID + '="' + id + '"]');

    if (list.length > 1) throw 'Non unique ID: ' + id;
    if (list.length == 0) {
      throw 'Element must be attached to the document: ' + id;
    }
    var e = list[0];
    if (e !== document.documentElement) {
      // detach temporary attached element
      var top = e;
      while (true) {
        if (top.hasAttribute(_DART_TEMPORARY_ATTACHED)) {
          var oldValue = top.getAttribute(_DART_TEMPORARY_ATTACHED);
          var newValue = oldValue.substring(1);
          top.setAttribute(_DART_TEMPORARY_ATTACHED, newValue);
          // detach top only if no more elements have to be unserialized
          if (top.getAttribute(_DART_TEMPORARY_ATTACHED).length === 0) {
            top.removeAttribute(_DART_TEMPORARY_ATTACHED);
            document.documentElement.removeChild(top);
          }
          break;
        }
        if (top.parentNode === document.documentElement) {
          // e was already attached to dom
          break;
        }
        top = top.parentNode;
      }
    }
    return e;
  }


  // Type for remote proxies to Dart objects.
  function DartProxy(id, sendPort) {
    this.id = id;
    this.port = sendPort;
  }

  // Serializes JS types to SendPortSync format:
  // - primitives -> primitives
  // - sendport -> sendport
  // - DOM element -> [ 'domref', element-id ]
  // - Function -> [ 'funcref', function-id, sendport ]
  // - Object -> [ 'objref', object-id, sendport ]
  function serialize(message) {
    if (message == null) {
      return null;  // Convert undefined to null.
    } else if (typeof(message) == 'string' ||
               typeof(message) == 'number' ||
               typeof(message) == 'boolean') {
      // Primitives are passed directly through.
      return message;
    } else if (message instanceof SendPortSync) {
      // Non-proxied objects are serialized.
      return message;
    } else if (message instanceof Element &&
        (message.ownerDocument == null || message.ownerDocument == document)) {
      return [ 'domref', serializeElement(message) ];
    } else if (message instanceof BoundFunction &&
               typeof(message.object) == 'function') {
      // Local function proxy.
      return [ 'funcref',
               proxiedObjectTable.add(message),
               proxiedObjectTable.sendPort ];
    } else if (typeof(message) == 'function') {
      if ('_dart_id' in message) {
        // Remote function proxy.
        var remoteId = message._dart_id;
        var remoteSendPort = message._dart_port;
        return [ 'funcref', remoteId, remoteSendPort ];
      } else {
        // Local function proxy.
        return [ 'funcref',
                 proxiedObjectTable.add(message),
                 proxiedObjectTable.sendPort ];
      }
    } else if (message instanceof DartProxy) {
      // Remote object proxy.
      return [ 'objref', message.id, message.port ];
    } else {
      // Local object proxy.
      return [ 'objref',
               proxiedObjectTable.add(message),
               proxiedObjectTable.sendPort ];
    }
  }

  function deserialize(message) {
    if (message == null) {
      return null;  // Convert undefined to null.
    } else if (typeof(message) == 'string' ||
               typeof(message) == 'number' ||
               typeof(message) == 'boolean') {
      // Primitives are passed directly through.
      return message;
    } else if (message instanceof SendPortSync) {
      // Serialized type.
      return message;
    }
    var tag = message[0];
    switch (tag) {
      case 'funcref': return deserializeFunction(message);
      case 'objref': return deserializeObject(message);
      case 'domref': return deserializeElement(message[1]);
    }
    throw 'Unsupported serialized data: ' + message;
  }

  // Create a local function that forwards to the remote function.
  function deserializeFunction(message) {
    var id = message[1];
    var port = message[2];
    // TODO(vsm): Add a more robust check for a local SendPortSync.
    if ("receivePort" in port) {
      // Local function.
      return unbind(proxiedObjectTable.get(id));
    } else {
      // Remote function.  Forward to its port.
      var f = function () {
        var depth = enterScope();
        try {
          var args = Array.prototype.slice.apply(arguments);
          args.splice(0, 0, this);
          args = args.map(serialize);
          var result = port.callSync([id, '#call', args]);
          if (result[0] == 'throws') throw deserialize(result[1]);
          return deserialize(result[1]);
        } finally {
          exitScope(depth);
        }
      };
      // Cache the remote id and port.
      f._dart_id = id;
      f._dart_port = port;
      return f;
    }
  }

  // Creates a DartProxy to forwards to the remote object.
  function deserializeObject(message) {
    var id = message[1];
    var port = message[2];
    // TODO(vsm): Add a more robust check for a local SendPortSync.
    if ("receivePort" in port) {
      // Local object.
      return proxiedObjectTable.get(id);
    } else {
      // Remote object.
      return new DartProxy(id, port);
    }
  }

  // Remote handler to construct a new JavaScript object given its
  // serialized constructor and arguments.
  function construct(args) {
    args = args.map(deserialize);
    var constructor = unbind(args[0]);
    args = Array.prototype.slice.call(args, 1);

    // Until 10 args, the 'new' operator is used. With more arguments we use a
    // generic way that may not work, particulary when the constructor does not
    // have an "apply" method.
    var ret = null;
    if (args.length === 0) {
      ret = new constructor();
    } else if (args.length === 1) {
      ret = new constructor(args[0]);
    } else if (args.length === 2) {
      ret = new constructor(args[0], args[1]);
    } else if (args.length === 3) {
      ret = new constructor(args[0], args[1], args[2]);
    } else if (args.length === 4) {
      ret = new constructor(args[0], args[1], args[2], args[3]);
    } else if (args.length === 5) {
      ret = new constructor(args[0], args[1], args[2], args[3], args[4]);
    } else if (args.length === 6) {
      ret = new constructor(args[0], args[1], args[2], args[3], args[4],
                            args[5]);
    } else if (args.length === 7) {
      ret = new constructor(args[0], args[1], args[2], args[3], args[4],
                            args[5], args[6]);
    } else if (args.length === 8) {
      ret = new constructor(args[0], args[1], args[2], args[3], args[4],
                            args[5], args[6], args[7]);
    } else if (args.length === 9) {
      ret = new constructor(args[0], args[1], args[2], args[3], args[4],
                            args[5], args[6], args[7], args[8]);
    } else if (args.length === 10) {
      ret = new constructor(args[0], args[1], args[2], args[3], args[4],
                            args[5], args[6], args[7], args[8], args[9]);
    } else {
      // Dummy Type with correct constructor.
      var Type = function(){};
      Type.prototype = constructor.prototype;
  
      // Create a new instance
      var instance = new Type();
  
      // Call the original constructor.
      ret = constructor.apply(instance, args);
      ret = Object(ret) === ret ? ret : instance;
    }
    return serialize(ret);
  }

  // Remote handler to return the top-level JavaScript context.
  function context(data) {
    return serialize(globalContext);
  }

  // Remote handler to track number of live / allocated proxies.
  function proxyCount() {
    var live = proxiedObjectTable.count();
    var total = proxiedObjectTable.total();
    return [live, total];
  }

  // Return true if two JavaScript proxies are equal (==).
  function proxyEquals(args) {
    return deserialize(args[0]) == deserialize(args[1]);
  }

  // Return true if a JavaScript proxy is instance of a given type (instanceof).
  function proxyInstanceof(args) {
    var obj = unbind(deserialize(args[0]));
    var type = unbind(deserialize(args[1]));
    return obj instanceof type;
  }

  // Return true if a JavaScript proxy has a given property.
  function proxyHasProperty(args) {
    var obj = unbind(deserialize(args[0]));
    var member = unbind(deserialize(args[1]));
    return member in obj;
  }

  // Delete a given property of object.
  function proxyDeleteProperty(args) {
    var obj = unbind(deserialize(args[0]));
    var member = unbind(deserialize(args[1]));
    delete obj[member];
  }

  function proxyConvert(args) {
    return serialize(deserializeDataTree(args));
  }

  function deserializeDataTree(data) {
    var type = data[0];
    var value = data[1];
    if (type === 'map') {
      var obj = {};
      for (var i = 0; i < value.length; i++) {
        obj[value[i][0]] = deserializeDataTree(value[i][1]);
      }
      return obj;
    } else if (type === 'list') {
      var list = [];
      for (var i = 0; i < value.length; i++) {
        list.push(deserializeDataTree(value[i]));
      }
      return list;
    } else /* 'simple' */ {
      return deserialize(value);
    }
  }

  function makeGlobalPort(name, f) {
    var port = new ReceivePortSync();
    port.receive(f);
    window.registerPort(name, port.toSendPort());
  }

  // Enters a new scope in the JavaScript context.
  function enterJavaScriptScope() {
    proxiedObjectTable.enterScope();
  }

  // Enters a new scope in both the JavaScript and Dart context.
  var _dartEnterScopePort = null;
  function enterScope() {
    enterJavaScriptScope();
    if (!_dartEnterScopePort) {
      _dartEnterScopePort = window.lookupPort('js-dart-interop-enter-scope');
    }
    return _dartEnterScopePort.callSync([]);
  }

  // Exits the current scope (and invalidate local IDs) in the JavaScript
  // context.
  function exitJavaScriptScope() {
    proxiedObjectTable.exitScope();
  }

  // Exits the current scope in both the JavaScript and Dart context.
  var _dartExitScopePort = null;
  function exitScope(depth) {
    exitJavaScriptScope();
    if (!_dartExitScopePort) {
      _dartExitScopePort = window.lookupPort('js-dart-interop-exit-scope');
    }
    return _dartExitScopePort.callSync([ depth ]);
  }

  makeGlobalPort('dart-js-interop-context', context);
  makeGlobalPort('dart-js-interop-create', construct);
  makeGlobalPort('dart-js-interop-proxy-count', proxyCount);
  makeGlobalPort('dart-js-interop-equals', proxyEquals);
  makeGlobalPort('dart-js-interop-instanceof', proxyInstanceof);
  makeGlobalPort('dart-js-interop-has-property', proxyHasProperty);
  makeGlobalPort('dart-js-interop-delete-property', proxyDeleteProperty);
  makeGlobalPort('dart-js-interop-convert', proxyConvert);
  makeGlobalPort('dart-js-interop-enter-scope', enterJavaScriptScope);
  makeGlobalPort('dart-js-interop-exit-scope', exitJavaScriptScope);
  makeGlobalPort('dart-js-interop-globalize', function(data) {
    if (data[0] == "objref" || data[0] == "funcref") return proxiedObjectTable.globalize(data[1]);
    throw 'Illegal type: ' + data[0];
  });
  makeGlobalPort('dart-js-interop-invalidate', function(data) {
    if (data[0] == "objref" || data[0] == "funcref") return proxiedObjectTable.invalidate(data[1]);
    throw 'Illegal type: ' + data[0];
  });
})();
"""; yE(h){final g=new o.ScriptElement();g.type='text/javascript';g.innerHtml=h;o.document.body.nodes.add(g);}var vB=null;var zE=null;var AF=null;var TD=null;var BF=null;var CF=null;var DF=null;var EF=null;var UD=null;var VD=null;var WD=null;var XD=null;var YD=null;var ZD=null; FF(){if(vB!=null)return;try {vB=o.window.lookupPort('dart-js-interop-context');}catch (h){}if(vB==null){yE(xE);vB=o.window.lookupPort('dart-js-interop-context');}zE=o.window.lookupPort('dart-js-interop-create');AF=o.window.lookupPort('dart-js-interop-proxy-count');TD=o.window.lookupPort('dart-js-interop-equals');BF=o.window.lookupPort('dart-js-interop-instanceof');CF=o.window.lookupPort('dart-js-interop-has-property');DF=o.window.lookupPort('dart-js-interop-delete-property');EF=o.window.lookupPort('dart-js-interop-convert');UD=o.window.lookupPort('dart-js-interop-enter-scope');VD=o.window.lookupPort('dart-js-interop-exit-scope');WD=o.window.lookupPort('dart-js-interop-globalize');XD=o.window.lookupPort('dart-js-interop-invalidate');YD=new o.ReceivePortSync()..receive((IJ)=>aD());ZD=new o.ReceivePortSync()..receive((g)=>bD(g[0]));o.window.registerPort('js-dart-interop-enter-scope',YD.toSendPort());o.window.registerPort('js-dart-interop-exit-scope',ZD.toSendPort());} get GF{oC();return NC(vB.callSync([] ));}get HF=>IB.JJ.length; oC(){if(HF==0){var g=aD();lB.runAsync(()=>bD(g));}} aD(){FF();IB.cG();UD.callSync([] );return IB.JJ.length;} bD( g){assert(IB.JJ.length==g);VD.callSync([] );IB.dG();} IF( g){WD.callSync(cB(g.HC()));return g;} LC( g){XD.callSync(cB(g.HC()));}class ZH implements mB<MC>{var KJ;var LJ;var MJ;FF(g){KJ=g;LJ=IB.add(MJ);IB.yG(LJ);}NJ(){var g=IB.zG(LJ);} HC()=>new MC.uH(IB.bC,LJ);ZH.tH( h,{ withThis: false}){MJ=( g){try {return Function.apply(h,withThis?g:g.skip(1).toList());}finally {NJ();}};FF(false);}}class aH{const aH();}const bB=const aH(); JF(i,m,k,j,DB,q){final g=[i,m,k,j,DB,q];final h=g.indexOf(bB);if(h<0)return g;return g.sublist(0,h);}class AB implements mB<AB>{var OJ;final LJ;AB.uH(this.OJ,this.LJ); HC()=>this;operator[](g)=>wB(this,'[]','method',[g]);operator[]=(h,g)=>wB(this,'[]=','method',[h,g]);operator==(g)=>identical(this,g)?true:(g is AB&&TD.callSync([cB(this),cB(g)])); toString(){try {return wB(this,'toString','method',[] );}catch (g){return super.toString();}}noSuchMethod( i){var g=LH.MirrorSystem.getName(i.memberName);if(g.indexOf('@')!=-1){g=g.substring(0,g.indexOf('@'));}var h;var j=i.positionalArguments;if(j==null)j=[] ;if(i.isGetter){h='get';}else if(i.isSetter){h='set';if(g.endsWith('=')){g=g.substring(0,g.length-1);}}else if(g=='call'){h='apply';}else{h='method';}return wB(this,g,h,j);}static wB( g, i, k, j){oC();var h=g.OJ.callSync([g.LJ,i,k,j.map(cB).toList()]);switch (h[0]){case 'return':return NC(h[1]);case 'throws':throw NC(h[1]);case 'none':throw new NoSuchMethodError(g,i,j,{});default:throw 'Invalid return value';}}}class MC extends AB implements mB<MC>{MC.uH( h,g):super.uH(h,g);call([g=bB,j=bB,i=bB,h=bB,q=bB,k=bB]){var m=JF(g,j,i,h,q,k);return AB.wB(this,'','apply',m);}}abstract class mB<KF>{ HC();}class LF{final  PJ;var QJ;var RJ;final  SJ;final  OJ;final  TJ;final  UJ;final  JJ;cG(){JJ.add(UJ.length);}dG(){var h=JJ.removeLast();for(int g=h;g<UJ.length; ++g){var i=UJ[g];if(!TJ.contains(i)){SJ.remove(UJ[g]);RJ++ ;}}if(h!=UJ.length){UJ.removeRange(h,UJ.length-h);}}yG(g)=>TJ.add(g);zG(g){var h=SJ[g];TJ.remove(g);SJ.remove(g);RJ++ ;return h;}LF():PJ='dart-ref',QJ=0,RJ=0,SJ={},OJ=new o.ReceivePortSync(),UJ=new List<String>(),JJ=new List<int>(),TJ=new Set<String>(){OJ.receive((g){try {final h=SJ[g[0]];final k=g[1];final j=g[2].map(NC).toList();if(k=='#call'){final m=h as Function;var q=cB(m(j));return ['return',q];}else{throw 'Invocation unsupported on non-function Dart proxies';}}catch (i){return ['throws','${i}'];}});} add(h){oC();final g='${PJ}-${QJ++ }';SJ[g]=h;UJ.add(g);return g;}Object get( g){return SJ[g];}get bC=>OJ.toSendPort();}var IB=new LF();cB(var g){if(g==null){return null;}else if(g is String||g is num||g is bool){return g;}else if(g is HB.SendPortSync){return g;}else if(g is o.Element&&(g.document==null||g.document==o.document)){return ['domref',NF(g)];}else if(g is MC){return ['funcref',g.LJ,g.OJ];}else if(g is AB){return ['objref',g.LJ,g.OJ];}else if(g is mB){return cB(g.HC());}else{return ['objref',IB.add(g),IB.bC];}}NC(var g){j(g){var h=g[1];var i=g[2];if(i==IB.bC){return IB.get(h);}else{return new MC.uH(i,h);}}m(g){var h=g[1];var i=g[2];if(i==IB.bC){return IB.get(h);}else{return new AB.uH(i,h);}}if(g==null){return null;}else if(g is String||g is num||g is bool){return g;}else if(g is HB.SendPortSync){return g;}var k=g[0];switch (k){case 'funcref':return j(g);case 'objref':return m(g);case 'domref':return OF(g[1]);}throw 'Unsupported serialized data: ${g}';}var MF=0;const OC='data-dart_id';const XB='data-dart_temporary_attached';NF( h){var i;if(h.attributes.containsKey(OC)){i=h.attributes[OC];}else{i='dart-${MF++ }';h.attributes[OC]=i;}if(!identical(h,o.document.documentElement)){var g=h;while (true){if(g.attributes.containsKey(XB)){final k=g.attributes[XB];final j=k+'a';g.attributes[XB]=j;break;}if(g.parent==null){g.attributes[XB]='a';o.document.documentElement.children.add(g);break;}if(identical(g.parent,o.document.documentElement)){break;}g=g.parent;}}return i;} OF(var i){var j=o.queryAll('[${OC}="${i}"]');if(j.length>1)throw 'Non unique ID: ${i}';if(j.length==0){throw 'Only elements attached to document can be serialized: ${i}';}final h=j[0];if(!identical(h,o.document.documentElement)){var g=h;while (true){if(g.attributes.containsKey(XB)){final m=g.attributes[XB];final k=m.substring(1);g.attributes[XB]=k;if(g.attributes[XB].length==0){g.attributes.remove(XB);g.remove();}break;}if(identical(g.parent,o.document.documentElement)){break;}g=g.parent;}}return h;} pC({ uri: null, uriGenerator( callback): null, type: null})=>VF(const qC(const bH(),const cH()),uri:uri,uriGenerator:uriGenerator,type:type);class bH extends cD{const bH(); GE( h, i){GF[h]=new ZH.tH(( g){IF(g);i.complete(g);});} IE( g){LC(g);}}class cH extends dD{const cH(); request( g){o.document.body.nodes.add(new o.ScriptElement()..src=g);}}abstract class cD{const cD(); GE( g, h); IE(var g);}abstract class dD{const dD(); request( g);}class qC<PF extends cD,QF extends dD>{final  ID;final  html;const qC(this.ID,this.html);}class RF{static var SF=0;static  TF(){return "jsonp_receive_${SF++ }";}final  GD;final  tD=TF();RF(this.GD); request( g( callback))=>GD.html.request(g(tD)); convert( h,var g){var i=LH.reflectClass(h).newInstance(const Symbol('fromProxy'),[g]);GD.ID.IE(g);return i.reflectee;}}class UF extends RF{final  VJ=new lB.Completer();UF( g):super(g){g.ID.GE(tD,VJ);} future({ type: null})=>type==null?VJ.future:VJ.future.then((var g)=>convert(type,g));} VF( j,{ uri: null, uriGenerator( callback): null, type: null}){try {final  g=new UF(j);g.request(( i)=>WF(uri,uriGenerator,i));return g.future(type:type);}catch (h){return new lB.Future.error(h);}} WF( g, h( callback), i){if(g==null&&h==null){throw new ArgumentError("Missing Parameter: uri or uriGenerator required");}return g!=null?XF(g,i):h(i);} XF( q, DB){var g,m;var h;var i=0;g=Uri.parse(q);h=new Map<String,String>();g.queryParameters.forEach(( k, j){if(j=='?'){h[k]=DB;i++ ;}else{h[k]=j;}});if(i==0){throw new ArgumentError("Missing Callback Placeholder: when providing a uri, at least one query parameter must have the ? value");}m=new Uri(scheme:g.scheme,userInfo:g.userInfo,host:g.host,port:g.port,path:g.path,fragment:g.fragment,queryParameters:h);return m.toString();}var eD=false;var YF=BB.fD;class dB{final  name; get xD=>(parent==null||parent.name=='')?name:'${parent.xD}.${name}';final  parent;var WJ;var children;var XJ;var YJ;factory dB( g){if(g.startsWith('.')){throw new ArgumentError("name shouldn't start with a '.'");}if(xB==null)xB=<String,dB>{};if(xB.containsKey(g))return xB[g];var j=g.lastIndexOf('.');var h=null;var i;if(j==-1){if(g!='')h=new dB('');i=g;}else{h=new dB(g.substring(0,j));i=g.substring(j+1);}final k=new dB.vH(i,h);xB[g]=k;return k;}dB.vH(this.name,this.parent):children=new Map<String,dB>(){if(parent!=null)parent.children[name]=this;} get aC{if(eD){if(WJ!=null)return WJ;if(parent!=null)return parent.aC;}return YF;} AH( g)=>(g>=aC); log( i, k,[j]){if(AH(i)){var h=new rC(i,k,xD,j);if(eD){var g=this;while (g!=null){g.ZJ(h);g=g.parent;}}else{ZF.ZJ(h);}}} info( h,[g])=>log(BB.fD,h,g); MD( h,[g])=>log(BB.aF,h,g); ZJ( g){if(XJ!=null){XJ.add(g);}}static  get ZF=>new dB('');static var xB;}class BB implements Comparable<BB>{final  name;final  value;const BB(this.name,this.value);static const  fD=const BB('INFO',800);static const  aF=const BB('WARNING',900); operator==( g)=>g!=null&&value==g.value; operator<( g)=>value<g.value; operator<=( g)=>value<=g.value; operator>( g)=>value>g.value; operator>=( g)=>value>=g.value; compareTo( g)=>value-g.value; get hashCode=>value; toString()=>name;}class rC{final  aC;final  message;final  BH;final  time;final  HH;static var bF=0;var exception;rC(this.aC,this.message,this.BH,[this.exception]):time=new DateTime.now(),HH=rC.bF++ ;}const dH=const eH();class eH{const eH();}class cF<TB> extends AG with EB implements List<TB>{final  aJ;cF([ g]):aJ=g!=null?new List<TB>(g):<TB>[] ;factory cF.wH( g)=>new cF<TB>()..addAll(g); get length{if(v)CB(this,l.u,'length');return aJ.length;}set length( h){var i=aJ.length;if(i==h)return;if(JB(this)){if(h<i){for(int g=i-1;g>=h;g-- ){t(this,l.YB,g,aJ[g],null);}t(this,l.u,'length',i,h);}else{t(this,l.u,'length',i,h);for(int g=i;g<h;g++ ){t(this,l.eB,g,null,null);}}}aJ.length=h;} operator[]( g){if(v)CB(this,l.QB,g);return aJ[g];}operator[]=( g, h){var i=aJ[g];if(JB(this)){t(this,l.QB,g,i,h);}aJ[g]=h;} sublist( h,[ g])=>new cF<TB>.wH(super.sublist(h,g)); add( h){var g=aJ.length;if(JB(this)){t(this,l.u,'length',g,g+1);t(this,l.eB,g,null,h);}aJ.add(h);} removeRange( h, g){if(g==0)return;iD.yF(this,h,g);if(JB(this)){for(int i=h;i<g;i++ ){t(this,l.YB,i,this[i],null);}}iD.xF(this,h+g,this,h,this.length-g-h);this.length=this.length-g;} removeAt( g){var h=this[g];removeRange(g,1);return h;} expand( g(E)){throw new UnimplementedError();return null;} toString(){if(v){for(int g=0;g<length;g++ ){CB(this,l.QB,g);}}return aJ.toString();}}typedef  yB<KB,FB>();class nB<KB,FB> extends EB implements Map<KB,FB>{final  bJ;var cJ;var dJ;nB({ createMap}):bJ=createMap!=null?createMap():new Map<KB,FB>(){cJ=new dF<KB,FB>(this);dJ=new eF<KB,FB>(this);}factory nB.xH( i,{ createMap}){var g=new nB(createMap:createMap);i.forEach((j,h){g[j]=h;});return g;} get keys=>cJ; get values=>dJ; get length{if(v)CB(this,l.u,'length');return bJ.length;} get isEmpty=>length==0; get isNotEmpty=>length!=0; eJ( g)=>CB(this,l.QB,g); fJ(){CB(this,l.u,'length');bJ.keys.forEach(eJ);} containsKey( g){if(v)eJ(g);return bJ.containsKey(g);} operator[]( g){if(v)eJ(g);return bJ[g];} operator[]=( h, g){var j=bJ.length;var i=bJ[h];bJ[h]=g;if(JB(this)){if(j!=bJ.length){t(this,l.u,'length',j,bJ.length);t(this,l.eB,h,i,g);}else if(i!=g){t(this,l.QB,h,i,g);}}} putIfAbsent( g, j()){if(v)eJ(g);var h=bJ.length;var i=bJ.putIfAbsent(g,j);if(JB(this)&&h!=bJ.length){t(this,l.u,'length',h,bJ.length);t(this,l.eB,g,null,i);}return i;} remove( g){if(v)eJ(g);var h=bJ.length;var i=bJ.remove(g);if(JB(this)&&h!=bJ.length){t(this,l.YB,g,i,null);t(this,l.u,'length',h,bJ.length);}return i;} addAll( h)=>h.forEach((g,i){this[g]=i;}); clear(){var g=bJ.length;if(JB(this)&&g>0){bJ.forEach((i,h){t(this,l.YB,i,h,null);});t(this,l.u,'length',g,0);}bJ.clear();} forEach( g( key, value)){if(v)fJ();bJ.forEach(g);} toString()=>dC.Maps.mapToString(this);}class dF<KB,FB> extends dC.IterableBase<KB>{final  bJ;dF(this.bJ); get iterator=>new fH<KB,FB>(bJ);}class fH<KB,FB> implements Iterator<KB>{final  bJ;final  cJ;var gJ=false;fH( g):bJ=g,cJ=g.bJ.keys.iterator; moveNext(){if(v)CB(bJ,l.u,'length');return gJ=cJ.moveNext();} get current{var g=cJ.current;if(v&&gJ)bJ.eJ(g);return g;}}class eF<KB,FB> extends dC.IterableBase<FB>{final  bJ;eF(this.bJ); get iterator=>new gH<KB,FB>(bJ);}class gH<KB,FB> implements Iterator<FB>{final  bJ;final  cJ;final  dJ;var gJ;gH( g):bJ=g,cJ=g.bJ.keys.iterator,dJ=g.bJ.values.iterator; moveNext(){if(v)CB(bJ,l.u,'length');var h=cJ.moveNext();var g=dJ.moveNext();if(h!=g){throw new StateError('keys and values should be the same length');}return gJ=g;} get current{if(v&&gJ)bJ.eJ(cJ.current);return dJ.current;}}typedef  UB( e);typedef  fF( changes);typedef  VB();typedef  gF();class PC{final oldValue;final newValue;final  changes;PC(this.oldValue,this.newValue,[this.changes]); operator==(g){return g is PC&&oldValue==g.oldValue&&newValue==g.newValue&&changes==g.changes;} get hashCode=>uF(oldValue,newValue,changes); toString(){if(changes!=null)return '#<ChangeNotification to ${newValue}: ${changes}>';return '#<ChangeNotification from ${oldValue} to ${newValue}>';}}class l{static const u=1;static const QB=2;static const eB=QB|4;static const YB=QB|8;final  type;final key;final oldValue;final newValue;l(this.type,this.key,this.oldValue,this.newValue); operator==(g){return g is l&&type==g.type&&key==g.key&&oldValue==g.oldValue&&newValue==g.newValue;} get hashCode=>vF(type,key,oldValue,newValue); toString(){var g;switch (type){case u:g='field';break;case QB:g='index';break;case eB:g='insert';break;case YB:g='remove';break;}return '#<ChangeRecord ${g} ${key} from ${oldValue} to ${newValue}>';}} hF(g, j,[ k]){if(g is EB){var h=g;return sC(h,(m){j(new PC(h,h,m));});}var i=new QC(g,j,k);if(!i.hJ()){return kF;}return i.iJ;} sC( g, i){if(g.qB==null)g.qB=new tC();var h=g.qB.add(i);return h.remove;}iF(g){if(g is Map){var h=null;if(g is dC.SplayTreeMap){h=()=>new dC.SplayTreeMap();}else if(g is dC.LinkedHashMap){h=()=>new dC.LinkedHashMap();}return new nB.xH(g,createMap:h);}if(g is Set)return new hD.yH(g);if(g is Iterable)return new cF.wH(g);return g;}class EB{var qB;var pB;final  hashCode= ++EB.jF;static var jF=0;} JB( g)=>g.qB!=null&&g.qB.head!=null; get v=>oB!=null; CB( g, h,i)=>oB.jJ(g,h,i); t( g, j,k, i, h){if((j&(l.eB|l.YB))==0){if(i==h)return;}if(fB==null){fB=[] ;wF(lF);}if(g.pB==null){g.pB=[] ;fB.add(g);}g.pB.add(new l(j,k,i,h));} kF(){}var oB;var gD=100;var fB;var gB; lF(){var m=0;while (fB!=null||gB!=null){var j=fB;fB=null;var i=gB;gB=null;if(m++ ==gD){mF(j,i);return;}if(j!=null){for(var h in j){var DB=h.pB;h.pB=null;for(var g=h.qB.head;g!=null;g=g.next){var k=g.value;try {k(DB);}catch (WB,q){zB(WB,q,k,'from ${h}');}}}}if(i!=null){i.forEach((cC,kB){kB.kJ();});}}} mF( k, j){var g=[] ;if(k!=null){for(var h in k){var DB=h.pB;g.add('${h} ${DB}');}}if(j!=null){for(var m in j.values){var i=m.kJ();if(i!=null)g.add('${m} ${i}');}}fB=null;gB=null;var q='exceeded notifiction limit of ${gD}, possible ' 'circular reference in observer callbacks: ${g.take(10).join(", ")}';pF(q);}class QC{static var nF=0;final  lJ= ++QC.nF;final  mJ;final  nJ;final  oJ;final  pJ=new Map();final  qJ=[] ;var rJ=false;var sJ;QC(this.mJ,this.nJ,this.oJ); toString()=>oJ!=null?'<observer ${lJ}: ${oJ}>':'<observer ${lJ}>'; hJ(){var i=oB;oB=this;try {sJ=mJ();if(sJ is Iterable&&sJ is !List&&sJ is !EB){sJ=(sJ as Iterable).toList();}}catch (h,g){zB(h,g,mJ,'from ${this}');sJ=null;}pJ.forEach(tJ);pJ.clear();assert(oB==this);oB=i;uJ();return qJ.length>0;} vJ( i){try {nJ(i);}catch (h,g){zB(h,g,nJ,'from ${this}');}} uJ(){var g=sJ;if(g is !EB)return;qJ.add(sC(g,(h){vJ(new PC(g,g,h));}));} jJ( m, q,g){var i=pJ.putIfAbsent(m,()=>new Map());try {var h=i[g];if(h==null)h=0;i[g]=h|q;}catch (j,k){zB(j,k,g,'hashCode or operator == from ${this}');}} tJ( i, k){qJ.add(sC(i,(j){if(rJ)return;for(var g in j){var h=k[g.key];if(h!=null&&(h&g.type)!=0){rJ=true;if(gB==null){gB=new dC.SplayTreeMap();}gB[lJ]=this;return;}}}));} iJ(){for(var g in qJ){g();}rJ=false;} kJ(){if(!rJ)return null;var g=sJ;iJ();hJ();try {if(g==sJ)return null;}catch (j,i){zB(j,i,g,'operator == from ${this}');return null;}var h=new PC(g,sJ);vJ(h);return h;}}typedef  oF( message);var pF=(g)=>print(g);typedef  qF(error,stackTrace,obj, message);var zB=rF; rF(i,h,g, j){print('web_ui.observe: unhandled error calling ${g} ${j}.\n' 'error:\n${i}\n\nstack trace:\n${h}');}class hD<RB> extends zF with EB implements Set<RB>{final  wJ;final  xJ;hD({ createMap}):wJ=createMap!=null?createMap():new Map<RB,Object>(),xJ=createMap;factory hD.yH( g,{ createMap}){return new hD<RB>(createMap:createMap)..addAll(g);} contains( g){if(v)CB(this,l.QB,g);return wJ.containsKey(g);} add( g){var h=wJ.length;wJ[g]=const Object();if(h!=wJ.length){t(this,l.u,'length',h,wJ.length);t(this,l.eB,g,null,g);}} remove( g){if(v)CB(this,l.QB,g);var h=wJ.length;wJ.remove(g);if(h!=wJ.length){if(JB(this)){t(this,l.YB,g,g,null);t(this,l.u,'length',h,wJ.length);}return true;}return false;} clear(){if(JB(this)){for(var g in wJ.keys){t(this,l.YB,g,g,null);}t(this,l.u,'length',wJ.length,0);}wJ.clear();} get length{if(v)CB(this,l.u,'length');return wJ.length;} get isEmpty=>length==0; get iterator=>new hH<RB>(this); addAll( g)=>g.forEach(add); toString(){if(v){for(RB g in wJ.keys){CB(this,l.QB,g);}}return wJ.keys.toSet().toString();}}class hH<RB> implements Iterator<RB>{final  yJ;final  zJ;var AK=false;hH( g):yJ=g,zJ=g.wJ.keys.iterator; moveNext(){yJ.length;return AK=zJ.moveNext();} get current{var g=zJ.current;if(v&&AK)CB(yJ,l.QB,g);return g;}}class sF{}class tF{}class MB<NB>{var BK;var CK;var DK;var EK;MB.zH( g,this.DK):EK=g{if(DK!=null)DK.FK++ ;} get next=>CK; get value=>EK;set value( g)=>EK=g; GK( h, g){CK=g;BK=h;if(h!=null)h.CK=this;if(g!=null)g.BK=this;return this;} append( g)=>new MB<NB>.zH(g,DK).GK(this,CK); remove(){if(DK==null)return;DK.FK-- ;if(BK!=null){BK.CK=CK;}else{DK.HK=CK;}if(CK!=null){CK.BK=BK;}else{DK.IK=BK;}CK=null;BK=null;DK=null;}}class tC<NB> extends dC.IterableBase<NB>{var HK;var IK; get length=>FK;var FK=0;tC(){} get head=>HK; add( h){var g=new MB<NB>.zH(h,this);if(IK==null)return HK=IK=g;return IK=g.GK(IK,null);} addLast( g)=>add(g); addAll( g)=>g.forEach(add); get iterator=>new iH<NB>(this);}class iH<NB> implements Iterator<NB>{var JK;var DK;var KK;var LK=-1;iH(this.DK){JK=new List<MB>(DK.length);var h=0;var g=DK.head;while (g!=null){JK[h++ ]=g;g=g.next;}} get current=>KK; moveNext(){do{LK++ ;}while(LK<JK.length&&JK[LK].DK!=DK);if(LK<JK.length){KK=JK[LK].value;return true;}else{KK=null;return false;}}}AC(h,g)=>h.hashCode*31+g.hashCode;uF(h,g,i)=>AC(AC(h,g),i);vF(h,i,g,j)=>AC(AC(h,i),AC(g,j)); wF( h()){var g=new HB.ReceivePort();g.receive((i,j){g.close();h();});g.toSendPort().send(null);}class iD{static  xF( m, g, q, j, k){if(g==null)g=0;if(j==null)j=0;if(g<j){for(int h=g+k-1,i=j+k-1;h>=g;h-- ,i-- ){q[i]=m[h];}}else{for(int h=g,i=j;h<g+k;h++ ,i++ ){q[i]=m[h];}}}static  yF( j, h, g){if(g<0){throw new ArgumentError("negative length ${g}");}if(h<0){var i="${h} must be greater than or equal to 0";throw new RangeError(i);}if(h+g>j.length){var i="${h} + ${g} must be in the range [0..${j.length})";throw new RangeError(i);}}}abstract class zF extends dC.IterableBase<dynamic>{}abstract class AG extends dC.ListMixin<dynamic>{}var GB=new jH();class jH implements o.NodeTreeSanitizer{ sanitizeTree( g){}} BG(i, g,[ h]){if(i is o.Node){g.replaceWith(i);return i;}var j=i is sF;if(h==null){h=i.toString();}if(!j&&g is o.Text){g.text=h;}else{var k=g;g=!j?new o.Text(h):new o.Element.html(h,treeSanitizer:GB);k.replaceWith(g);}return g;} CG(g){if(g is tF)return g.toString();g=g.toString();return EG(g)?g:'#';}const DG=const["http","https","ftp","mailto"]; EG( h){var g=Uri.parse(h).scheme;if(g=='')return true;return DG.contains(g.toLowerCase())||"MAILTO"==g.toUpperCase();}abstract class BC{ ZB(){} insert(); remove();}class kH extends BC{final  vD;var MK;final  listener;kH(this.vD,this.listener); insert(){MK=vD.listen(listener);} remove(){MK.cancel();MK=null;}}abstract class jD extends BC{final exp;final  isFinal;final  FD;var SB;jD(this.exp,this.isFinal):FD=uC&&SC!=null?SC():null; insert(){if(isFinal){HD();}else if(SB!=null){throw new StateError('binding already attached');}else{SB=KD();}} remove(){if(!isFinal){SB();SB=null;}} HD(); KD();}class lH extends jD{final  action;lH(g,this.action, h):super(g,h); HD()=>action(new PC(null,exp())); KD()=>TC(exp,action,'generic-binding',FD);}class mH extends jD{final  NE;final  DE;mH( g,this.NE,this.DE, h):super(g,h); NK(g){NE(DE?CG(g):g);} HD()=>NK(exp()); KD()=>TC(exp,(g)=>NK(g.newValue),'dom-property-binding',FD);}class nH extends BC{final hB;nH(this.hB); ZB(){hB..uD()..created()..bG();} insert(){hB..BE()..CE();} remove(){hB..KE()..JE();}}class RC extends BC{final  JD;final  children=[] ;final  nodes=[] ;RC(this.JD); listen( i, h){children.add(new kH(i,(g){h(g);LG();}));} iB( h,j){var g=new o.Text('');children.add(new lH(()=>'${h()}',(i){g=BG(h(),g,i.newValue);},j));return g;} HE(g,j,h,[i=false]){children.add(new mH(g,j,i,h));} GC( h,g,i){children.add(new GG(h,g,i));} loop( h,g,i){children.add(new oH(h,g,i));} hB( g){children.add(new nH(g));} add( g)=>nodes.add(g); addAll( g)=>nodes.addAll(g); ZB(){for(var g=0,h=children.length;g<h;g++ ){children[g].ZB();}} insert(){for(var g=0,h=children.length;g<h;g++ ){children[g].insert();}} remove(){for(var g=children.length-1;g>=0;g-- ){children[g].remove();}children.clear();}}abstract class kD extends RC{final exp;var SB;kD( g,this.exp):super(g); ZB(){} insert(){super.ZB();if(nodes.length>0){var i=JD.parentNode;var j=JD.nextNode;for(var g=0,h=nodes.length;g<h;g++ ){i.insertBefore(nodes[g],j);}}super.insert();} remove(){super.remove();for(var g=nodes.length-1;g>=0;g-- ){nodes[g].remove();}nodes.clear();}}typedef  FG( template);class GG extends kD{var ZC=false;final  sD;GG( h,g,this.sD):super(h,g); insert(){SB=TC(exp,(g){if(!ZC&&g.newValue){sD(this);super.insert();ZC=true;}else if(ZC&&!g.newValue){super.remove();ZC=false;}},'conditional-binding');} remove(){super.remove();SB();SB=null;}}typedef  HG( list, index, template);class oH extends kD{final  EE;oH( h,g,this.EE):super(h,g); insert(){SB=TC(exp,(i){super.remove();var h=i.newValue;for(int g=0;g<h.length;g++ ){EE(h,g,this);}super.insert();},'loop-binding');} remove(){super.remove();SB();SB=null;}}var lD=false;var uC=false;var SC=(){try {throw "";}catch (h,g){return g.toString();}};final  CC=new dB('watcher'); IG(g, q,[ j, m]){if(lD)return hF(g,q);if(q==null)return (){};if(DC==null)DC=new tC<EC>();j=j==null?'<unnamed>':j;var i;var h=LB.PG;if(g is oD){i=(g as oD).OK;}else if(g is Function){i=g;try {var k=g();if(k is List){h=LB.FC;}else if(k is Iterable){h=LB.FC;i=()=>g().toList();}else if((k is dC.LinkedHashMap)||(k is dC.SplayTreeMap)){h=LB.xC;}else if(k is Map){h=LB.wC;}}catch (DB,cC){CC.MD('evaluating ${j} watcher threw error (${DB}, ${cC})');}}else if(g is List){i=()=>g;h=LB.FC;}else if(g is Iterable){i=()=>g.toList();h=LB.FC;}else if((g is dC.LinkedHashMap)||(g is dC.SplayTreeMap)){i=()=>g;h=LB.xC;}else if(g is Map){i=()=>g;h=LB.wC;}if(uC&&m==null&&SC!=null){m=SC();}var WB=JG(h,i,q,j,m);var kB=DC.add(WB);return kB.remove;} JG( k, g, j, h, i){switch (k){case LB.FC:return new pH(g,j,h,i);case LB.xC:return new rH(g,j,h,i);case LB.wC:return new qH(g,j,h,i);default:return new EC(g,j,h,i);}} TC(h, i,[ j, k]){var m=IG(h,i,j,k);var g=h;if(g is Function){g=g();}if(g is Iterable&&g is !List){g=g.toList();}i(new PC(null,g));return m;}var DC;class EC{final  debugName;var location;final  PK;static var KG=0;final  OK;final  QK;var RK;EC(this.OK,this.QK,this.debugName,this.location):PK=KG++ {RK=OK();} toString()=>'${debugName} (id: #${PK})'; aG(){var g=SK();if(TK(g)){var h=RK;UK(g);QK(new PC(h,g));return true;}return false;} TK(g)=>RK!=g; UK(g){if(uC){if(location!=null){CC.info('watcher updated: ${this}, defined at:\n${location}');location=null;}else{CC.info('watcher updated: ${this}');}}RK=g;}SK(){try {return OK();}catch (h,g){CC.MD('${this} watcher threw an exception: ${h}, ${g}');}return RK;}}final  mD=10; LG(){if(DC==null)return;var g;var h=0;do{g=false;for(var i in DC){if(i.aG()){g=true;}}}while(g&& ++h<mD);if(h==mD){CC.MD('Possible loop in watchers propagation, stopped dispatch.');}}typedef  nD<MG>();typedef  NG<MG>( value);class oD<MG>{}class pH<MG> extends EC{pH(g, j, h, i):super(g,j,h,i){UK(SK());} TK( g){return vC(RK,g);} UK(g){RK=new List<MG>.from(g);}}class qH<UC,OG> extends EC{qH(g, j, h, i):super(g,j,h,i){UK(SK());} TK( g){var i=RK.keys;if(i.length!=g.keys.length)return true;var j=i.iterator;while (j.moveNext()){var h=j.current;if(!g.containsKey(h))return true;if(RK[h]!=g[h])return true;}return false;} UK(g){RK=new Map<UC,OG>.from(g);}}class rH<UC,OG> extends EC{rH(g, j, h, i):super(g,j,h,i){UK(SK());} TK( g){return vC(g.keys,RK.keys)||vC(g.values,RK.values);} UK(g){RK=new dC.LinkedHashMap.from(g);}} vC( i, j){var h=i.iterator;var g=j.iterator;while (h.moveNext()){if(!g.moveNext())return true;if(h.current!=g.current)return true;}return g.moveNext();}class LB{final VK;const LB.AI(this.VK);toString()=>'Enum.${VK}';static const FC=const LB.AI('LIST');static const wC=const LB.AI('HASH_MAP');static const xC=const LB.AI('ORDERED_MAP');static const PG=const LB.AI('OTHER');}abstract class yC extends jE{var WK;var XK;var YK={};var ZK=new VC({}); AE( g)=>ZK; LE( h,var g){ZK=g;} get host{if(WK==null)throw new StateError('host element has not been set.');return WK;}set host( g){if(g==null){throw new ArgumentError('host must not be null.');}var h=g.xtag;if(h!=null&&h!=g){throw new ArgumentError('host must not have its xtag property set.');}if(WK!=null){throw new StateError('host can only be set once.');}g.xtag=this;WK=g;}createShadowRoot([ h]){var g=aK();if(h!=null){YK[h]=g;}return g;}aK(){if(pD){return host.createShadowRoot();}if(XK==null)XK=[] ;XK.add(new o.DivElement());return XK.last;} created(){} BE(){} JE(){} bG(){if(pD)return;if(XK.length==0){throw new StateError('Distribution algorithm requires at least one shadow' ' root and can only be run once.');}var j=XK;var g=j.removeLast();var q=g;var m=new List.from(nodes);var k=[] ;var DB=[] ;while (true){m=bK(g,m);var h=g.query('shadow');if(h!=null){if(j.length>0){g=j.removeLast();k.add(h);DB.add(g);}else{AD(h,m);break;}}else{break;}}for(int i=0;i<k.length;i++ ){var h=k[i];var g=DB[i];AD(h,g.nodes);}nodes.clear();nodes.addAll(q.nodes);for(var WB in YK.keys){if(YK[WB]==q){YK[WB]=this;break;}}} bK( q, j){for(var g in q.queryAll('content')){if(!RG(g))continue;var i=g.attributes['select'];if(i==null||i=='')i='*';var h=[] ;var m=[] ;for(var k in j){(QG(k,i)?h:m).add(k);}if(h.length==0){h=g.nodes;}AD(g,h);j=m;}return j;}static  QG( h, g){if(h is !o.Element)return g=='*';return (h as o.Element).matches(g);}static  zC( g)=>g.tagName=='CONTENT'||g.tagName=='SHADOW';static  RG( g){assert(zC(g));for(g=g.parent;g!=null;g=g.parent){if(zC(g))return false;}return true;}static  AD( g, h){assert(zC(g));g.parent.insertAllBefore(h,g);g.remove();}}class VC{final  cK;VC(this.cK); operator[]( g)=>cK[g];}var SG=false; get pD=>SG&&o.ShadowRoot.supported;var TG=o.document.body;