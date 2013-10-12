function org_opentaps_gwt_crmsfa_crmsfa(){
  var $wnd_0 = window, $doc_0 = document, $stats = $wnd_0.__gwtStatsEvent?function(a){
    return $wnd_0.__gwtStatsEvent(a);
  }
  :null, $sessionId_0 = $wnd_0.__gwtStatsSessionId?$wnd_0.__gwtStatsSessionId:null, scriptsDone, loadDone, bodyDone, base = '', metaProps = {}, values = [], providers = [], answers = [], softPermutationId = 0, onLoadErrorFunc, propertyErrorFunc;
  $stats && $stats({moduleName:'org.opentaps.gwt.crmsfa.crmsfa', sessionId:$sessionId_0, subSystem:'startup', evtGroup:'bootstrap', millis:(new Date).getTime(), type:'begin'});
  if (!$wnd_0.__gwt_stylesLoaded) {
    $wnd_0.__gwt_stylesLoaded = {};
  }
  if (!$wnd_0.__gwt_scriptsLoaded) {
    $wnd_0.__gwt_scriptsLoaded = {};
  }
  function isHostedMode(){
    var result = false;
    try {
      var query = $wnd_0.location.search;
      return (query.indexOf('gwt.codesvr=') != -1 || (query.indexOf('gwt.hosted=') != -1 || $wnd_0.external && $wnd_0.external.gwtOnLoad)) && query.indexOf('gwt.hybrid') == -1;
    }
     catch (e) {
    }
    isHostedMode = function(){
      return result;
    }
    ;
    return result;
  }

  function maybeStartModule(){
    if (scriptsDone && loadDone) {
      var iframe = $doc_0.getElementById('org.opentaps.gwt.crmsfa.crmsfa');
      var frameWnd = iframe.contentWindow;
      if (isHostedMode()) {
        frameWnd.__gwt_getProperty = function(name_0){
          return computePropValue(name_0);
        }
        ;
      }
      org_opentaps_gwt_crmsfa_crmsfa = null;
      frameWnd.gwtOnLoad(onLoadErrorFunc, 'org.opentaps.gwt.crmsfa.crmsfa', base, softPermutationId);
      $stats && $stats({moduleName:'org.opentaps.gwt.crmsfa.crmsfa', sessionId:$sessionId_0, subSystem:'startup', evtGroup:'moduleStartup', millis:(new Date).getTime(), type:'end'});
    }
  }

  function computeScriptBase(){
    if (metaProps['baseUrl']) {
      base = metaProps['baseUrl'];
      return base;
    }
    var thisScript;
    var scriptTags = $doc_0.getElementsByTagName('script');
    for (var i = 0; i < scriptTags.length; ++i) {
      if (scriptTags[i].src.indexOf('org.opentaps.gwt.crmsfa.crmsfa.nocache.js') != -1) {
        thisScript = scriptTags[i];
      }
    }
    if (!thisScript) {
      var markerId = '__gwt_marker_org.opentaps.gwt.crmsfa.crmsfa';
      var markerScript;
      $doc_0.write('<script id="' + markerId + '"><\/script>');
      markerScript = $doc_0.getElementById(markerId);
      thisScript = markerScript && markerScript.previousSibling;
      while (thisScript && thisScript.tagName != 'SCRIPT') {
        thisScript = thisScript.previousSibling;
      }
    }
    function getDirectoryOfFile(path){
      var hashIndex = path.lastIndexOf('#');
      if (hashIndex == -1) {
        hashIndex = path.length;
      }
      var queryIndex = path.indexOf('?');
      if (queryIndex == -1) {
        queryIndex = path.length;
      }
      var slashIndex = path.lastIndexOf('/', Math.min(queryIndex, hashIndex));
      return slashIndex >= 0?path.substring(0, slashIndex + 1):'';
    }

    ;
    if (thisScript && thisScript.src) {
      base = getDirectoryOfFile(thisScript.src);
    }
    if (base == '') {
      var baseElements = $doc_0.getElementsByTagName('base');
      if (baseElements.length > 0) {
        base = baseElements[baseElements.length - 1].href;
      }
       else {
        base = getDirectoryOfFile($doc_0.location.href);
      }
    }
     else if (base.match(/^\w+:\/\//)) {
    }
     else {
      var img = $doc_0.createElement('img');
      img.src = base + 'clear.cache.gif';
      base = getDirectoryOfFile(img.src);
    }
    if (markerScript) {
      markerScript.parentNode.removeChild(markerScript);
    }
    return base;
  }

  function processMetas(){
    var metas = document.getElementsByTagName('meta');
    for (var i = 0, n = metas.length; i < n; ++i) {
      var meta = metas[i], name_0 = meta.getAttribute('name'), content_0;
      if (name_0) {
        name_0 = name_0.replace('org.opentaps.gwt.crmsfa.crmsfa::', '');
        if (name_0.indexOf('::') >= 0) {
          continue;
        }
        if (name_0 == 'gwt:property') {
          content_0 = meta.getAttribute('content');
          if (content_0) {
            var value, eq = content_0.indexOf('=');
            if (eq >= 0) {
              name_0 = content_0.substring(0, eq);
              value = content_0.substring(eq + 1);
            }
             else {
              name_0 = content_0;
              value = '';
            }
            metaProps[name_0] = value;
          }
        }
         else if (name_0 == 'gwt:onPropertyErrorFn') {
          content_0 = meta.getAttribute('content');
          if (content_0) {
            try {
              propertyErrorFunc = eval(content_0);
            }
             catch (e) {
              alert('Bad handler "' + content_0 + '" for "gwt:onPropertyErrorFn"');
            }
          }
        }
         else if (name_0 == 'gwt:onLoadErrorFn') {
          content_0 = meta.getAttribute('content');
          if (content_0) {
            try {
              onLoadErrorFunc = eval(content_0);
            }
             catch (e) {
              alert('Bad handler "' + content_0 + '" for "gwt:onLoadErrorFn"');
            }
          }
        }
      }
    }
  }

  function __gwt_isKnownPropertyValue(propName, propValue){
    return propValue in values[propName];
  }

  function __gwt_getMetaProperty(name_0){
    var value = metaProps[name_0];
    return value == null?null:value;
  }

  function unflattenKeylistIntoAnswers(propValArray, value){
    var answer = answers;
    for (var i = 0, n = propValArray.length - 1; i < n; ++i) {
      answer = answer[propValArray[i]] || (answer[propValArray[i]] = []);
    }
    answer[propValArray[n]] = value;
  }

  function computePropValue(propName){
    var value = providers[propName](), allowedValuesMap = values[propName];
    if (value in allowedValuesMap) {
      return value;
    }
    var allowedValuesList = [];
    for (var k in allowedValuesMap) {
      allowedValuesList[allowedValuesMap[k]] = k;
    }
    if (propertyErrorFunc) {
      propertyErrorFunc(propName, allowedValuesList, value);
    }
    throw null;
  }

  var frameInjected;
  function maybeInjectFrame(){
    if (!frameInjected) {
      frameInjected = true;
      var iframe = $doc_0.createElement('iframe');
      iframe.src = "javascript:''";
      iframe.id = 'org.opentaps.gwt.crmsfa.crmsfa';
      iframe.style.cssText = 'position:absolute;width:0;height:0;border:none';
      iframe.tabIndex = -1;
      $doc_0.body.appendChild(iframe);
      $stats && $stats({moduleName:'org.opentaps.gwt.crmsfa.crmsfa', sessionId:$sessionId_0, subSystem:'startup', evtGroup:'moduleStartup', millis:(new Date).getTime(), type:'moduleRequested'});
      iframe.contentWindow.location.replace(base + initialHtml);
    }
  }

  providers['locale'] = function(){
    try {
      var locale;
      var defaultLocale = 'default' || 'default';
      if (locale == null) {
        var args = location.search;
        var startLang = args.indexOf('locale=');
        if (startLang >= 0) {
          var language = args.substring(startLang);
          var begin = language.indexOf('=') + 1;
          var end = language.indexOf('&');
          if (end == -1) {
            end = language.length;
          }
          locale = language.substring(begin, end);
        }
      }
      if (locale == null) {
        locale = __gwt_getMetaProperty('locale');
      }
      if (locale == null) {
        locale = $wnd_0['__gwt_Locale'];
      }
       else {
        $wnd_0['__gwt_Locale'] = locale || defaultLocale;
      }
      if (locale == null) {
        return defaultLocale;
      }
      while (!__gwt_isKnownPropertyValue('locale', locale)) {
        var lastIndex = locale.lastIndexOf('_');
        if (lastIndex == -1) {
          locale = defaultLocale;
          break;
        }
         else {
          locale = locale.substring(0, lastIndex);
        }
      }
      return locale;
    }
     catch (e) {
      alert('Unexpected exception in locale detection, using default: ' + e);
      return 'default';
    }
  }
  ;
  values['locale'] = {bg:0, 'default':1, en:2, es:3, fr:4, it:5, nl:6, pt:7, ru:8, zh:9};
  providers['user.agent'] = function(){
    var ua = navigator.userAgent.toLowerCase();
    var makeVersion = function(result){
      return parseInt(result[1]) * 1000 + parseInt(result[2]);
    }
    ;
    if (ua.indexOf('opera') != -1) {
      return 'opera';
    }
     else if (ua.indexOf('webkit') != -1) {
      return 'safari';
    }
     else if (ua.indexOf('msie') != -1) {
      if (document.documentMode >= 8) {
        return 'ie8';
      }
       else {
        var result_0 = /msie ([0-9]+)\.([0-9]+)/.exec(ua);
        if (result_0 && result_0.length == 3) {
          var v = makeVersion(result_0);
          if (v >= 6000) {
            return 'ie6';
          }
        }
      }
    }
     else if (ua.indexOf('gecko') != -1) {
      var result_0 = /rv:([0-9]+)\.([0-9]+)/.exec(ua);
      if (result_0 && result_0.length == 3) {
        if (makeVersion(result_0) >= 1008)
          return 'gecko1_8';
      }
      return 'gecko';
    }
    return 'unknown';
  }
  ;
  values['user.agent'] = {gecko:0, gecko1_8:1, ie6:2, ie8:3, opera:4, safari:5};
  org_opentaps_gwt_crmsfa_crmsfa.onScriptLoad = function(){
    if (frameInjected) {
      loadDone = true;
      maybeStartModule();
    }
  }
  ;
  org_opentaps_gwt_crmsfa_crmsfa.onInjectionDone = function(){
    scriptsDone = true;
    $stats && $stats({moduleName:'org.opentaps.gwt.crmsfa.crmsfa', sessionId:$sessionId_0, subSystem:'startup', evtGroup:'loadExternalRefs', millis:(new Date).getTime(), type:'end'});
    maybeStartModule();
  }
  ;
  processMetas();
  computeScriptBase();
  var strongName;
  var initialHtml;
  if (isHostedMode()) {
    if ($wnd_0.external && ($wnd_0.external.initModule && $wnd_0.external.initModule('org.opentaps.gwt.crmsfa.crmsfa'))) {
      $wnd_0.location.reload();
      return;
    }
    initialHtml = 'hosted.html?org_opentaps_gwt_crmsfa_crmsfa';
    strongName = '';
  }
  $stats && $stats({moduleName:'org.opentaps.gwt.crmsfa.crmsfa', sessionId:$sessionId_0, subSystem:'startup', evtGroup:'bootstrap', millis:(new Date).getTime(), type:'selectingPermutation'});
  if (!isHostedMode()) {
    try {
      unflattenKeylistIntoAnswers(['es', 'gecko'], '011ED30A581D428FF34696891FC16EAB');
      unflattenKeylistIntoAnswers(['en', 'gecko'], '0CA6FBA89DB1D8892DCA267335186779');
      unflattenKeylistIntoAnswers(['default', 'opera'], '14C1C30DBCA8CD0E2AC603E61966F6AB');
      unflattenKeylistIntoAnswers(['zh', 'ie6'], '194E4957D4614FF1D56E74D2E976DF2B');
      unflattenKeylistIntoAnswers(['nl', 'gecko1_8'], '1DBDC1AF0E5389B5FDDB461FCBC91DF2');
      unflattenKeylistIntoAnswers(['bg', 'safari'], '1F315EBE6E061C5BBCAD51D191C705D0');
      unflattenKeylistIntoAnswers(['bg', 'gecko'], '253B1F09C85BE13F7D621FA04742386E');
      unflattenKeylistIntoAnswers(['zh', 'opera'], '306B0DA6802D5228AC67CD5BE1DE97A8');
      unflattenKeylistIntoAnswers(['es', 'ie6'], '4385CB49A2C8E5250952AD7B9EEAF215');
      unflattenKeylistIntoAnswers(['fr', 'opera'], '47ABB6892A687BBC0BE4696DED5C7A6E');
      unflattenKeylistIntoAnswers(['en', 'safari'], '4A1A448EAB7BC6C2CDA487AAFD7D94DC');
      unflattenKeylistIntoAnswers(['default', 'safari'], '4D28E62BDD7B84B165A525661E4A25A9');
      unflattenKeylistIntoAnswers(['ru', 'gecko'], '536D6A0842D253CD320BD193031781A0');
      unflattenKeylistIntoAnswers(['zh', 'gecko'], '53B757DF9C44F64573016E817573C940');
      unflattenKeylistIntoAnswers(['fr', 'safari'], '57017FC1E3239403A73160F9260E8407');
      unflattenKeylistIntoAnswers(['pt', 'gecko'], '5726996824B71D5B872A1007DBE96AC2');
      unflattenKeylistIntoAnswers(['bg', 'ie6'], '5B74F76D055FD414CD8B475665D1CC70');
      unflattenKeylistIntoAnswers(['it', 'ie6'], '5C7AC88055D8D793335F5E6AAB1013E7');
      unflattenKeylistIntoAnswers(['fr', 'gecko1_8'], '7E490EC35234030345837F2D22BECC60');
      unflattenKeylistIntoAnswers(['ru', 'ie6'], '8AE3C34CD3FF15DB4046D61B4CD7B478');
      unflattenKeylistIntoAnswers(['zh', 'gecko1_8'], '8B156C64CA6D4E84EFE10CDC67208513');
      unflattenKeylistIntoAnswers(['default', 'ie6'], '8B1ED2FC6CE1768534EA1E64BBB2E4B6');
      unflattenKeylistIntoAnswers(['default', 'gecko'], '8E9035BCAE23B0813D863D375B62DCD6');
      unflattenKeylistIntoAnswers(['es', 'safari'], '95558C11E32CFDF93ABF62233B58384B');
      unflattenKeylistIntoAnswers(['en', 'ie6'], '9995A3DA0B396C4A1EE2420E523BB86C');
      unflattenKeylistIntoAnswers(['nl', 'ie6'], '9AB13C31F4CF0B0F09D334321D8DBF86');
      unflattenKeylistIntoAnswers(['default', 'gecko1_8'], '9C183DE1DFA734A825167973283D9778');
      unflattenKeylistIntoAnswers(['it', 'gecko1_8'], '9CAB5B791962AA16A033FB6739442E0A');
      unflattenKeylistIntoAnswers(['nl', 'opera'], 'A5E5C4CA8AAA2F02493E40EB24149C49');
      unflattenKeylistIntoAnswers(['fr', 'gecko'], 'A7AF320AC7CA34271EE1C140C934D3D5');
      unflattenKeylistIntoAnswers(['pt', 'ie6'], 'AACEDDB6C661FAF07BFD8DF9F7B2511E');
      unflattenKeylistIntoAnswers(['bg', 'opera'], 'B078230C24C9DF8BCD5C5EDF4B4FE41A');
      unflattenKeylistIntoAnswers(['es', 'gecko1_8'], 'B0B6B3CB04D5291C35C810E679636D9F');
      unflattenKeylistIntoAnswers(['zh', 'safari'], 'B54248885517C3FEB1E7C98F3F23049F');
      unflattenKeylistIntoAnswers(['pt', 'gecko1_8'], 'BC2F025B34A0C8CA2CD805986D6FB75C');
      unflattenKeylistIntoAnswers(['ru', 'safari'], 'BE6832F747E55CFBD572617BA2330FA0');
      unflattenKeylistIntoAnswers(['bg', 'gecko1_8'], 'D1BCC74E19A9BE23CA2715852653EE6F');
      unflattenKeylistIntoAnswers(['pt', 'opera'], 'D27010866BFCECFFF7B54FDA32E33DD8');
      unflattenKeylistIntoAnswers(['nl', 'safari'], 'D4D820EB85992AB2B9D3992E9B56DD1E');
      unflattenKeylistIntoAnswers(['it', 'safari'], 'D917869C38BA2BB8669BA0BBDBA4F97B');
      unflattenKeylistIntoAnswers(['en', 'gecko1_8'], 'DC273199780A9108BB9E392A2BDF5A61');
      unflattenKeylistIntoAnswers(['it', 'gecko'], 'DE8A66FA5E18340CCCA221046BAC6ED4');
      unflattenKeylistIntoAnswers(['nl', 'gecko'], 'E39525AD1FF4C2B32B5FA6FAE6297A87');
      unflattenKeylistIntoAnswers(['es', 'opera'], 'EB44EFA9E809CA0182225AF8811E9911');
      unflattenKeylistIntoAnswers(['ru', 'opera'], 'EB4D1F003990BD94CEBB6E7AB14A09D6');
      unflattenKeylistIntoAnswers(['fr', 'ie6'], 'EECA9E7F9D5DD3FB69BAD381C2364600');
      unflattenKeylistIntoAnswers(['pt', 'safari'], 'F0742EA7C86B1B9B6284BA6F16CB24A6');
      unflattenKeylistIntoAnswers(['it', 'opera'], 'F23B4861DCEAE85329E21A5B13C5E77F');
      unflattenKeylistIntoAnswers(['en', 'opera'], 'F2785A4F74AA9E96692C92CDC9B88993');
      unflattenKeylistIntoAnswers(['ru', 'gecko1_8'], 'F77C24B3CCC6FDC556181EFE7C4877CF');
      strongName = answers[computePropValue('locale')][computePropValue('user.agent')];
      var idx = strongName.indexOf(':');
      if (idx != -1) {
        softPermutationId = Number(strongName.substring(idx + 1));
        strongName = strongName.substring(0, idx);
      }
      initialHtml = strongName + '.cache.html';
    }
     catch (e) {
      return;
    }
  }
  var onBodyDoneTimerId;
  function onBodyDone(){
    if (!bodyDone) {
      bodyDone = true;
      if (!__gwt_stylesLoaded['standard.css']) {
        var l = $doc_0.createElement('link');
        __gwt_stylesLoaded['standard.css'] = l;
        l.setAttribute('rel', 'stylesheet');
        l.setAttribute('href', base + 'standard.css');
        $doc_0.getElementsByTagName('head')[0].appendChild(l);
      }
      if (!__gwt_stylesLoaded['GwtExt.css']) {
        var l = $doc_0.createElement('link');
        __gwt_stylesLoaded['GwtExt.css'] = l;
        l.setAttribute('rel', 'stylesheet');
        l.setAttribute('href', base + 'GwtExt.css');
        $doc_0.getElementsByTagName('head')[0].appendChild(l);
      }
      maybeStartModule();
      if ($doc_0.removeEventListener) {
        $doc_0.removeEventListener('DOMContentLoaded', onBodyDone, false);
      }
      if (onBodyDoneTimerId) {
        clearInterval(onBodyDoneTimerId);
      }
    }
  }

  if ($doc_0.addEventListener) {
    $doc_0.addEventListener('DOMContentLoaded', function(){
      maybeInjectFrame();
      onBodyDone();
    }
    , false);
  }
  var onBodyDoneTimerId = setInterval(function(){
    if (/loaded|complete/.test($doc_0.readyState)) {
      maybeInjectFrame();
      onBodyDone();
    }
  }
  , 50);
  $stats && $stats({moduleName:'org.opentaps.gwt.crmsfa.crmsfa', sessionId:$sessionId_0, subSystem:'startup', evtGroup:'bootstrap', millis:(new Date).getTime(), type:'end'});
  $stats && $stats({moduleName:'org.opentaps.gwt.crmsfa.crmsfa', sessionId:$sessionId_0, subSystem:'startup', evtGroup:'loadExternalRefs', millis:(new Date).getTime(), type:'begin'});
  if (!__gwt_scriptsLoaded['adapter/ext/ext-base.js']) {
    __gwt_scriptsLoaded['adapter/ext/ext-base.js'] = true;
    document.write('<script language="javascript" src="' + base + 'adapter/ext/ext-base.js"><\/script>');
  }
  if (!__gwt_scriptsLoaded['ext-all.js']) {
    __gwt_scriptsLoaded['ext-all.js'] = true;
    document.write('<script language="javascript" src="' + base + 'ext-all.js"><\/script>');
  }
  $doc_0.write('<script defer="defer">org_opentaps_gwt_crmsfa_crmsfa.onInjectionDone(\'org.opentaps.gwt.crmsfa.crmsfa\')<\/script>');
}

org_opentaps_gwt_crmsfa_crmsfa();
