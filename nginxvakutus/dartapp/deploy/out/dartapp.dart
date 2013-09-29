import "dart:isolate" as l;import "dart:html" as o;import "dart:async" as LB;import "dart:mirrors" as SC;class TC{static const  UC="Chrome";final  MC;final  minimumVersion;const TC(this.MC,[this.minimumVersion]);}class VC{const VC();}class WC{final  name;const WC(this.name);}class XC{const XC();}class YC{const YC();}class RB{var JC,LC,KC;}var MB;main(){MB=new List<RB>();var GB=zB(uri:"http://suomipornome2.appspot.com/start?callback=?");GB.then(( g){print(g["results"][0]["SubThemes"]);print(g["results"].length);for(var h=0;h<g["results"].length;h++ ){var i=new RB();i.JC=g["results"][h]["Locale"];i.LC=g["results"][h]["Themes"];i.KC=g["results"][h]["SubThemes"];MB.add(i);}bB(g);var j=o.query("#centralbox");var v=j.xtag;var k=o.query("#leftbox");var t=k.xtag;v.RC(k);t.RC(j,MB);});}final hB=r"""
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
"""; iB(h){final g=new o.ScriptElement();g.type='text/javascript';g.innerHtml=h;o.document.body.nodes.add(g);}var DB=null;var jB=null;var kB=null;var SB=null;var lB=null;var mB=null;var nB=null;var oB=null;var TB=null;var UB=null;var VB=null;var WB=null;var XB=null;var YB=null; pB(){if(DB!=null)return;try {DB=o.window.lookupPort('dart-js-interop-context');}catch (h){}if(DB==null){iB(hB);DB=o.window.lookupPort('dart-js-interop-context');}jB=o.window.lookupPort('dart-js-interop-create');kB=o.window.lookupPort('dart-js-interop-proxy-count');SB=o.window.lookupPort('dart-js-interop-equals');lB=o.window.lookupPort('dart-js-interop-instanceof');mB=o.window.lookupPort('dart-js-interop-has-property');nB=o.window.lookupPort('dart-js-interop-delete-property');oB=o.window.lookupPort('dart-js-interop-convert');TB=o.window.lookupPort('dart-js-interop-enter-scope');UB=o.window.lookupPort('dart-js-interop-exit-scope');VB=o.window.lookupPort('dart-js-interop-globalize');WB=o.window.lookupPort('dart-js-interop-invalidate');XB=new o.ReceivePortSync()..receive((gC)=>ZB());YB=new o.ReceivePortSync()..receive((g)=>aB(g[0]));o.window.registerPort('js-dart-interop-enter-scope',XB.toSendPort());o.window.registerPort('js-dart-interop-exit-scope',YB.toSendPort());} get qB{NB();return IB(DB.callSync([] ));}get rB=>m.hC.length; NB(){if(rB==0){var g=ZB();LB.runAsync(()=>aB(g));}} ZB(){pB();m.NC();TB.callSync([] );return m.hC.length;} aB( g){assert(m.hC.length==g);UB.callSync([] );m.OC();} sB( g){VB.callSync(BB(g.FB()));return g;} bB( g){WB.callSync(BB(g.FB()));}class ZC implements CB<HB>{var iC;var jC;var kC;pB(g){iC=g;jC=m.add(kC);m.PC(jC);}lC(){var g=m.QC(jC);} FB()=>new HB.fC(m.KB,jC);ZC.eC( h,{ withThis: false}){kC=( g){try {return Function.apply(h,withThis?g:g.skip(1).toList());}finally {lC();}};pB(false);}}class aC{const aC();}const AB=const aC(); tB(i,t,k,j,GB,v){final g=[i,t,k,j,GB,v];final h=g.indexOf(AB);if(h<0)return g;return g.sublist(0,h);}class q implements CB<q>{var mC;final jC;q.fC(this.mC,this.jC); FB()=>this;operator[](g)=>EB(this,'[]','method',[g]);operator[]=(h,g)=>EB(this,'[]=','method',[h,g]);operator==(g)=>identical(this,g)?true:(g is q&&SB.callSync([BB(this),BB(g)])); toString(){try {return EB(this,'toString','method',[] );}catch (g){return super.toString();}}noSuchMethod( i){var g=SC.MirrorSystem.getName(i.memberName);if(g.indexOf('@')!=-1){g=g.substring(0,g.indexOf('@'));}var h;var j=i.positionalArguments;if(j==null)j=[] ;if(i.isGetter){h='get';}else if(i.isSetter){h='set';if(g.endsWith('=')){g=g.substring(0,g.length-1);}}else if(g=='call'){h='apply';}else{h='method';}return EB(this,g,h,j);}static EB( g, i, k, j){NB();var h=g.mC.callSync([g.jC,i,k,j.map(BB).toList()]);switch (h[0]){case 'return':return IB(h[1]);case 'throws':throw IB(h[1]);case 'none':throw new NoSuchMethodError(g,i,j,{});default:throw 'Invalid return value';}}}class HB extends q implements CB<HB>{HB.fC( h,g):super.fC(h,g);call([g=AB,j=AB,i=AB,h=AB,v=AB,k=AB]){var t=tB(g,j,i,h,v,k);return q.EB(this,'','apply',t);}}abstract class CB<uB>{ FB();}class vB{final  nC;var oC;var pC;final  qC;final  mC;final  rC;final  sC;final  hC;NC(){hC.add(sC.length);}OC(){var h=hC.removeLast();for(int g=h;g<sC.length; ++g){var i=sC[g];if(!rC.contains(i)){qC.remove(sC[g]);pC++ ;}}if(h!=sC.length){sC.removeRange(h,sC.length-h);}}PC(g)=>rC.add(g);QC(g){var h=qC[g];rC.remove(g);qC.remove(g);pC++ ;return h;}vB():nC='dart-ref',oC=0,pC=0,qC={},mC=new o.ReceivePortSync(),sC=new List<String>(),hC=new List<int>(),rC=new Set<String>(){mC.receive((g){try {final h=qC[g[0]];final k=g[1];final j=g[2].map(IB).toList();if(k=='#call'){final t=h as Function;var v=BB(t(j));return ['return',v];}else{throw 'Invocation unsupported on non-function Dart proxies';}}catch (i){return ['throws','${i}'];}});} add(h){NB();final g='${nC}-${oC++ }';qC[g]=h;sC.add(g);return g;}Object get( g){return qC[g];}get KB=>mC.toSendPort();}var m=new vB();BB(var g){if(g==null){return null;}else if(g is String||g is num||g is bool){return g;}else if(g is l.SendPortSync){return g;}else if(g is o.Element&&(g.document==null||g.document==o.document)){return ['domref',xB(g)];}else if(g is HB){return ['funcref',g.jC,g.mC];}else if(g is q){return ['objref',g.jC,g.mC];}else if(g is CB){return BB(g.FB());}else{return ['objref',m.add(g),m.KB];}}IB(var g){j(g){var h=g[1];var i=g[2];if(i==m.KB){return m.get(h);}else{return new HB.fC(i,h);}}t(g){var h=g[1];var i=g[2];if(i==m.KB){return m.get(h);}else{return new q.fC(i,h);}}if(g==null){return null;}else if(g is String||g is num||g is bool){return g;}else if(g is l.SendPortSync){return g;}var k=g[0];switch (k){case 'funcref':return j(g);case 'objref':return t(g);case 'domref':return yB(g[1]);}throw 'Unsupported serialized data: ${g}';}var wB=0;const JB='data-dart_id';const u='data-dart_temporary_attached';xB( h){var i;if(h.attributes.containsKey(JB)){i=h.attributes[JB];}else{i='dart-${wB++ }';h.attributes[JB]=i;}if(!identical(h,o.document.documentElement)){var g=h;while (true){if(g.attributes.containsKey(u)){final k=g.attributes[u];final j=k+'a';g.attributes[u]=j;break;}if(g.parent==null){g.attributes[u]='a';o.document.documentElement.children.add(g);break;}if(identical(g.parent,o.document.documentElement)){break;}g=g.parent;}}return i;} yB(var i){var j=o.queryAll('[${JB}="${i}"]');if(j.length>1)throw 'Non unique ID: ${i}';if(j.length==0){throw 'Only elements attached to document can be serialized: ${i}';}final h=j[0];if(!identical(h,o.document.documentElement)){var g=h;while (true){if(g.attributes.containsKey(u)){final t=g.attributes[u];final k=t.substring(1);g.attributes[u]=k;if(g.attributes[u].length==0){g.attributes.remove(u);g.remove();}break;}if(identical(g.parent,o.document.documentElement)){break;}g=g.parent;}}return h;} zB({ uri: null, uriGenerator( callback): null, type: null})=>GC(const OB(const bC(),const cC()),uri:uri,uriGenerator:uriGenerator,type:type);class bC extends cB{const bC(); fB( h, i){qB[h]=new ZC.eC(( g){sB(g);i.complete(g);});} gB( g){bB(g);}}class cC extends dB{const cC(); request( g){o.document.body.nodes.add(new o.ScriptElement()..src=g);}}abstract class cB{const cB(); fB( g, h); gB(var g);}abstract class dB{const dB(); request( g);}class OB<AC extends cB,BC extends dB>{final  QB;final  html;const OB(this.QB,this.html);}class CC{static var DC=0;static  EC(){return "jsonp_receive_${DC++ }";}final  PB;final  eB=EC();CC(this.PB); request( g( callback))=>PB.html.request(g(eB)); convert( h,var g){var i=SC.reflectClass(h).newInstance(const Symbol('fromProxy'),[g]);PB.QB.gB(g);return i.reflectee;}}class FC extends CC{final  tC=new LB.Completer();FC( g):super(g){g.QB.fB(eB,tC);} future({ type: null})=>type==null?tC.future:tC.future.then((var g)=>convert(type,g));} GC( j,{ uri: null, uriGenerator( callback): null, type: null}){try {final  g=new FC(j);g.request(( i)=>HC(uri,uriGenerator,i));return g.future(type:type);}catch (h){return new LB.Future.error(h);}} HC( g, h( callback), i){if(g==null&&h==null){throw new ArgumentError("Missing Parameter: uri or uriGenerator required");}return g!=null?IC(g,i):h(i);} IC( v, GB){var g,t;var h;var i=0;g=Uri.parse(v);h=new Map<String,String>();g.queryParameters.forEach(( k, j){if(j=='?'){h[k]=GB;i++ ;}else{h[k]=j;}});if(i==0){throw new ArgumentError("Missing Callback Placeholder: when providing a uri, at least one query parameter must have the ? value");}t=new Uri(scheme:g.scheme,userInfo:g.userInfo,host:g.host,port:g.port,path:g.path,fragment:g.fragment,queryParameters:h);return t.toString();}