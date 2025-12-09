/**
 * This is a modified version of the file originally created for CKEditor by CKSource - Frederico Knabben
 * Copyright (c) 2012-2019, Kirill Bobrovskikh. All rights reserved.
 * Distributed by Bobronix Ltd Cyprus as part of JEditor - Rich Text Editor for Jira app.
 */

var JEDITOR_CONFIGURATION_JIRA={};try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_HIGHLIGHT_GUTTEN']={"name":"JEDITOR_HIGHLIGHT_GUTTEN","label":"Hide gutter","value":"false","description":"If enabled, hides line numbers in your code snippet."};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_HIGHLIGHT_GUTTEN']=null;console.log('JEditor: config error in [JEDITOR_HIGHLIGHT_GUTTEN].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_HIGHLIGHT_NOCONTROLS']={"name":"JEDITOR_HIGHLIGHT_NOCONTROLS","label":"Hide controls","value":"false","description":"Controls allow you to expand collapsed snippet or to view code as plain text."};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_HIGHLIGHT_NOCONTROLS']=null;console.log('JEditor: config error in [JEDITOR_HIGHLIGHT_NOCONTROLS].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_PREPOPULATION_ORDER']={"name":"JEDITOR_PREPOPULATION_ORDER","label":"Prepopulation settings order","value":"","description":"","params":{"order":[]},"type":"prepopulation_order"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_PREPOPULATION_ORDER']=null;console.log('JEditor: config error in [JEDITOR_PREPOPULATION_ORDER].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_HIGHLIGHT_LANGUAGE']={"name":"JEDITOR_HIGHLIGHT_LANGUAGE","label":"Default language","value":"brush: java","description":"Language used by default in syntax highlighter.","available":["AS3","Apple Script","Bash","C#","C++","CSS","ColdFusion","Delphi","Diff","Erlang","Groovy","Java","JavaFX","JavaScript","PHP","Perl","Plain","Power Shell","Python","Ruby","SQL","Sass","VB","XML/XHTML"],"params":{"JavaFX":"brush: javafx","C#":"brush: csharp","Java":"brush: java","AS3":"brush: as3","CSS":"brush: css","C++":"brush: cpp","Apple Script":"brush: applescript","XML/XHTML":"brush: xml","ColdFusion":"brush: coldfusion","Diff":"brush: diff","Sass":"brush: sass","Perl":"brush: perl","Bash":"brush: bash","VB":"brush: vb","Erlang":"brush: erlang","Groovy":"brush: groovy","Delphi":"brush: delphi","SQL":"brush: sql","Power Shell":"brush: powershell","Plain":"brush: plain","JavaScript":"brush: jscript","PHP":"brush: php","Ruby":"brush: ruby","Python":"brush: python"}};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_HIGHLIGHT_LANGUAGE']=null;console.log('JEditor: config error in [JEDITOR_HIGHLIGHT_LANGUAGE].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_SCAYT_LANG']={"name":"JEDITOR_SCAYT_LANG","label":"Default SCAYT language","value":"en_US","description":"Default language for SCAYT.","available":["Danish","Dutch (Nederlands)","English (Canada)","English (United Kingdom)","English (United States)","Finnish","French (Canada)","French (Standard)","German (Standard)","German (Swiss)","Greek","Italian (Standard)","Norwegian","Portuguese (Brazil)","Portuguese (Portugal)","Spanish","Swedish"],"params":{"Portuguese (Portugal)":"pt_PT","Dutch (Nederlands)":"nl_NL","English (United States)":"en_US","Italian (Standard)":"it_IT","English (Canada)":"en_CA","French (Canada)":"fr_CA","French (Standard)":"fr_FR","German (Standard)":"de_DE","Swedish":"sv_SE","Danish":"da_DK","Finnish":"fi_FI","German (Swiss)":"de_CH","Spanish":"es_ES","English (United Kingdom)":"en_GB","Greek":"el_GR","Norwegian":"nb_NO","Portuguese (Brazil)":"pt_BR"}};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_SCAYT_LANG']=null;console.log('JEditor: config error in [JEDITOR_SCAYT_LANG].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_HIGHLIGHT_COLLAPSE']={"name":"JEDITOR_HIGHLIGHT_COLLAPSE","label":"Collapse by default","value":"false","description":"If enabled, collapses your code snippet. You cannot hide controls if you use this."};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_HIGHLIGHT_COLLAPSE']=null;console.log('JEditor: config error in [JEDITOR_HIGHLIGHT_COLLAPSE].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_INIT_FLAG']={"name":"JEDITOR_INIT_FLAG","value":"1.43"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_INIT_FLAG']=null;console.log('JEditor: config error in [JEDITOR_INIT_FLAG].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_BASE_URL']={"name":"JEDITOR_BASE_URL","value":"https://arc-jira.arcadyan.com.tw"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_BASE_URL']=null;console.log('JEditor: config error in [JEDITOR_BASE_URL].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_CUSTOM_JS']={"name":"JEDITOR_CUSTOM_JS","label":"Custom JavaScript","value":"","description":"Some description"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_CUSTOM_JS']=null;console.log('JEditor: config error in [JEDITOR_CUSTOM_JS].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_ORDER']={"name":"JEDITOR_TEMPLATES_ORDER","label":"Templates order","value":"","description":"Templates order","params":{"order":["JEDITOR_TEMPLATES_TEMPLATE_1","JEDITOR_TEMPLATES_TEMPLATE_2","JEDITOR_TEMPLATES_TEMPLATE_3","JEDITOR_TEMPLATES_TEMPLATE_4"]},"type":"service"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_ORDER']=null;console.log('JEditor: config error in [JEDITOR_TEMPLATES_ORDER].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_IMAGE_AUTH']={"name":"JEDITOR_IMAGE_AUTH","label":"Require auth","value":"false","description":"Enable this option to require authorized access to files and images. Desktop email clients will not be able to display inline images."};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_IMAGE_AUTH']=null;console.log('JEditor: config error in [JEDITOR_IMAGE_AUTH].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_PREPOPULATION']={"name":"JEDITOR_PREPOPULATION","label":"Prepopulation settings","value":"","description":"Prepopulates Jira fields with JEditor templates","params":{},"type":"prepopulation"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_PREPOPULATION']=null;console.log('JEditor: config error in [JEDITOR_PREPOPULATION].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_CUSTOM_CSS']={"name":"JEDITOR_CUSTOM_CSS","label":"Custom CSS","value":"","description":"Custom CSS"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_CUSTOM_CSS']=null;console.log('JEditor: config error in [JEDITOR_CUSTOM_CSS].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_PROJECTS_ACTIVE']={"name":"JEDITOR_PROJECTS_ACTIVE","label":"JEditor active projects","value":"","description":"The list of projects for which JEditor Wiki Mode is active.","params":{"21300":{"name":"","key":"11058","id":"21300","active":"false"},"20210":{"name":"","key":"10991","id":"20210","active":"false"},"13924":{"name":"","key":"10178PM","id":"13924","active":"false"},"13921":{"name":"","key":"10127PM","id":"13921","active":"false"},"11500":{"name":"","key":"COMMON","id":"11500","active":"false"},"13922":{"name":"","key":"10133PM","id":"13922","active":"false"},"11502":{"name":"","key":"10234","id":"11502","active":"false"},"13920":{"name":"","key":"10335PM","id":"13920","active":"false"},"11501":{"name":"","key":"9994","id":"11501","active":"false"},"22404":{"name":"","key":"FAE27","id":"22404","active":"false"},"22405":{"name":"","key":"COMCAST","id":"22405","active":"false"},"22406":{"name":"","key":"TELUS","id":"22406","active":"false"},"22407":{"name":"","key":"BYTEL","id":"22407","active":"false"},"22400":{"name":"","key":"FAE23","id":"22400","active":"false"},"22401":{"name":"","key":"FAE24","id":"22401","active":"false"},"22402":{"name":"","key":"FAE25","id":"22402","active":"false"},"22403":{"name":"","key":"FAE26","id":"22403","active":"false"},"12600":{"name":"","key":"10342","id":"12600","active":"false"},"19203":{"name":"","key":"OSP","id":"19203","active":"false"},"19202":{"name":"","key":"EE","id":"19202","active":"false"},"19205":{"name":"","key":"10858PM","id":"19205","active":"false"},"19204":{"name":"","key":"10823","id":"19204","active":"false"},"19201":{"name":"","key":"BT","id":"19201","active":"false"},"19200":{"name":"","key":"ASU","id":"19200","active":"false"},"13903":{"name":"","key":"10456PM","id":"13903","active":"false"},"13904":{"name":"","key":"10457PM","id":"13904","active":"false"},"13901":{"name":"","key":"10454PM","id":"13901","active":"false"},"13902":{"name":"","key":"10455PM","id":"13902","active":"false"},"13907":{"name":"","key":"10460PM","id":"13907","active":"false"},"13908":{"name":"","key":"10461PM","id":"13908","active":"false"},"13905":{"name":"","key":"10458PM","id":"13905","active":"false"},"13906":{"name":"","key":"10459PM","id":"13906","active":"false"},"19207":{"name":"","key":"10868PM","id":"19207","active":"false"},"13900":{"name":"","key":"10453PM","id":"13900","active":"false"},"19206":{"name":"","key":"10873PM","id":"19206","active":"false"},"19209":{"name":"","key":"10857PM","id":"19209","active":"false"},"19208":{"name":"","key":"10856PM","id":"19208","active":"false"},"20203":{"name":"","key":"FAE22","id":"20203","active":"false"},"19214":{"name":"","key":"10874PM","id":"19214","active":"false"},"20202":{"name":"","key":"FAE21","id":"20202","active":"false"},"19213":{"name":"","key":"10870PM","id":"19213","active":"false"},"20201":{"name":"","key":"10968","id":"20201","active":"false"},"20200":{"name":"","key":"FAE","id":"20200","active":"false"},"19215":{"name":"","key":"10880PM","id":"19215","active":"false"},"19210":{"name":"","key":"10864PM","id":"19210","active":"false"},"19212":{"name":"","key":"10871PM","id":"19212","active":"false"},"19211":{"name":"","key":"10875PM","id":"19211","active":"false"},"13909":{"name":"","key":"10462PM","id":"13909","active":"false"},"20209":{"name":"","key":"11014","id":"20209","active":"false"},"20208":{"name":"","key":"10071","id":"20208","active":"false"},"20207":{"name":"","key":"11000","id":"20207","active":"false"},"20206":{"name":"","key":"11006","id":"20206","active":"false"},"20205":{"name":"","key":"10986","id":"20205","active":"false"},"20204":{"name":"","key":"10928","id":"20204","active":"false"},"13914":{"name":"","key":"10251PM","id":"13914","active":"false"},"13912":{"name":"","key":"10237PM","id":"13912","active":"false"},"13913":{"name":"","key":"10242PM","id":"13913","active":"false"},"13918":{"name":"","key":"10320PM","id":"13918","active":"false"},"13919":{"name":"","key":"10331PM","id":"13919","active":"false"},"13916":{"name":"","key":"10283PM","id":"13916","active":"false"},"13917":{"name":"","key":"10313PM","id":"13917","active":"false"},"13910":{"name":"","key":"10463PM","id":"13910","active":"false"},"13911":{"name":"","key":"10464PM","id":"13911","active":"false"},"10401":{"name":"","key":"HOMEGW","id":"10401","active":"false"},"17002":{"name":"","key":"10579PM","id":"17002","active":"false"},"17003":{"name":"","key":"EMS","id":"17003","active":"false"},"21500":{"name":"","key":"11040","id":"21500","active":"false"},"17004":{"name":"","key":"10611","id":"17004","active":"false"},"17000":{"name":"","key":"10629","id":"17000","active":"false"},"17001":{"name":"","key":"10414","id":"17001","active":"false"},"11700":{"name":"","key":"10287","id":"11700","active":"false"},"18102":{"name":"","key":"10737PM","id":"18102","active":"false"},"22602":{"name":"","key":"11084","id":"22602","active":"false"},"22603":{"name":"","key":"TA","id":"22603","active":"false"},"18103":{"name":"","key":"10736PM","id":"18103","active":"false"},"18104":{"name":"","key":"10738PM","id":"18104","active":"false"},"22604":{"name":"","key":"AS","id":"22604","active":"false"},"18105":{"name":"","key":"10740PM","id":"18105","active":"false"},"18100":{"name":"","key":"10726PM","id":"18100","active":"false"},"18101":{"name":"","key":"10714PM","id":"18101","active":"false"},"22600":{"name":"","key":"W2","id":"22600","active":"false"},"22601":{"name":"","key":"W3","id":"22601","active":"false"},"12801":{"name":"","key":"9823","id":"12801","active":"false"},"18106":{"name":"","key":"10739PM","id":"18106","active":"false"},"12800":{"name":"","key":"10385","id":"12800","active":"false"},"18107":{"name":"","key":"10710","id":"18107","active":"false"},"19401":{"name":"","key":"10898PM","id":"19401","active":"false"},"19400":{"name":"","key":"10892PM","id":"19400","active":"false"},"19403":{"name":"","key":"10899PM","id":"19403","active":"false"},"19402":{"name":"","key":"F10811","id":"19402","active":"false"},"19409":{"name":"","key":"10867","id":"19409","active":"false"},"19408":{"name":"","key":"10799","id":"19408","active":"false"},"19405":{"name":"","key":"10761PM","id":"19405","active":"false"},"19404":{"name":"","key":"10900PM","id":"19404","active":"false"},"19407":{"name":"","key":"10888PM","id":"19407","active":"false"},"19406":{"name":"","key":"10869PM","id":"19406","active":"false"},"19412":{"name":"","key":"10904PM","id":"19412","active":"false"},"20401":{"name":"","key":"11045","id":"20401","active":"false"},"19411":{"name":"","key":"10906PM","id":"19411","active":"false"},"19410":{"name":"","key":"10903PM","id":"19410","active":"false"},"20402":{"name":"","key":"F10956","id":"20402","active":"false"},"10601":{"name":"","key":"10243","id":"10601","active":"false"},"10600":{"name":"","key":"10102","id":"10600","active":"false"},"15700":{"name":"","key":"10553PM","id":"15700","active":"false"},"11100":{"name":"","key":"9914","id":"11100","active":"false"},"11101":{"name":"","key":"10283","id":"11101","active":"false"},"15704":{"name":"","key":"10539","id":"15704","active":"false"},"15703":{"name":"","key":"10543PM","id":"15703","active":"false"},"15702":{"name":"","key":"10544","id":"15702","active":"false"},"15701":{"name":"","key":"10556PM","id":"15701","active":"false"},"22000":{"name":"","key":"11070","id":"22000","active":"false"},"16808":{"name":"","key":"10642PM","id":"16808","active":"false"},"16807":{"name":"","key":"10639PM","id":"16807","active":"false"},"16806":{"name":"","key":"10638PM","id":"16806","active":"false"},"16805":{"name":"","key":"10612","id":"16805","active":"false"},"16809":{"name":"","key":"10578","id":"16809","active":"false"},"16800":{"name":"","key":"10629PM","id":"16800","active":"false"},"12200":{"name":"","key":"9879","id":"12200","active":"false"},"16804":{"name":"","key":"10641PM","id":"16804","active":"false"},"16803":{"name":"","key":"10628","id":"16803","active":"false"},"16802":{"name":"","key":"10599","id":"16802","active":"false"},"16801":{"name":"","key":"10632PM","id":"16801","active":"false"},"20034":{"name":"","key":"10891","id":"20034","active":"false"},"20033":{"name":"","key":"10991PM","id":"20033","active":"false"},"20032":{"name":"","key":"FAE19","id":"20032","active":"false"},"20031":{"name":"","key":"FAE18","id":"20031","active":"false"},"23300":{"name":"","key":"TSTELUS","id":"23300","active":"false"},"13506":{"name":"","key":"10411","id":"13506","active":"false"},"20030":{"name":"","key":"FAE17","id":"20030","active":"false"},"14600":{"name":"","key":"10458","id":"14600","active":"false"},"14601":{"name":"","key":"10496PM","id":"14601","active":"false"},"10006":{"name":"","key":"10183","id":"10006","active":"false"},"14602":{"name":"","key":"10500PM","id":"14602","active":"false"},"20016":{"name":"","key":"FAE4","id":"20016","active":"false"},"20015":{"name":"","key":"FAE2","id":"20015","active":"false"},"20014":{"name":"","key":"FAE1","id":"20014","active":"false"},"20013":{"name":"","key":"FAE3","id":"20013","active":"false"},"21100":{"name":"","key":"THREAD","id":"21100","active":"false"},"20011":{"name":"","key":"ATT","id":"20011","active":"false"},"20010":{"name":"","key":"AT","id":"20010","active":"false"},"20019":{"name":"","key":"FAE7","id":"20019","active":"false"},"20018":{"name":"","key":"FAE6","id":"20018","active":"false"},"20017":{"name":"","key":"FAE5","id":"20017","active":"false"},"11300":{"name":"","key":"9981","id":"11300","active":"false"},"15900":{"name":"","key":"10524","id":"15900","active":"false"},"20027":{"name":"","key":"FAE15","id":"20027","active":"false"},"20026":{"name":"","key":"FAE14","id":"20026","active":"false"},"20025":{"name":"","key":"FAE13","id":"20025","active":"false"},"20024":{"name":"","key":"FAE12","id":"20024","active":"false"},"20023":{"name":"","key":"FAE11","id":"20023","active":"false"},"20022":{"name":"","key":"FAE10","id":"20022","active":"false"},"20021":{"name":"","key":"FAE9","id":"20021","active":"false"},"20020":{"name":"","key":"FAE8","id":"20020","active":"false"},"22200":{"name":"","key":"10858","id":"22200","active":"false"},"20029":{"name":"","key":"FAEZZ","id":"20029","active":"false"},"20028":{"name":"","key":"FAE16","id":"20028","active":"false"},"12400":{"name":"","key":"10322","id":"12400","active":"false"},"12401":{"name":"","key":"10299","id":"12401","active":"true"},"19005":{"name":"","key":"10840PM","id":"19005","active":"false"},"19004":{"name":"","key":"10854PM","id":"19004","active":"false"},"19007":{"name":"","key":"10852PM","id":"19007","active":"false"},"19006":{"name":"","key":"10850PM","id":"19006","active":"false"},"19001":{"name":"","key":"10848PM","id":"19001","active":"false"},"19000":{"name":"","key":"10844PM","id":"19000","active":"false"},"19003":{"name":"","key":"10839PM","id":"19003","active":"false"},"19002":{"name":"","key":"10804","id":"19002","active":"false"},"13703":{"name":"","key":"9808","id":"13703","active":"false"},"13704":{"name":"","key":"DTNGSP","id":"13704","active":"false"},"19009":{"name":"","key":"10855PM","id":"19009","active":"false"},"19008":{"name":"","key":"10853PM","id":"19008","active":"false"},"13702":{"name":"","key":"10433","id":"13702","active":"false"},"20005":{"name":"","key":"10990PM","id":"20005","active":"false"},"20004":{"name":"","key":"10997PM","id":"20004","active":"false"},"20003":{"name":"","key":"FRSTES","id":"20003","active":"false"},"20002":{"name":"","key":"10987PM","id":"20002","active":"false"},"20001":{"name":"","key":"10969PM","id":"20001","active":"false"},"20000":{"name":"","key":"10971PM","id":"20000","active":"false"},"20009":{"name":"","key":"10988PM","id":"20009","active":"false"},"20008":{"name":"","key":"CLARO","id":"20008","active":"false"},"20007":{"name":"","key":"10989PM","id":"20007","active":"false"},"20006":{"name":"","key":"10995PM","id":"20006","active":"false"},"14805":{"name":"","key":"10489","id":"14805","active":"false"},"14806":{"name":"","key":"10514PM","id":"14806","active":"false"},"14803":{"name":"","key":"10448","id":"14803","active":"false"},"14804":{"name":"","key":"10492","id":"14804","active":"false"},"14807":{"name":"","key":"10466","id":"14807","active":"false"},"14808":{"name":"","key":"10513PM","id":"14808","active":"false"},"14801":{"name":"","key":"10512PM","id":"14801","active":"false"},"14802":{"name":"","key":"10502PM","id":"14802","active":"false"},"14800":{"name":"","key":"10509PM","id":"14800","active":"false"},"13000":{"name":"","key":"10392","id":"13000","active":"false"},"13001":{"name":"","key":"10376","id":"13001","active":"false"},"17608":{"name":"","key":"10700PM","id":"17608","active":"false"},"17609":{"name":"","key":"10706PM","id":"17609","active":"false"},"17604":{"name":"","key":"10671","id":"17604","active":"false"},"17605":{"name":"","key":"10685","id":"17605","active":"false"},"13002":{"name":"","key":"10394","id":"13002","active":"false"},"17606":{"name":"","key":"10676","id":"17606","active":"false"},"17607":{"name":"","key":"CQ04","id":"17607","active":"false"},"17600":{"name":"","key":"10702PM","id":"17600","active":"false"},"17601":{"name":"","key":"10703PM","id":"17601","active":"false"},"17602":{"name":"","key":"10704PM","id":"17602","active":"false"},"17603":{"name":"","key":"10707PM","id":"17603","active":"false"},"17610":{"name":"","key":"10709PM","id":"17610","active":"false"},"14100":{"name":"","key":"10418","id":"14100","active":"false"},"14101":{"name":"","key":"10469PM","id":"14101","active":"false"},"18708":{"name":"","key":"10822PM","id":"18708","active":"false"},"17619":{"name":"","key":"10086","id":"17619","active":"false"},"18709":{"name":"","key":"10817PM","id":"18709","active":"false"},"17615":{"name":"","key":"CQ08","id":"17615","active":"false"},"18704":{"name":"","key":"10814PM","id":"18704","active":"false"},"14104":{"name":"","key":"10476PM","id":"14104","active":"false"},"17616":{"name":"","key":"CQ09","id":"17616","active":"false"},"14105":{"name":"","key":"10474PM","id":"14105","active":"false"},"18705":{"name":"","key":"10811PM","id":"18705","active":"false"},"14102":{"name":"","key":"10470PM","id":"14102","active":"false"},"18706":{"name":"","key":"10820PM","id":"18706","active":"false"},"17617":{"name":"","key":"10711PM","id":"17617","active":"false"},"18707":{"name":"","key":"10821PM","id":"18707","active":"false"},"14103":{"name":"","key":"10475PM","id":"14103","active":"false"},"17618":{"name":"","key":"10067","id":"17618","active":"false"},"18700":{"name":"","key":"10803PM","id":"18700","active":"false"},"14108":{"name":"","key":"10479PM","id":"14108","active":"false"},"17611":{"name":"","key":"10677","id":"17611","active":"false"},"17612":{"name":"","key":"CQ05","id":"17612","active":"false"},"18701":{"name":"","key":"10805PM","id":"18701","active":"false"},"14109":{"name":"","key":"10480PM","id":"14109","active":"false"},"17613":{"name":"","key":"CQ06","id":"17613","active":"false"},"18702":{"name":"","key":"10807PM","id":"18702","active":"false"},"14106":{"name":"","key":"10477PM","id":"14106","active":"false"},"17614":{"name":"","key":"CQ07","id":"17614","active":"false"},"18703":{"name":"","key":"10813PM","id":"18703","active":"false"},"14107":{"name":"","key":"10478PM","id":"14107","active":"false"},"14310":{"name":"","key":"10491PM","id":"14310","active":"false"},"15403":{"name":"","key":"10539PM","id":"15403","active":"false"},"15402":{"name":"","key":"10499","id":"15402","active":"false"},"14311":{"name":"","key":"10495PM","id":"14311","active":"false"},"15401":{"name":"","key":"10538PM","id":"15401","active":"false"},"15400":{"name":"","key":"10532PM","id":"15400","active":"false"},"15406":{"name":"","key":"10529","id":"15406","active":"false"},"15405":{"name":"","key":"10498","id":"15405","active":"false"},"15404":{"name":"","key":"10541PM","id":"15404","active":"false"},"16503":{"name":"","key":"10600PM","id":"16503","active":"false"},"16502":{"name":"","key":"10601PM","id":"16502","active":"false"},"16501":{"name":"","key":"10602PM","id":"16501","active":"false"},"16500":{"name":"","key":"10603PM","id":"16500","active":"false"},"16507":{"name":"","key":"10607PM","id":"16507","active":"false"},"16506":{"name":"","key":"10599PM","id":"16506","active":"false"},"16505":{"name":"","key":"10575","id":"16505","active":"false"},"16504":{"name":"","key":"10604PM","id":"16504","active":"false"},"23001":{"name":"","key":"11107","id":"23001","active":"false"},"23002":{"name":"","key":"LTOSP","id":"23002","active":"false"},"23003":{"name":"","key":"AMTA","id":"23003","active":"false"},"23004":{"name":"","key":"TFA","id":"23004","active":"false"},"13209":{"name":"","key":"10368","id":"13209","active":"false"},"17806":{"name":"","key":"10727PM","id":"17806","active":"false"},"17807":{"name":"","key":"10724PM","id":"17807","active":"false"},"17808":{"name":"","key":"10717","id":"17808","active":"false"},"17809":{"name":"","key":"10730PM","id":"17809","active":"false"},"13202":{"name":"","key":"10404","id":"13202","active":"false"},"17802":{"name":"","key":"10713","id":"17802","active":"false"},"17803":{"name":"","key":"10717PM","id":"17803","active":"false"},"16711":{"name":"","key":"10474","id":"16711","active":"false"},"17804":{"name":"","key":"10725PM","id":"17804","active":"false"},"16710":{"name":"","key":"10595PM","id":"16710","active":"false"},"17800":{"name":"","key":"10712","id":"17800","active":"false"},"17801":{"name":"","key":"10711","id":"17801","active":"false"},"13210":{"name":"","key":"10346","id":"13210","active":"false"},"14308":{"name":"","key":"10477","id":"14308","active":"false"},"14309":{"name":"","key":"10489PM","id":"14309","active":"false"},"18902":{"name":"","key":"10845PM","id":"18902","active":"false"},"14302":{"name":"","key":"10484PM","id":"14302","active":"false"},"14303":{"name":"","key":"10485PM","id":"14303","active":"false"},"13214":{"name":"","key":"10401","id":"13214","active":"false"},"18903":{"name":"","key":"10795","id":"18903","active":"false"},"13211":{"name":"","key":"10393","id":"13211","active":"false"},"14300":{"name":"","key":"10471","id":"14300","active":"false"},"14301":{"name":"","key":"10452","id":"14301","active":"false"},"14306":{"name":"","key":"PM1","id":"14306","active":"false"},"14307":{"name":"","key":"PM2","id":"14307","active":"false"},"18900":{"name":"","key":"10836PM","id":"18900","active":"false"},"14304":{"name":"","key":"10486PM","id":"14304","active":"false"},"14305":{"name":"","key":"10487PM","id":"14305","active":"false"},"18901":{"name":"","key":"10762","id":"18901","active":"false"},"15608":{"name":"","key":"10549","id":"15608","active":"false"},"15607":{"name":"","key":"10530","id":"15607","active":"false"},"15606":{"name":"","key":"10555PM","id":"15606","active":"false"},"15601":{"name":"","key":"10549PM","id":"15601","active":"false"},"11001":{"name":"","key":"10256","id":"11001","active":"false"},"15600":{"name":"","key":"10545PM","id":"15600","active":"false"},"11003":{"name":"","key":"10301","id":"11003","active":"false"},"11002":{"name":"","key":"9883","id":"11002","active":"false"},"15605":{"name":"","key":"10554PM","id":"15605","active":"false"},"15604":{"name":"","key":"10550PM","id":"15604","active":"false"},"15603":{"name":"","key":"10548PM","id":"15603","active":"false"},"15602":{"name":"","key":"ATV","id":"15602","active":"false"},"16709":{"name":"","key":"10586","id":"16709","active":"false"},"16708":{"name":"","key":"10619","id":"16708","active":"false"},"16707":{"name":"","key":"10630PM","id":"16707","active":"false"},"16706":{"name":"","key":"10628PM","id":"16706","active":"false"},"16701":{"name":"","key":"10622PM","id":"16701","active":"false"},"16700":{"name":"","key":"10623PM","id":"16700","active":"false"},"12100":{"name":"","key":"9697","id":"12100","active":"false"},"16705":{"name":"","key":"10587","id":"16705","active":"false"},"16704":{"name":"","key":"10626PM","id":"16704","active":"false"},"16703":{"name":"","key":"10618PM","id":"16703","active":"false"},"16702":{"name":"","key":"10528","id":"16702","active":"false"},"16110":{"name":"","key":"10586PM","id":"16110","active":"false"},"17200":{"name":"","key":"10648PM","id":"17200","active":"false"},"16111":{"name":"","key":"10584PM","id":"16111","active":"false"},"21700":{"name":"","key":"ABK01","id":"21700","active":"false"},"11900":{"name":"","key":"10114","id":"11900","active":"false"},"11901":{"name":"","key":"10312","id":"11901","active":"false"},"22800":{"name":"","key":"TELSTRA","id":"22800","active":"false"},"18300":{"name":"","key":"10754PM","id":"18300","active":"false"},"22801":{"name":"","key":"FTEST","id":"22801","active":"false"},"18301":{"name":"","key":"10718","id":"18301","active":"false"},"22802":{"name":"","key":"NTEST1","id":"22802","active":"false"},"22803":{"name":"","key":"NTEST2","id":"22803","active":"false"},"18510":{"name":"","key":"10766","id":"18510","active":"false"},"19601":{"name":"","key":"10942PM","id":"19601","active":"false"},"18511":{"name":"","key":"10779PM","id":"18511","active":"false"},"18512":{"name":"","key":"10784PM","id":"18512","active":"false"},"19600":{"name":"","key":"10941PM","id":"19600","active":"false"},"15000":{"name":"","key":"10516","id":"15000","active":"false"},"18517":{"name":"","key":"10793PM","id":"18517","active":"false"},"18518":{"name":"","key":"10748","id":"18518","active":"false"},"18519":{"name":"","key":"10770PM","id":"18519","active":"false"},"18513":{"name":"","key":"10787PM","id":"18513","active":"false"},"19603":{"name":"","key":"10949PM","id":"19603","active":"false"},"19602":{"name":"","key":"10948PM","id":"19602","active":"false"},"18514":{"name":"","key":"10790PM","id":"18514","active":"false"},"18515":{"name":"","key":"10791PM","id":"18515","active":"false"},"18516":{"name":"","key":"10792PM","id":"18516","active":"false"},"16103":{"name":"","key":"10580PM","id":"16103","active":"false"},"16102":{"name":"","key":"10577PM","id":"16102","active":"false"},"16101":{"name":"","key":"10576PM","id":"16101","active":"false"},"16100":{"name":"","key":"10571PM","id":"16100","active":"false"},"10800":{"name":"","key":"10177","id":"10800","active":"false"},"10801":{"name":"","key":"10288","id":"10801","active":"false"},"16107":{"name":"","key":"10465","id":"16107","active":"false"},"16106":{"name":"","key":"10582PM","id":"16106","active":"false"},"16105":{"name":"","key":"10568","id":"16105","active":"false"},"16104":{"name":"","key":"10581PM","id":"16104","active":"false"},"16109":{"name":"","key":"10578PM","id":"16109","active":"false"},"16108":{"name":"","key":"10585PM","id":"16108","active":"false"},"17400":{"name":"","key":"10684PM","id":"17400","active":"false"},"17401":{"name":"","key":"10687PM","id":"17401","active":"false"},"21904":{"name":"","key":"FTK","id":"21904","active":"false"},"21903":{"name":"","key":"TAR","id":"21903","active":"false"},"21902":{"name":"","key":"SOUR","id":"21902","active":"false"},"21901":{"name":"","key":"MED","id":"21901","active":"false"},"21900":{"name":"","key":"FT","id":"21900","active":"false"},"17402":{"name":"","key":"10688PM","id":"17402","active":"false"},"17403":{"name":"","key":"ASU2S","id":"17403","active":"false"},"17404":{"name":"","key":"10686PM","id":"17404","active":"false"},"17405":{"name":"","key":"CQ01","id":"17405","active":"false"},"18500":{"name":"","key":"10766PM","id":"18500","active":"false"},"18501":{"name":"","key":"10763","id":"18501","active":"false"},"18506":{"name":"","key":"10781PM","id":"18506","active":"false"},"18507":{"name":"","key":"10775","id":"18507","active":"false"},"18508":{"name":"","key":"10775PM","id":"18508","active":"false"},"18509":{"name":"","key":"10786PM","id":"18509","active":"false"},"18502":{"name":"","key":"TPD","id":"18502","active":"false"},"18503":{"name":"","key":"10749","id":"18503","active":"false"},"18504":{"name":"","key":"10765PM","id":"18504","active":"false"},"18505":{"name":"","key":"10777PM","id":"18505","active":"false"},"17620":{"name":"","key":"10710PM","id":"17620","active":"false"},"17621":{"name":"","key":"10712PM","id":"17621","active":"false"},"18710":{"name":"","key":"10819PM","id":"18710","active":"false"},"15201":{"name":"","key":"10527PM","id":"15201","active":"false"},"15200":{"name":"","key":"10523PM","id":"15200","active":"false"},"18715":{"name":"","key":"10829PM","id":"18715","active":"false"},"15205":{"name":"","key":"10433TM","id":"15205","active":"false"},"15204":{"name":"","key":"FEED","id":"15204","active":"false"},"15203":{"name":"","key":"10524PM","id":"15203","active":"false"},"15202":{"name":"","key":"10520PM","id":"15202","active":"false"},"17622":{"name":"","key":"10713PM","id":"17622","active":"false"},"18711":{"name":"","key":"10804PM","id":"18711","active":"false"},"19801":{"name":"","key":"10961PM","id":"19801","active":"false"},"19800":{"name":"","key":"10940PM","id":"19800","active":"false"},"18712":{"name":"","key":"10824PM","id":"18712","active":"false"},"19803":{"name":"","key":"10967PM","id":"19803","active":"false"},"18713":{"name":"","key":"TELUS10714","id":"18713","active":"false"},"19802":{"name":"","key":"10962PM","id":"19802","active":"false"},"18714":{"name":"","key":"10823PM","id":"18714","active":"false"},"16300":{"name":"","key":"10596PM","id":"16300","active":"false"},"20800":{"name":"","key":"RFQ11003","id":"20800","active":"false"},"19104":{"name":"","key":"10861PM","id":"19104","active":"false"},"19103":{"name":"","key":"10860PM","id":"19103","active":"false"},"19105":{"name":"","key":"10830","id":"19105","active":"false"},"19100":{"name":"","key":"SALT","id":"19100","active":"false"},"19102":{"name":"","key":"10851PM","id":"19102","active":"false"},"19101":{"name":"","key":"10838PM","id":"19101","active":"false"},"13804":{"name":"","key":"10338PM","id":"13804","active":"false"},"13805":{"name":"","key":"10339PM","id":"13805","active":"false"},"13803":{"name":"","key":"VOD","id":"13803","active":"false"},"13808":{"name":"","key":"10344PM","id":"13808","active":"false"},"13809":{"name":"","key":"10374PM","id":"13809","active":"false"},"13806":{"name":"","key":"10341PM","id":"13806","active":"false"},"13807":{"name":"","key":"10342PM","id":"13807","active":"false"},"20104":{"name":"","key":"10871","id":"20104","active":"false"},"20103":{"name":"","key":"10935","id":"20103","active":"false"},"20102":{"name":"","key":"FAE20","id":"20102","active":"false"},"20101":{"name":"","key":"10988","id":"20101","active":"false"},"20100":{"name":"","key":"10956","id":"20100","active":"false"},"20105":{"name":"","key":"10942","id":"20105","active":"false"},"13815":{"name":"","key":"10382PM","id":"13815","active":"false"},"14904":{"name":"","key":"10333","id":"14904","active":"false"},"13816":{"name":"","key":"10383PM","id":"13816","active":"false"},"13813":{"name":"","key":"10378PM","id":"13813","active":"false"},"14902":{"name":"","key":"10518PM","id":"14902","active":"false"},"13814":{"name":"","key":"10379PM","id":"13814","active":"false"},"14903":{"name":"","key":"NT","id":"14903","active":"false"},"13819":{"name":"","key":"10386PM","id":"13819","active":"false"},"13817":{"name":"","key":"10384PM","id":"13817","active":"false"},"13818":{"name":"","key":"10385PM","id":"13818","active":"false"},"14900":{"name":"","key":"10516PM","id":"14900","active":"false"},"13811":{"name":"","key":"10376PM","id":"13811","active":"false"},"13812":{"name":"","key":"10377PM","id":"13812","active":"false"},"14901":{"name":"","key":"10517PM","id":"14901","active":"false"},"13810":{"name":"","key":"10375PM","id":"13810","active":"false"},"21402":{"name":"","key":"SSKD","id":"21402","active":"false"},"21401":{"name":"","key":"VERIZON","id":"21401","active":"false"},"21400":{"name":"","key":"EA","id":"21400","active":"false"},"21403":{"name":"","key":"TELMEX","id":"21403","active":"false"},"11601":{"name":"","key":"10182","id":"11601","active":"false"},"11600":{"name":"","key":"10188","id":"11600","active":"false"},"22503":{"name":"","key":"11136","id":"22503","active":"false"},"22500":{"name":"","key":"10572","id":"22500","active":"false"},"22501":{"name":"","key":"11138","id":"22501","active":"false"},"22502":{"name":"","key":"11112","id":"22502","active":"false"},"12700":{"name":"","key":"10275","id":"12700","active":"false"},"18212":{"name":"","key":"10742PM","id":"18212","active":"false"},"19302":{"name":"","key":"10811","id":"19302","active":"false"},"19301":{"name":"","key":"C10709","id":"19301","active":"false"},"18213":{"name":"","key":"10743PM","id":"18213","active":"false"},"19304":{"name":"","key":"10881PM","id":"19304","active":"false"},"18214":{"name":"","key":"10749PM","id":"18214","active":"false"},"19303":{"name":"","key":"10867PM","id":"19303","active":"false"},"19300":{"name":"","key":"SINGTEL","id":"19300","active":"false"},"18210":{"name":"","key":"10744PM","id":"18210","active":"false"},"18211":{"name":"","key":"10727","id":"18211","active":"false"},"19309":{"name":"","key":"10856","id":"19309","active":"false"},"19306":{"name":"","key":"10822","id":"19306","active":"false"},"19305":{"name":"","key":"10875","id":"19305","active":"false"},"19308":{"name":"","key":"10854","id":"19308","active":"false"},"19307":{"name":"","key":"10884PM","id":"19307","active":"false"},"19313":{"name":"","key":"10887PM","id":"19313","active":"false"},"19312":{"name":"","key":"10883PM","id":"19312","active":"false"},"20301":{"name":"","key":"11001","id":"20301","active":"false"},"20300":{"name":"","key":"MM10988","id":"20300","active":"false"},"19315":{"name":"","key":"10874","id":"19315","active":"false"},"19314":{"name":"","key":"10891PM","id":"19314","active":"false"},"19311":{"name":"","key":"10882PM","id":"19311","active":"false"},"19310":{"name":"","key":"10857","id":"19310","active":"false"},"10500":{"name":"","key":"10222","id":"10500","active":"false"},"19522":{"name":"","key":"VOIP","id":"19522","active":"false"},"17101":{"name":"","key":"10649PM","id":"17101","active":"false"},"21600":{"name":"","key":"ABK","id":"21600","active":"false"},"19521":{"name":"","key":"APP","id":"19521","active":"false"},"17102":{"name":"","key":"10650PM","id":"17102","active":"false"},"19524":{"name":"","key":"PON","id":"19524","active":"false"},"17103":{"name":"","key":"10651PM","id":"17103","active":"false"},"19523":{"name":"","key":"WIFI","id":"19523","active":"false"},"17104":{"name":"","key":"ASU2","id":"17104","active":"false"},"19520":{"name":"","key":"NET","id":"19520","active":"false"},"17100":{"name":"","key":"10608PM","id":"17100","active":"false"},"21607":{"name":"","key":"11032","id":"21607","active":"false"},"21606":{"name":"","key":"10966","id":"21606","active":"false"},"21605":{"name":"","key":"11097","id":"21605","active":"false"},"21604":{"name":"","key":"11047","id":"21604","active":"false"},"21603":{"name":"","key":"11090","id":"21603","active":"false"},"21602":{"name":"","key":"11091","id":"21602","active":"false"},"21601":{"name":"","key":"10970","id":"21601","active":"false"},"11800":{"name":"","key":"10202","id":"11800","active":"false"},"19529":{"name":"","key":"10887","id":"19529","active":"false"},"19526":{"name":"","key":"10944PM","id":"19526","active":"false"},"19525":{"name":"","key":"10927PM","id":"19525","active":"false"},"19528":{"name":"","key":"10855","id":"19528","active":"false"},"19527":{"name":"","key":"10939PM","id":"19527","active":"false"},"19533":{"name":"","key":"A10900","id":"19533","active":"false"},"18201":{"name":"","key":"10730","id":"18201","active":"false"},"22701":{"name":"","key":"11048","id":"22701","active":"false"},"18202":{"name":"","key":"ASU3","id":"18202","active":"false"},"19532":{"name":"","key":"10900","id":"19532","active":"false"},"18203":{"name":"","key":"ASU4","id":"18203","active":"false"},"18204":{"name":"","key":"ASU5","id":"18204","active":"false"},"19531":{"name":"","key":"10911PM","id":"19531","active":"false"},"18200":{"name":"","key":"10741PM","id":"18200","active":"false"},"19530":{"name":"","key":"10943PM","id":"19530","active":"false"},"22700":{"name":"","key":"20193","id":"22700","active":"false"},"12900":{"name":"","key":"10391","id":"12900","active":"false"},"21609":{"name":"","key":"TESTFLO","id":"21609","active":"false"},"18209":{"name":"","key":"SMAR","id":"18209","active":"false"},"18205":{"name":"","key":"ASU1S","id":"18205","active":"false"},"18206":{"name":"","key":"ASU3S","id":"18206","active":"false"},"18207":{"name":"","key":"ASU4S","id":"18207","active":"false"},"18208":{"name":"","key":"ASU5S","id":"18208","active":"false"},"13880":{"name":"","key":"10370PM","id":"13880","active":"false"},"13881":{"name":"","key":"10371PM","id":"13881","active":"false"},"23203":{"name":"","key":"20261","id":"23203","active":"false"},"13884":{"name":"","key":"10351PM","id":"13884","active":"false"},"13400":{"name":"","key":"ASTER","id":"13400","active":"false"},"13401":{"name":"","key":"10405","id":"13401","active":"false"},"13882":{"name":"","key":"10372PM","id":"13882","active":"false"},"13883":{"name":"","key":"10349PM","id":"13883","active":"false"},"13888":{"name":"","key":"10356PM","id":"13888","active":"false"},"13889":{"name":"","key":"10357PM","id":"13889","active":"false"},"13886":{"name":"","key":"10353PM","id":"13886","active":"false"},"13887":{"name":"","key":"10354PM","id":"13887","active":"false"},"13891":{"name":"","key":"10359PM","id":"13891","active":"false"},"13892":{"name":"","key":"10360PM","id":"13892","active":"false"},"13890":{"name":"","key":"10358PM","id":"13890","active":"false"},"13895":{"name":"","key":"10336PM","id":"13895","active":"false"},"14500":{"name":"","key":"10408","id":"14500","active":"false"},"13896":{"name":"","key":"10337PM","id":"13896","active":"false"},"13893":{"name":"","key":"10309PM","id":"13893","active":"false"},"13894":{"name":"","key":"10333PM","id":"13894","active":"false"},"12325":{"name":"","key":"10360","id":"12325","active":"false"},"13897":{"name":"","key":"10340PM","id":"13897","active":"false"},"13898":{"name":"","key":"10343PM","id":"13898","active":"false"},"12326":{"name":"","key":"10255","id":"12326","active":"false"},"21000":{"name":"","key":"10971","id":"21000","active":"false"},"15807":{"name":"","key":"10542PM","id":"15807","active":"false"},"15806":{"name":"","key":"10566PM","id":"15806","active":"false"},"15805":{"name":"","key":"10565PM","id":"15805","active":"false"},"13868":{"name":"","key":"10448PM","id":"13868","active":"false"},"13869":{"name":"","key":"10449PM","id":"13869","active":"false"},"15804":{"name":"","key":"10564PM","id":"15804","active":"false"},"15808":{"name":"","key":"10567PM","id":"15808","active":"false"},"13862":{"name":"","key":"10442PM","id":"13862","active":"false"},"13863":{"name":"","key":"10443PM","id":"13863","active":"false"},"13860":{"name":"","key":"10438PM","id":"13860","active":"false"},"13861":{"name":"","key":"10439PM","id":"13861","active":"false"},"11200":{"name":"","key":"10264","id":"11200","active":"false"},"13866":{"name":"","key":"10446PM","id":"13866","active":"false"},"15803":{"name":"","key":"10563PM","id":"15803","active":"false"},"13867":{"name":"","key":"10447PM","id":"13867","active":"false"},"15802":{"name":"","key":"10562PM","id":"15802","active":"false"},"15801":{"name":"","key":"10561PM","id":"15801","active":"false"},"13864":{"name":"","key":"10444PM","id":"13864","active":"false"},"13865":{"name":"","key":"10445PM","id":"13865","active":"false"},"15800":{"name":"","key":"10559PM","id":"15800","active":"false"},"22100":{"name":"","key":"11154","id":"22100","active":"false"},"22101":{"name":"","key":"20122","id":"22101","active":"false"},"22102":{"name":"","key":"11106","id":"22102","active":"false"},"22103":{"name":"","key":"TCT","id":"22103","active":"false"},"13879":{"name":"","key":"10369PM","id":"13879","active":"false"},"13873":{"name":"","key":"10361PM","id":"13873","active":"false"},"13874":{"name":"","key":"10363PM","id":"13874","active":"false"},"13871":{"name":"","key":"10451PM","id":"13871","active":"false"},"13872":{"name":"","key":"10452PM","id":"13872","active":"false"},"12300":{"name":"","key":"10178","id":"12300","active":"false"},"13877":{"name":"","key":"10366PM","id":"13877","active":"false"},"13878":{"name":"","key":"10368PM","id":"13878","active":"false"},"13875":{"name":"","key":"10364PM","id":"13875","active":"false"},"16900":{"name":"","key":"ASU1","id":"16900","active":"false"},"13876":{"name":"","key":"10365PM","id":"13876","active":"false"},"13848":{"name":"","key":"10422PM","id":"13848","active":"false"},"13849":{"name":"","key":"10423PM","id":"13849","active":"false"},"13846":{"name":"","key":"10417PM","id":"13846","active":"false"},"13847":{"name":"","key":"10418PM","id":"13847","active":"false"},"13840":{"name":"","key":"10411PM","id":"13840","active":"false"},"13841":{"name":"","key":"10412PM","id":"13841","active":"false"},"13844":{"name":"","key":"10415PM","id":"13844","active":"false"},"13845":{"name":"","key":"10416PM","id":"13845","active":"false"},"13842":{"name":"","key":"10413PM","id":"13842","active":"false"},"13843":{"name":"","key":"10414PM","id":"13843","active":"false"},"13859":{"name":"","key":"10437PM","id":"13859","active":"false"},"14706":{"name":"","key":"VRV9510","id":"14706","active":"false"},"14704":{"name":"","key":"10508PM","id":"14704","active":"false"},"13857":{"name":"","key":"10435PM","id":"13857","active":"false"},"14705":{"name":"","key":"10510PM","id":"14705","active":"false"},"13858":{"name":"","key":"10436PM","id":"13858","active":"false"},"13851":{"name":"","key":"10426PM","id":"13851","active":"false"},"13852":{"name":"","key":"10427PM","id":"13852","active":"false"},"13850":{"name":"","key":"10424PM","id":"13850","active":"false"},"14702":{"name":"","key":"10505PM","id":"14702","active":"false"},"13855":{"name":"","key":"10431PM","id":"13855","active":"false"},"13856":{"name":"","key":"10433PM","id":"13856","active":"false"},"14703":{"name":"","key":"10507PM","id":"14703","active":"false"},"14700":{"name":"","key":"10503PM","id":"14700","active":"false"},"13853":{"name":"","key":"10429PM","id":"13853","active":"false"},"13854":{"name":"","key":"10430PM","id":"13854","active":"false"},"14701":{"name":"","key":"10504PM","id":"14701","active":"false"},"21204":{"name":"","key":"10895","id":"21204","active":"false"},"21203":{"name":"","key":"11075","id":"21203","active":"false"},"21202":{"name":"","key":"11024","id":"21202","active":"false"},"21201":{"name":"","key":"CPDBTES","id":"21201","active":"false"},"21200":{"name":"","key":"F11047","id":"21200","active":"false"},"13826":{"name":"","key":"10394PM","id":"13826","active":"false"},"13827":{"name":"","key":"10397PM","id":"13827","active":"false"},"13824":{"name":"","key":"10392PM","id":"13824","active":"false"},"13825":{"name":"","key":"10393PM","id":"13825","active":"false"},"13828":{"name":"","key":"10398PM","id":"13828","active":"false"},"13829":{"name":"","key":"10399PM","id":"13829","active":"false"},"13822":{"name":"","key":"10390PM","id":"13822","active":"false"},"13823":{"name":"","key":"10391PM","id":"13823","active":"false"},"11400":{"name":"","key":"10066","id":"11400","active":"false"},"13820":{"name":"","key":"10387PM","id":"13820","active":"false"},"13821":{"name":"","key":"10389PM","id":"13821","active":"false"},"22300":{"name":"","key":"11125","id":"22300","active":"false"},"22301":{"name":"","key":"11137","id":"22301","active":"false"},"22302":{"name":"","key":"TBOX","id":"22302","active":"false"},"13837":{"name":"","key":"10408PM","id":"13837","active":"false"},"13838":{"name":"","key":"10409PM","id":"13838","active":"false"},"13835":{"name":"","key":"10405PM","id":"13835","active":"false"},"13836":{"name":"","key":"10407PM","id":"13836","active":"false"},"13839":{"name":"","key":"10410PM","id":"13839","active":"false"},"13830":{"name":"","key":"10400PM","id":"13830","active":"false"},"13833":{"name":"","key":"10403PM","id":"13833","active":"false"},"13834":{"name":"","key":"10404PM","id":"13834","active":"false"},"13831":{"name":"","key":"10401PM","id":"13831","active":"false"},"12500":{"name":"","key":"10330","id":"12500","active":"false"},"13832":{"name":"","key":"10402PM","id":"13832","active":"false"},"15300":{"name":"","key":"10498PM","id":"15300","active":"false"},"15309":{"name":"","key":"10535PM","id":"15309","active":"false"},"19908":{"name":"","key":"10980PM","id":"19908","active":"false"},"19907":{"name":"","key":"10982PM","id":"19907","active":"false"},"19909":{"name":"","key":"F10775","id":"19909","active":"false"},"15304":{"name":"","key":"10521PM","id":"15304","active":"false"},"19904":{"name":"","key":"10966PM","id":"19904","active":"false"},"19903":{"name":"","key":"10963PM","id":"19903","active":"false"},"15303":{"name":"","key":"10531PM","id":"15303","active":"false"},"15302":{"name":"","key":"10529PM","id":"15302","active":"false"},"19906":{"name":"","key":"MFG","id":"19906","active":"false"},"19905":{"name":"","key":"10968PM","id":"19905","active":"false"},"15301":{"name":"","key":"10526PM","id":"15301","active":"false"},"15308":{"name":"","key":"10528PM","id":"15308","active":"false"},"18810":{"name":"","key":"10833PM","id":"18810","active":"false"},"19900":{"name":"","key":"10910","id":"19900","active":"false"},"15307":{"name":"","key":"10526","id":"15307","active":"false"},"19902":{"name":"","key":"10960PM","id":"19902","active":"false"},"15306":{"name":"","key":"10505","id":"15306","active":"false"},"19901":{"name":"","key":"CHARTER","id":"19901","active":"false"},"15305":{"name":"","key":"10530PM","id":"15305","active":"false"},"15311":{"name":"","key":"10533PM","id":"15311","active":"false"},"16400":{"name":"","key":"10598PM","id":"16400","active":"false"},"15310":{"name":"","key":"10537PM","id":"15310","active":"false"},"20900":{"name":"","key":"11037","id":"20900","active":"false"},"19919":{"name":"","key":"F10748","id":"19919","active":"false"},"19918":{"name":"","key":"F10545","id":"19918","active":"false"},"19915":{"name":"","key":"F10553","id":"19915","active":"false"},"19914":{"name":"","key":"10982","id":"19914","active":"false"},"19917":{"name":"","key":"F10713","id":"19917","active":"false"},"16402":{"name":"","key":"10545","id":"16402","active":"false"},"19916":{"name":"","key":"F10516","id":"19916","active":"false"},"15312":{"name":"","key":"10525PM","id":"15312","active":"false"},"16401":{"name":"","key":"10594PM","id":"16401","active":"false"},"19911":{"name":"","key":"10983PM","id":"19911","active":"false"},"19910":{"name":"","key":"10935PM","id":"19910","active":"false"},"19913":{"name":"","key":"F10549","id":"19913","active":"false"},"19912":{"name":"","key":"F10433","id":"19912","active":"false"},"13100":{"name":"","key":"10397","id":"13100","active":"false"},"17707":{"name":"","key":"10720","id":"17707","active":"false"},"17703":{"name":"","key":"TELUS10706","id":"17703","active":"false"},"17704":{"name":"","key":"10719PM","id":"17704","active":"false"},"17705":{"name":"","key":"10720PM","id":"17705","active":"false"},"17706":{"name":"","key":"10718PM","id":"17706","active":"false"},"17700":{"name":"","key":"10691","id":"17700","active":"false"},"17702":{"name":"","key":"10706","id":"17702","active":"false"},"14200":{"name":"","key":"10482PM","id":"14200","active":"false"},"18807":{"name":"","key":"10827PM","id":"18807","active":"false"},"18808":{"name":"","key":"10828PM","id":"18808","active":"false"},"18809":{"name":"","key":"F10779","id":"18809","active":"false"},"18803":{"name":"","key":"10830PM","id":"18803","active":"false"},"18804":{"name":"","key":"10784","id":"18804","active":"false"},"18805":{"name":"","key":"F10754T","id":"18805","active":"false"},"14201":{"name":"","key":"10483PM","id":"14201","active":"false"},"18806":{"name":"","key":"TEL10754","id":"18806","active":"false"},"18800":{"name":"","key":"10831PM","id":"18800","active":"false"},"18801":{"name":"","key":"10826PM","id":"18801","active":"false"},"18802":{"name":"","key":"10796PM","id":"18802","active":"false"},"15502":{"name":"","key":"10546PM","id":"15502","active":"false"},"15501":{"name":"","key":"10544PM","id":"15501","active":"false"},"15500":{"name":"","key":"10540PM","id":"15500","active":"false"},"13327":{"name":"","key":"10413","id":"13327","active":"false"},"15505":{"name":"","key":"10547PM","id":"15505","active":"false"},"15504":{"name":"","key":"10491","id":"15504","active":"false"},"15503":{"name":"","key":"10527","id":"15503","active":"false"},"12000":{"name":"","key":"SECURITY","id":"12000","active":"false"},"16602":{"name":"","key":"10609PM","id":"16602","active":"false"},"12001":{"name":"","key":"CRITICAL","id":"12001","active":"false"},"16601":{"name":"","key":"10592","id":"16601","active":"false"},"16600":{"name":"","key":"10606PM","id":"16600","active":"false"},"13332":{"name":"","key":"10400","id":"13332","active":"false"},"16604":{"name":"","key":"10612PM","id":"16604","active":"false"},"16603":{"name":"","key":"10611PM","id":"16603","active":"false"},"12219":{"name":"","key":"10357","id":"12219","active":"false"},"17905":{"name":"","key":"10728PM","id":"17905","active":"false"},"17906":{"name":"","key":"10734PM","id":"17906","active":"false"},"17907":{"name":"","key":"10735PM","id":"17907","active":"false"},"17901":{"name":"","key":"10722PM","id":"17901","active":"false"},"16811":{"name":"","key":"10644PM","id":"16811","active":"false"},"16810":{"name":"","key":"10584","id":"16810","active":"false"},"17902":{"name":"","key":"10673","id":"17902","active":"false"},"17903":{"name":"","key":"10666","id":"17903","active":"false"},"17904":{"name":"","key":"10705PM","id":"17904","active":"false"},"16814":{"name":"","key":"10645PM","id":"16814","active":"false"},"16813":{"name":"","key":"10647PM","id":"16813","active":"false"},"16812":{"name":"","key":"10643PM","id":"16812","active":"false"},"17900":{"name":"","key":"10725","id":"17900","active":"false"},"12220":{"name":"","key":"10352","id":"12220","active":"false"},"14401":{"name":"","key":"10497PM","id":"14401","active":"false"},"12222":{"name":"","key":"10364","id":"12222","active":"false"},"14402":{"name":"","key":"10326PM","id":"14402","active":"false"},"12221":{"name":"","key":"10363","id":"12221","active":"false"},"12224":{"name":"","key":"10227","id":"12224","active":"false"},"14400":{"name":"","key":"10492PM","id":"14400","active":"false"},"12223":{"name":"","key":"9955","id":"12223","active":"false"},"14403":{"name":"","key":"10499PM","id":"14403","active":"false"},"17321":{"name":"","key":"10667PM","id":"17321","active":"false"},"18410":{"name":"","key":"10769PM","id":"18410","active":"false"},"19500":{"name":"","key":"10840","id":"19500","active":"false"},"18411":{"name":"","key":"10748PM","id":"18411","active":"false"},"17322":{"name":"","key":"10680PM","id":"17322","active":"false"},"18412":{"name":"","key":"F10754","id":"18412","active":"false"},"17323":{"name":"","key":"10677PM","id":"17323","active":"false"},"19502":{"name":"","key":"10546","id":"19502","active":"false"},"17324":{"name":"","key":"10685PM","id":"17324","active":"false"},"18413":{"name":"","key":"10767PM","id":"18413","active":"false"},"19501":{"name":"","key":"10838","id":"19501","active":"false"},"17320":{"name":"","key":"10608","id":"17320","active":"false"},"19508":{"name":"","key":"10853","id":"19508","active":"false"},"19507":{"name":"","key":"10920PM","id":"19507","active":"false"},"19509":{"name":"","key":"10922PM","id":"19509","active":"false"},"19504":{"name":"","key":"10924PM","id":"19504","active":"false"},"18414":{"name":"","key":"10772PM","id":"18414","active":"false"},"19503":{"name":"","key":"10915PM","id":"19503","active":"false"},"18415":{"name":"","key":"10746","id":"18415","active":"false"},"19506":{"name":"","key":"10910PM","id":"19506","active":"false"},"19505":{"name":"","key":"10785PM","id":"19505","active":"false"},"16000":{"name":"","key":"10569PM","id":"16000","active":"false"},"19511":{"name":"","key":"10929PM","id":"19511","active":"false"},"19510":{"name":"","key":"10928PM","id":"19510","active":"false"},"19513":{"name":"","key":"F10830","id":"19513","active":"false"},"19512":{"name":"","key":"10895PM","id":"19512","active":"false"},"16004":{"name":"","key":"10557PM","id":"16004","active":"false"},"16003":{"name":"","key":"10570PM","id":"16003","active":"false"},"16002":{"name":"","key":"10568PM","id":"16002","active":"false"},"16001":{"name":"","key":"10553","id":"16001","active":"false"},"10701":{"name":"","key":"10197","id":"10701","active":"false"},"10702":{"name":"","key":"10198","id":"10702","active":"false"},"19519":{"name":"","key":"SYS","id":"19519","active":"false"},"16008":{"name":"","key":"10575PM","id":"16008","active":"false"},"19518":{"name":"","key":"SDK","id":"19518","active":"false"},"16007":{"name":"","key":"10574PM","id":"16007","active":"false"},"16006":{"name":"","key":"10573PM","id":"16006","active":"false"},"16005":{"name":"","key":"10572PM","id":"16005","active":"false"},"19515":{"name":"","key":"10905PM","id":"19515","active":"false"},"19514":{"name":"","key":"10919PM","id":"19514","active":"false"},"19516":{"name":"","key":"10905","id":"19516","active":"false"},"17300":{"name":"","key":"10644","id":"17300","active":"false"},"17301":{"name":"","key":"10652PM","id":"17301","active":"false"},"17302":{"name":"","key":"10661PM","id":"17302","active":"false"},"21801":{"name":"","key":"TELUS11090","id":"21801","active":"false"},"21800":{"name":"","key":"TELUS11091","id":"21800","active":"false"},"17307":{"name":"","key":"ASU001","id":"17307","active":"false"},"17308":{"name":"","key":"10671PM","id":"17308","active":"false"},"17309":{"name":"","key":"10672PM","id":"17309","active":"false"},"17303":{"name":"","key":"10658PM","id":"17303","active":"false"},"17304":{"name":"","key":"10654PM","id":"17304","active":"false"},"17305":{"name":"","key":"10666PM","id":"17305","active":"false"},"17306":{"name":"","key":"10664PM","id":"17306","active":"false"},"17310":{"name":"","key":"10657PM","id":"17310","active":"false"},"18400":{"name":"","key":"10746PM","id":"18400","active":"false"},"17311":{"name":"","key":"10674PM","id":"17311","active":"false"},"22900":{"name":"","key":"IP","id":"22900","active":"false"},"18401":{"name":"","key":"10758PM","id":"18401","active":"false"},"17312":{"name":"","key":"10676PM","id":"17312","active":"false"},"22901":{"name":"","key":"20325","id":"22901","active":"false"},"18402":{"name":"","key":"10760PM","id":"18402","active":"false"},"22902":{"name":"","key":"20145","id":"22902","active":"false"},"17313":{"name":"","key":"10649","id":"17313","active":"false"},"17318":{"name":"","key":"10681PM","id":"17318","active":"false"},"18407":{"name":"","key":"10714","id":"18407","active":"false"},"18408":{"name":"","key":"10762PM","id":"18408","active":"false"},"17319":{"name":"","key":"10654","id":"17319","active":"false"},"18409":{"name":"","key":"10764PM","id":"18409","active":"false"},"17314":{"name":"","key":"ASUAPP","id":"17314","active":"false"},"18403":{"name":"","key":"10753PM","id":"18403","active":"false"},"18404":{"name":"","key":"10757PM","id":"18404","active":"false"},"17315":{"name":"","key":"10653PM","id":"17315","active":"false"},"17316":{"name":"","key":"10673PM","id":"17316","active":"false"},"18405":{"name":"","key":"10754","id":"18405","active":"false"},"17317":{"name":"","key":"10679PM","id":"17317","active":"false"},"18406":{"name":"","key":"10763PM","id":"18406","active":"false"},"14012":{"name":"","key":"10467PM","id":"14012","active":"false"},"15102":{"name":"","key":"10501PM","id":"15102","active":"false"},"14013":{"name":"","key":"10468PM","id":"14013","active":"false"},"15101":{"name":"","key":"NTCASID","id":"15101","active":"false"},"14010":{"name":"","key":"10465PM","id":"14010","active":"false"},"14011":{"name":"","key":"10466PM","id":"14011","active":"false"},"14016":{"name":"","key":"10275PM","id":"14016","active":"false"},"15105":{"name":"","key":"10515PM","id":"15105","active":"false"},"14014":{"name":"","key":"10471PM","id":"14014","active":"false"},"15104":{"name":"","key":"10522PM","id":"15104","active":"false"},"14015":{"name":"","key":"10473PM","id":"14015","active":"false"},"15103":{"name":"","key":"10519PM","id":"15103","active":"false"},"19702":{"name":"","key":"10956PM","id":"19702","active":"false"},"19701":{"name":"","key":"10920","id":"19701","active":"false"},"19703":{"name":"","key":"10919","id":"19703","active":"false"},"16202":{"name":"","key":"10587PM","id":"16202","active":"false"},"16201":{"name":"","key":"10583PM","id":"16201","active":"false"},"16200":{"name":"","key":"10573","id":"16200","active":"false"},"20700":{"name":"","key":"F10891","id":"20700","active":"false"},"10900":{"name":"","key":"10194","id":"10900","active":"false"},"16206":{"name":"","key":"10591PM","id":"16206","active":"false"},"16205":{"name":"","key":"10590PM","id":"16205","active":"false"},"16204":{"name":"","key":"10589PM","id":"16204","active":"false"},"16203":{"name":"","key":"10588PM","id":"16203","active":"false"},"16208":{"name":"","key":"10593PM","id":"16208","active":"false"},"16207":{"name":"","key":"10592PM","id":"16207","active":"false"},"17500":{"name":"","key":"10681","id":"17500","active":"false"},"17509":{"name":"","key":"10701PM","id":"17509","active":"false"},"17505":{"name":"","key":"MTU","id":"17505","active":"false"},"17506":{"name":"","key":"10682PM","id":"17506","active":"false"},"17507":{"name":"","key":"10691PM","id":"17507","active":"false"},"17508":{"name":"","key":"10693PM","id":"17508","active":"false"},"17501":{"name":"","key":"10689PM","id":"17501","active":"false"},"17502":{"name":"","key":"10690PM","id":"17502","active":"false"},"17503":{"name":"","key":"CQ02","id":"17503","active":"false"},"17504":{"name":"","key":"CQ03","id":"17504","active":"false"},"17510":{"name":"","key":"10680","id":"17510","active":"false"},"17511":{"name":"","key":"10692PM","id":"17511","active":"false"},"18600":{"name":"","key":"10744","id":"18600","active":"false"},"14001":{"name":"","key":"9174","id":"14001","active":"false"},"14002":{"name":"","key":"10167PM","id":"14002","active":"false"},"14000":{"name":"","key":"10472PM","id":"14000","active":"false"},"14005":{"name":"","key":"10290PM","id":"14005","active":"false"},"18605":{"name":"","key":"10779","id":"18605","active":"false"},"18606":{"name":"","key":"10810PM","id":"18606","active":"false"},"14006":{"name":"","key":"10295PM","id":"14006","active":"false"},"14003":{"name":"","key":"10196PM","id":"14003","active":"false"},"18607":{"name":"","key":"10808PM","id":"18607","active":"false"},"14004":{"name":"","key":"10286PM","id":"14004","active":"false"},"14009":{"name":"","key":"10352PM","id":"14009","active":"false"},"18601":{"name":"","key":"10753","id":"18601","active":"false"},"17512":{"name":"","key":"10689","id":"17512","active":"false"},"18602":{"name":"","key":"10795PM","id":"18602","active":"false"},"14007":{"name":"","key":"10346PM","id":"14007","active":"false"},"18603":{"name":"","key":"10799PM","id":"18603","active":"false"},"18604":{"name":"","key":"10802PM","id":"18604","active":"false"},"14008":{"name":"","key":"10450PM","id":"14008","active":"false"}}};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_PROJECTS_ACTIVE']=null;console.log('JEditor: config error in [JEDITOR_PROJECTS_ACTIVE].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_TEMPLATE_1']={"name":"JEDITOR_TEMPLATES_TEMPLATE_1","label":"Task","value":"%3Cdiv%20style%3D\u0027background-color%3A%20%23E0EFFF%3Bborder%3A%201px%20dashed%20%23ccc%3Bmargin%3A%201em%3B\u0027%20class%3D\u0027jePanel_blue\u0027%3E%3Cdiv%20style%3D\u0027border-bottom-width%3A%201px%3Bborder-bottom-style%3A%20dashed%3Bborder-bottom-color%3A%20%23ccc%3Btext-align%3A%20center%3Bfont-weight%3A%20bold%3Bpadding%3A%20.3em%3B\u0027%20class%3D\u0027jePanelHeader\u0027%3EBRIEF%3A%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027padding%3A%20.5em%202em%20.5em%202em%3B\u0027%20class%3D\u0027jePanelContent\u0027%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027background-color%3A%20%23ffffce%3Bborder%3A%201px%20dashed%20%23ccc%3Bmargin%3A%201em%3B\u0027%20class%3D\u0027jePanel_yell\u0027%3E%3Cdiv%20style%3D\u0027border-bottom-width%3A%201px%3Bborder-bottom-style%3A%20dashed%3Bborder-bottom-color%3A%20%23ccc%3Bbackground-color%3A%20%23f7d6c1%3Btext-align%3A%20center%3Bfont-weight%3A%20bold%3Bpadding%3A%20.3em%3B\u0027%20class%3D\u0027jePanelHeader_red\u0027%3ETASK%3A%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027padding%3A%20.5em%202em%20.5em%202em%3B\u0027%20class%3D\u0027jePanelContent\u0027%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027background-color%3A%20%23E0EFFF%3Bborder%3A%201px%20dashed%20%23ccc%3Bmargin%3A%201em%3B\u0027%20class%3D\u0027jePanel_blue\u0027%3E%3Cdiv%20style%3D\u0027border-bottom-width%3A%201px%3Bborder-bottom-style%3A%20dashed%3Bborder-bottom-color%3A%20%23ccc%3Btext-align%3A%20center%3Bfont-weight%3A%20bold%3Bpadding%3A%20.3em%3B\u0027%20class%3D\u0027jePanelHeader\u0027%3EADDITIONAL%3A%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027padding%3A%20.5em%202em%20.5em%202em%3B\u0027%20class%3D\u0027jePanelContent\u0027%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E","description":"A%20pre-designed%20sample%20template%20for%20Tasks.","params":{"image":"template1.gif","sorted":0.0,"projects":{"allProjects":true,"projects":[]},"imageJira":"/s/en_US-d5txvl-418945332/849/36/1.5.40/_/download/resources/com.jiraeditor.jeditor:com.jiraeditor.jeditor.static/static/plugins/templates/templates/images/template1.gif"},"type":"template"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_TEMPLATE_1']=null;console.log('JEditor: config error in [JEDITOR_TEMPLATES_TEMPLATE_1].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_TEMPLATE_2']={"name":"JEDITOR_TEMPLATES_TEMPLATE_2","label":"Bug","value":"%3Cdiv%20style%3D\u0027background-color%3A%20%23E0EFFF%3Bborder%3A%201px%20dashed%20%23ccc%3Bmargin%3A%201em%3B\u0027%20class%3D\u0027jePanel_blue\u0027%3E%3Cdiv%20style%3D\u0027border-bottom-width%3A%201px%3Bborder-bottom-style%3A%20dashed%3Bborder-bottom-color%3A%20%23ccc%3Btext-align%3A%20center%3Bfont-weight%3A%20bold%3Bpadding%3A%20.3em%3B\u0027%20class%3D\u0027jePanelHeader\u0027%3EBRIEF%3A%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027padding%3A%20.5em%202em%20.5em%202em%3B\u0027%20class%3D\u0027jePanelContent\u0027%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027background-color%3A%20%23ffffce%3Bborder%3A%201px%20dashed%20%23ccc%3Bmargin%3A%201em%3B\u0027%20class%3D\u0027jePanel_yell\u0027%3E%3Cdiv%20style%3D\u0027border-bottom-width%3A%201px%3Bborder-bottom-style%3A%20dashed%3Bborder-bottom-color%3A%20%23ccc%3Bbackground-color%3A%20%23f7d6c1%3Btext-align%3A%20center%3Bfont-weight%3A%20bold%3Bpadding%3A%20.3em%3B\u0027%20class%3D\u0027jePanelHeader_red\u0027%3ESTEPS%20AND%20RESULTS%3A%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027padding%3A%20.5em%202em%20.5em%202em%3B\u0027%20class%3D\u0027jePanelContent\u0027%3E%3Col%3E%3Cli%3E%26nbsp%3B%3C%2Fli%3E%3Cli%3E%26nbsp%3B%3C%2Fli%3E%3Cli%3E%26nbsp%3B%3C%2Fli%3E%3C%2Fol%3E%3Chr%20%2F%3E%3Cul%3E%3Cli%3EACTUAL%20RESULT%3A%20%26nbsp%3B%3C%2Fli%3E%3Cli%3EEXPECTED%20RESULT%3A%20%26nbsp%3B%3C%2Fli%3E%3C%2Ful%3E%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027background-color%3A%20%23ffffce%3Bborder%3A%201px%20dashed%20%23ccc%3Bmargin%3A%201em%3B\u0027%20class%3D\u0027jePanel_yell\u0027%3E%3Cdiv%20style%3D\u0027border-bottom-width%3A%201px%3Bborder-bottom-style%3A%20dashed%3Bborder-bottom-color%3A%20%23ccc%3Bbackground-color%3A%20%23f7d6c1%3Btext-align%3A%20center%3Bfont-weight%3A%20bold%3Bpadding%3A%20.3em%3B\u0027%20class%3D\u0027jePanelHeader_red\u0027%3ESCREENSHOT%20%2F%20FAULT%20DETAILS%3A%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027padding%3A%20.5em%202em%20.5em%202em%3B\u0027%20class%3D\u0027jePanelContent\u0027%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027background-color%3A%20%23E0EFFF%3Bborder%3A%201px%20dashed%20%23ccc%3Bmargin%3A%201em%3B\u0027%20class%3D\u0027jePanel_blue\u0027%3E%3Cdiv%20style%3D\u0027border-bottom-width%3A%201px%3Bborder-bottom-style%3A%20dashed%3Bborder-bottom-color%3A%20%23ccc%3Btext-align%3A%20center%3Bfont-weight%3A%20bold%3Bpadding%3A%20.3em%3B\u0027%20class%3D\u0027jePanelHeader\u0027%3EADDITIONAL%20INFO%3A%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027padding%3A%20.5em%202em%20.5em%202em%3B\u0027%20class%3D\u0027jePanelContent\u0027%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E","description":"A%20pre-designed%20sample%20template%20for%20Bugs.","params":{"image":"template1.gif","sorted":1.0,"projects":{"allProjects":true,"projects":[]},"imageJira":"/s/en_US-d5txvl-418945332/849/36/1.5.40/_/download/resources/com.jiraeditor.jeditor:com.jiraeditor.jeditor.static/static/plugins/templates/templates/images/template1.gif"},"type":"template"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_TEMPLATE_2']=null;console.log('JEditor: config error in [JEDITOR_TEMPLATES_TEMPLATE_2].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_TEMPLATE_3']={"name":"JEDITOR_TEMPLATES_TEMPLATE_3","label":"Folding%20box","value":"%3Cdiv%20class%3D\u0027jefolding\u0027%3E%3Cdiv%20style%3D\u0027background-color%3A%20%23E0EFFF%3Bborder%3A%201px%20solid%20%239EB6D4%3Bpadding%3A%20.5em%201em%20.5em%202em%3Bmargin-top%3A20px%3Bfont-size%3A15px%3Bfont-family%3Aarial%3Bfont-weight%3Abold%3B\u0027%20class%3D\u0027jefolding_head%20jefolding_head_show\u0027%3E%3Cp%20style%3D\u0027margin%3A%200%3B\u0027%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027background-color%3A%20%23FAFAFF%3Bborder-left%3A%201px%20solid%20%239EB6D4%3Bborder-bottom%3A%201px%20solid%20%239EB6D4%3Bborder-right%3A%201px%20solid%20%239EB6D4%3Bpadding%3A%20.5em%201em%20.5em%202.5em%3B\u0027%20class%3D\u0027jefolding_main\u0027%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3C%2Fdiv%3E","description":"A%20folding%20block%20with%20header%20and%20body%20sections.","params":{"image":"template1.gif","sorted":2.0,"projects":{"allProjects":true,"projects":[]},"imageJira":"/s/en_US-d5txvl-418945332/849/36/1.5.40/_/download/resources/com.jiraeditor.jeditor:com.jiraeditor.jeditor.static/static/plugins/templates/templates/images/template1.gif"},"type":"template"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_TEMPLATE_3']=null;console.log('JEditor: config error in [JEDITOR_TEMPLATES_TEMPLATE_3].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_TEMPLATE_4']={"name":"JEDITOR_TEMPLATES_TEMPLATE_4","label":"Folding%20minimalist","value":"%3Cdiv%20class%3D\u0027jefolding\u0027%3E%3Cdiv%20style%3D\u0027border%3A%201px%20solid%20%23ccc%3Bpadding%3A%20.5em%201em%20.5em%202em%3Bmargin-top%3A20px%3Bfont-size%3A15px%3Bfont-family%3Aarial%3Bfont-weight%3Abold%3B\u0027%20class%3D\u0027jefolding_head_clean%20jefolding_head_show\u0027%3E%3Cp%20style%3D\u0027margin%3A%200%3B\u0027%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3Cdiv%20style%3D\u0027border-left%3A%201px%20solid%20%23ccc%3Bborder-bottom%3A%201px%20solid%20%23ccc%3Bborder-right%3A%201px%20solid%20%23ccc%3Bpadding%3A%20.5em%201em%20.5em%202.5em%3B\u0027%20class%3D\u0027jefolding_main_clean\u0027%3E%3Cp%3E%26nbsp%3B%3C%2Fp%3E%3C%2Fdiv%3E%3C%2Fdiv%3E","description":"A%20folding%20block%20with%20header%20and%20body%20sections%2C%20clean%20style.","params":{"image":"template1.gif","sorted":3.0,"projects":{"allProjects":true,"projects":[]},"imageJira":"/s/en_US-d5txvl-418945332/849/36/1.5.40/_/download/resources/com.jiraeditor.jeditor:com.jiraeditor.jeditor.static/static/plugins/templates/templates/images/template1.gif"},"type":"template"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_TEMPLATE_4']=null;console.log('JEditor: config error in [JEDITOR_TEMPLATES_TEMPLATE_4].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_STYLES_CONFIG']=[{"name":"Info","element":"div","styles":{"background-color":"#E0EFFF","padding":".5em 1em .5em 2.5em","border-radius":".3em","border":"1px solid #9EB6D4"},"attributes":{"class":"jePanel_info"}},{"name":"Warning","element":"div","styles":{"background-color":"#FFE1E0","padding":".5em 1em .5em 2.5em","border-radius":".3em","border":"1px solid #D4A19E"},"attributes":{"class":"jePanel_warning"}},{"name":"Idea","element":"div","styles":{"background-color":"#FFFDE0","padding":".5em 1em .5em 2.5em","border-radius":".3em","border":"1px solid #D4D39E"},"attributes":{"class":"jePanel_idea"}},{"name":"Grey","element":"div","styles":{"background-color":"#ECECEC","padding":".5em 1em .5em 1em","border-radius":".3em","border":"1px solid #B4B4B4"},"attributes":{"class":"jePanel_grey"}},{"name":"Dashed","element":"div","styles":{"padding":".5em 1em .5em 1em","border-radius":".3em","border":"1px dashed #B4B4B4"},"attributes":{"class":"jePanel_dashed"}},{"name":"Preformatted","element":"pre","styles":{"background-color":"#F7F7F7","border":"1px solid #D7D7D7","padding":".5em 1em .5em 1em"}},{"name":"Marker:Yellow","element":"span","styles":{"display":"inline","background-color":"#FFFF8C","width":"auto"}},{"name":"Marker:Green","element":"span","styles":{"display":"inline","background-color":"#8CFF8C","width":"auto"}},{"name":"ImageonLeft","element":"img","attributes":{"style":"padding:5px;margin-right:5px","border":"2","align":"left"}},{"name":"ImageonRight","element":"img","attributes":{"style":"padding:5px;margin-left:5px","border":"2","align":"right"}},{"name":"Clean","element":"table","styles":{"margin":"15px","border-collapse":"collapse","width":"480px"},"attributes":{"class":"jeClean","cellpadding":"9"}},{"name":"Box","element":"table","styles":{"margin":"15px","border-collapse":"collapse","width":"480px"},"attributes":{"class":"jeBox","cellpadding":"9"}},{"name":"SquareBulletedList","element":"ul","styles":{"list-style-type":"square"}}];} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_STYLES_CONFIG']=null;console.log('JEditor: config error in [JSDD].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_FORMAT_CONFIG']={"Basic":{"name":"Basic","element":"p"},"Heading1":{"name":"Heading 1","element":"h1"},"Heading2":{"name":"Heading 2","element":"h2"},"Heading3":{"name":"Heading 3","element":"h3"},"Heading4":{"name":"Heading 4","element":"h4"},"Heading5":{"name":"Heading 5","element":"h5"},"Heading6":{"name":"Heading 6","element":"h6"},"Quote":{"name":"Quote","element":"blockquote","styles":{"color":"#707070"}},"Important":{"name":"Important","element":"i","styles":{"color":"#4F81BD","font":"italic 12pt sans-serif"}},"Attention":{"name":"Attention","element":"u","styles":{"color":"#C0504D","font":"small-caps 12pt sans-serif"}},"Capital":{"name":"Capital","element":"b","styles":{"font-family":"sans-serif","text-transform":"uppercase"}},"pre":{"name":"Formatted","element":"pre"},"deleted":{"name":"Deleted","element":"del"},"small":{"name":"Small","element":"small","styles":{"color":"#707070"}}};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_FORMAT_CONFIG']=null;console.log('JEditor: config error in [JFRMDD].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_CONFIG']={"Calibri":"Calibri, Candara, Segoe, sans-serif;","Arial":"Arial, Helvetica, sans-serif;","Comic Sans MS":"Comic Sans MS, cursive;","Courier New":"Courier New, Courier, monospace;","Georgia":"Georgia, serif;","Lucida Sans Unicode":"Lucida Sans Unicode, Lucida Grande, sans-serif;","Tahoma":"Tahoma, Geneva, sans-serif;","Times New Roman":"Times New Roman, Times, serif;","Trebuchet MS":"Trebuchet MS, Helvetica, sans-serif;","Verdana":"Verdana, Geneva, sans-serif;"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_CONFIG']=null;console.log('JEditor: config error in [JFDD].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_SIZE_CONFIG']={"8":"8pt","9":"9pt","10":"10pt","11":"11pt","12":"12pt","14":"14pt","16":"16pt","18":"18pt","20":"20pt","22":"22pt","24":"24pt","26":"26pt","28":"28pt","36":"36pt","48":"48pt","72":"72pt"};} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_SIZE_CONFIG']=null;console.log('JEditor: config error in [JFSDD].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_FULL_TOOLBAR_CONFIG']=["PasteText","Undo","Redo","Restore","NumberedList","BulletedList","Outdent","Indent","JustifyLeft","JustifyCenter","JustifyRight","JustifyBlock","BidiRtl","Find","Replace","Code","Scayt","Maximize","Preview","Print","Source","Form","Checkbox","Select","Button","ImageButton","Bold","Underline","Italic","Subscript","TextColor","BGColor","Styles","Format","Font","FontSize","Templates","Smiley","SpecialChar","Link","Image","Flash","Table","HorizontalRule","PageBreak","Iframe","Mathjax","RemoveFormat"];} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_FULL_TOOLBAR_CONFIG']=null;console.log('JEditor: config error in [JTBF].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_MINI_TOOLBAR_CONFIG']=["Bold","Underline","Italic","TextColor","BGColor","NumberedList","BulletedList","JustifyLeft","JustifyCenter","JustifyRight","Code","Styles","Templates","Smiley","Link","Image","Table","RemoveFormat"];} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_MINI_TOOLBAR_CONFIG']=null;console.log('JEditor: config error in [JTBM].', ex);}
try{JEDITOR_CONFIGURATION_JIRA['JEDITOR_REPLACE_RULES']=[];} catch (ex) {JEDITOR_CONFIGURATION_JIRA['JEDITOR_REPLACE_RULES']=null;console.log('JEditor: config error in [JRR].', ex);}


try{window.JEDITOR_PROJECT_CATEGORIES=[
  {
    "key": "ASU1",
    "id": 16900,
    "categoryId": 13201
  },
  {
    "key": "MTU",
    "id": 17505,
    "categoryId": 13201
  },
  {
    "key": "A10900",
    "id": 19533,
    "categoryId": 10112
  },
  {
    "key": "ASUAPP",
    "id": 17314,
    "categoryId": 10205
  },
  {
    "key": "ASU001",
    "id": 17307,
    "categoryId": 10205
  },
  {
    "key": "VERIZON",
    "id": 21401,
    "categoryId": 14100
  },
  {
    "key": "C10709",
    "id": 19301,
    "categoryId": 10325
  },
  {
    "key": "CQ01",
    "id": 17405,
    "categoryId": 10124
  },
  {
    "key": "CQ02",
    "id": 17503,
    "categoryId": 10124
  },
  {
    "key": "CQ03",
    "id": 17504,
    "categoryId": 10124
  },
  {
    "key": "CQ04",
    "id": 17607,
    "categoryId": 10124
  },
  {
    "key": "CQ05",
    "id": 17612,
    "categoryId": 10124
  },
  {
    "key": "CQ06",
    "id": 17613,
    "categoryId": 10124
  },
  {
    "key": "CQ07",
    "id": 17614,
    "categoryId": 10124
  },
  {
    "key": "CQ08",
    "id": 17615,
    "categoryId": 10124
  },
  {
    "key": "CQ09",
    "id": 17616,
    "categoryId": 10124
  },
  {
    "key": "FAE14",
    "id": 20026,
    "categoryId": 12400
  },
  {
    "key": "FAE17",
    "id": 20030,
    "categoryId": 12400
  },
  {
    "key": "FAE23",
    "id": 22400,
    "categoryId": 12400
  },
  {
    "key": "FAE22",
    "id": 20203,
    "categoryId": 12400
  },
  {
    "key": "FAE1",
    "id": 20014,
    "categoryId": 12400
  },
  {
    "key": "FAE21",
    "id": 20202,
    "categoryId": 12400
  },
  {
    "key": "FAE15",
    "id": 20027,
    "categoryId": 12400
  },
  {
    "key": "FAE13",
    "id": 20025,
    "categoryId": 12400
  },
  {
    "key": "FAE",
    "id": 20200,
    "categoryId": 12400
  },
  {
    "key": "FAE9",
    "id": 20021,
    "categoryId": 12400
  },
  {
    "key": "FAE2",
    "id": 20015,
    "categoryId": 12400
  },
  {
    "key": "FAE12",
    "id": 20024,
    "categoryId": 12400
  },
  {
    "key": "FAE25",
    "id": 22402,
    "categoryId": 12400
  },
  {
    "key": "FAE7",
    "id": 20019,
    "categoryId": 12400
  },
  {
    "key": "FAE6",
    "id": 20018,
    "categoryId": 12400
  },
  {
    "key": "FAE5",
    "id": 20017,
    "categoryId": 12400
  },
  {
    "key": "FAE8",
    "id": 20020,
    "categoryId": 12400
  },
  {
    "key": "FAE16",
    "id": 20028,
    "categoryId": 12400
  },
  {
    "key": "FAE10",
    "id": 20022,
    "categoryId": 12400
  },
  {
    "key": "FAE19",
    "id": 20032,
    "categoryId": 12400
  },
  {
    "key": "FAE24",
    "id": 22401,
    "categoryId": 12400
  },
  {
    "key": "FAE18",
    "id": 20031,
    "categoryId": 12400
  },
  {
    "key": "FAE20",
    "id": 20102,
    "categoryId": 12400
  },
  {
    "key": "FAE11",
    "id": 20023,
    "categoryId": 12400
  },
  {
    "key": "FTK",
    "id": 21904,
    "categoryId": 12100
  },
  {
    "key": "FAE4",
    "id": 20016,
    "categoryId": 12400
  },
  {
    "key": "FAE3",
    "id": 20013,
    "categoryId": 12400
  },
  {
    "key": "FAEZZ",
    "id": 20029,
    "categoryId": 12400
  },
  {
    "key": "FAE26",
    "id": 22403,
    "categoryId": 12400
  },
  {
    "key": "FAE27",
    "id": 22404,
    "categoryId": 12400
  },
  {
    "key": "TSTELUS",
    "id": 23300,
    "categoryId": 12700
  },
  {
    "key": "AIRTEL",
    "id": 27201,
    "categoryId": 12700
  },
  {
    "key": "BEELINE",
    "id": 25202,
    "categoryId": 12700
  },
  {
    "key": "BE",
    "id": 25802,
    "categoryId": 12700
  },
  {
    "key": "MG",
    "id": 29901,
    "categoryId": 12700
  },
  {
    "key": "BYTELMG",
    "id": 26400,
    "categoryId": 12700
  },
  {
    "key": "CHART",
    "id": 25001,
    "categoryId": 12700
  },
  {
    "key": "CHARTEMTA",
    "id": 26402,
    "categoryId": 12700
  },
  {
    "key": "CHARTE",
    "id": 26403,
    "categoryId": 12700
  },
  {
    "key": "CHARTPON",
    "id": 26404,
    "categoryId": 12700
  },
  {
    "key": "CHT",
    "id": 24607,
    "categoryId": 12700
  },
  {
    "key": "AVCLARO",
    "id": 23901,
    "categoryId": 12700
  },
  {
    "key": "CLAROARC",
    "id": 24005,
    "categoryId": 12700
  },
  {
    "key": "CO",
    "id": 23701,
    "categoryId": 12700
  },
  {
    "key": "DBR",
    "id": 24707,
    "categoryId": 12700
  },
  {
    "key": "DISH",
    "id": 26809,
    "categoryId": 12700
  },
  {
    "key": "DTE",
    "id": 26811,
    "categoryId": 12700
  },
  {
    "key": "ETI",
    "id": 24306,
    "categoryId": 12700
  },
  {
    "key": "KPN99",
    "id": 24903,
    "categoryId": 12700
  },
  {
    "key": "MEDMM",
    "id": 25220,
    "categoryId": 12700
  },
  {
    "key": "T7",
    "id": 26600,
    "categoryId": 12700
  },
  {
    "key": "MTS",
    "id": 25201,
    "categoryId": 12700
  },
  {
    "key": "OPTUSOS",
    "id": 25219,
    "categoryId": 12700
  },
  {
    "key": "LTOSP",
    "id": 23002,
    "categoryId": 12700
  },
  {
    "key": "RIL",
    "id": 25303,
    "categoryId": 12700
  },
  {
    "key": "ROS",
    "id": 24702,
    "categoryId": 12700
  },
  {
    "key": "SHAW",
    "id": 25200,
    "categoryId": 12700
  },
  {
    "key": "ST",
    "id": 23703,
    "categoryId": 12700
  },
  {
    "key": "SKY",
    "id": 24801,
    "categoryId": 12700
  },
  {
    "key": "SKYEMS",
    "id": 25203,
    "categoryId": 12700
  },
  {
    "key": "SPARKSP",
    "id": 24007,
    "categoryId": 12700
  },
  {
    "key": "STC",
    "id": 25221,
    "categoryId": 12700
  },
  {
    "key": "LSW",
    "id": 27800,
    "categoryId": 12700
  },
  {
    "key": "FTEST",
    "id": 22801,
    "categoryId": 12700
  },
  {
    "key": "TMO",
    "id": 24608,
    "categoryId": 12700
  },
  {
    "key": "TAAMKEEPER",
    "id": 23003,
    "categoryId": 12700
  },
  {
    "key": "TAAM",
    "id": 24704,
    "categoryId": 12700
  },
  {
    "key": "TE",
    "id": 23903,
    "categoryId": 12700
  },
  {
    "key": "TELSTRATA",
    "id": 24006,
    "categoryId": 12700
  },
  {
    "key": "TSBT3",
    "id": 28703,
    "categoryId": 12700
  },
  {
    "key": "TSBTLITE",
    "id": 28702,
    "categoryId": 12700
  },
  {
    "key": "TSSD",
    "id": 29005,
    "categoryId": 12700
  },
  {
    "key": "TS",
    "id": 28101,
    "categoryId": 12700
  },
  {
    "key": "TPG",
    "id": 28202,
    "categoryId": 12700
  },
  {
    "key": "TK",
    "id": 24307,
    "categoryId": 12700
  },
  {
    "key": "VTAL",
    "id": 29006,
    "categoryId": 12700
  },
  {
    "key": "VR",
    "id": 23206,
    "categoryId": 12700
  },
  {
    "key": "VMO2",
    "id": 29403,
    "categoryId": 12700
  },
  {
    "key": "VODAFONE",
    "id": 29501,
    "categoryId": 12700
  },
  {
    "key": "ZZ",
    "id": 25401,
    "categoryId": 12700
  },
  {
    "key": "ASU",
    "id": 19200,
    "categoryId": 11900
  },
  {
    "key": "BT",
    "id": 19201,
    "categoryId": 11900
  },
  {
    "key": "BYTEL",
    "id": 22407,
    "categoryId": 11900
  },
  {
    "key": "CHARTER",
    "id": 19901,
    "categoryId": 11900
  },
  {
    "key": "CLARO",
    "id": 20008,
    "categoryId": 11900
  },
  {
    "key": "COMCAST",
    "id": 22405,
    "categoryId": 11900
  },
  {
    "key": "EE",
    "id": 19202,
    "categoryId": 11900
  },
  {
    "key": "MED",
    "id": 21901,
    "categoryId": 11900
  },
  {
    "key": "OSP",
    "id": 19203,
    "categoryId": 11900
  },
  {
    "key": "SALT",
    "id": 19100,
    "categoryId": 11900
  },
  {
    "key": "SINGTEL",
    "id": 19300,
    "categoryId": 11900
  },
  {
    "key": "TCT",
    "id": 22103,
    "categoryId": 11900
  },
  {
    "key": "TA",
    "id": 22603,
    "categoryId": 11900
  },
  {
    "key": "TELMEX",
    "id": 21403,
    "categoryId": 11900
  },
  {
    "key": "TELSTRA",
    "id": 22800,
    "categoryId": 11900
  },
  {
    "key": "TELUS",
    "id": 22406,
    "categoryId": 11900
  },
  {
    "key": "FT",
    "id": 21900,
    "categoryId": 12100
  },
  {
    "key": "F10956",
    "id": 20402,
    "categoryId": 12304
  },
  {
    "key": "ASU3",
    "id": 18202,
    "categoryId": 13201
  },
  {
    "key": "ASU5",
    "id": 18204,
    "categoryId": 13201
  },
  {
    "key": "ASU2",
    "id": 17104,
    "categoryId": 13201
  },
  {
    "key": "ASU4",
    "id": 18203,
    "categoryId": 13201
  },
  {
    "key": "F10779",
    "id": 18809,
    "categoryId": 10801
  },
  {
    "key": "F10811",
    "id": 19402,
    "categoryId": 10801
  },
  {
    "key": "F10516",
    "id": 19916,
    "categoryId": 10801
  },
  {
    "key": "F10713",
    "id": 19917,
    "categoryId": 10801
  },
  {
    "key": "F10748",
    "id": 19919,
    "categoryId": 10801
  },
  {
    "key": "F10553",
    "id": 19915,
    "categoryId": 10801
  },
  {
    "key": "F10775",
    "id": 19909,
    "categoryId": 10801
  },
  {
    "key": "F10754",
    "id": 18412,
    "categoryId": 10124
  },
  {
    "key": "F10754T",
    "id": 18805,
    "categoryId": 10124
  },
  {
    "key": "F10549",
    "id": 19913,
    "categoryId": 10801
  },
  {
    "key": "F10433",
    "id": 19912,
    "categoryId": 10801
  },
  {
    "key": "F10545",
    "id": 19918,
    "categoryId": 10801
  },
  {
    "key": "F10891",
    "id": 20700,
    "categoryId": 11601
  },
  {
    "key": "F11047",
    "id": 21200,
    "categoryId": 10603
  },
  {
    "key": "J6SKD",
    "id": 26808,
    "categoryId": 13200
  },
  {
    "key": "MM10988",
    "id": 20300,
    "categoryId": 12309
  },
  {
    "key": "NTEST1",
    "id": 22802,
    "categoryId": 12100
  },
  {
    "key": "NTEST2",
    "id": 22803,
    "categoryId": 12100
  },
  {
    "key": "OLD10855",
    "id": 23204,
    "categoryId": 10321
  },
  {
    "key": "OLD10854",
    "id": 23205,
    "categoryId": 10321
  },
  {
    "key": "PM1",
    "id": 14306,
    "categoryId": 11201
  },
  {
    "key": "PM2",
    "id": 14307,
    "categoryId": 11201
  },
  {
    "key": "10619",
    "id": 16708,
    "categoryId": 11300
  },
  {
    "key": "SKD",
    "id": 24312,
    "categoryId": 13200
  },
  {
    "key": "STEST",
    "id": 24304,
    "categoryId": 12100
  },
  {
    "key": "ASU3S",
    "id": 18206,
    "categoryId": 13201
  },
  {
    "key": "ASU5S",
    "id": 18208,
    "categoryId": 13201
  },
  {
    "key": "ASU1S",
    "id": 18205,
    "categoryId": 13201
  },
  {
    "key": "ASU2S",
    "id": 17403,
    "categoryId": 13201
  },
  {
    "key": "ASU4S",
    "id": 18207,
    "categoryId": 13201
  },
  {
    "key": "F10830",
    "id": 19513,
    "categoryId": 10401
  },
  {
    "key": "10433TM",
    "id": 15205,
    "categoryId": 10801
  },
  {
    "key": "TELUS10714",
    "id": 18713,
    "categoryId": 10607
  },
  {
    "key": "TELUS11090",
    "id": 21801,
    "categoryId": 10607
  },
  {
    "key": "TELUS1109021",
    "id": 25402,
    "categoryId": 10607
  },
  {
    "key": "TELUS1109021R",
    "id": 26902,
    "categoryId": 10607
  },
  {
    "key": "TELUS11090MINI",
    "id": 25403,
    "categoryId": 10607
  },
  {
    "key": "TELUS11091",
    "id": 21800,
    "categoryId": 10607
  },
  {
    "key": "TELUS10706",
    "id": 17703,
    "categoryId": 10607
  },
  {
    "key": "SOUR",
    "id": 21902,
    "categoryId": 12100
  },
  {
    "key": "TAR",
    "id": 21903,
    "categoryId": 12100
  },
  {
    "key": "10234",
    "id": 11502,
    "categoryId": 10112
  },
  {
    "key": "9955",
    "id": 12223,
    "categoryId": 10294
  },
  {
    "key": "10393",
    "id": 13211,
    "categoryId": 10252
  },
  {
    "key": "10357",
    "id": 12219,
    "categoryId": 10401
  },
  {
    "key": "10283",
    "id": 11101,
    "categoryId": 10400
  },
  {
    "key": "10411",
    "id": 13506,
    "categoryId": 10294
  },
  {
    "key": "10465",
    "id": 16107,
    "categoryId": 10605
  },
  {
    "key": "10194",
    "id": 10900,
    "categoryId": 10304
  },
  {
    "key": "WRT",
    "id": 24101,
    "categoryId": 10325
  },
  {
    "key": "9879",
    "id": 12200,
    "categoryId": 10115
  },
  {
    "key": "10222",
    "id": 10500,
    "categoryId": 10258
  },
  {
    "key": "10243",
    "id": 10601,
    "categoryId": 10112
  },
  {
    "key": "10397",
    "id": 13100,
    "categoryId": 10258
  },
  {
    "key": "9994",
    "id": 11501,
    "categoryId": 10284
  },
  {
    "key": "10342",
    "id": 12600,
    "categoryId": 10284
  },
  {
    "key": "9613",
    "id": 24302,
    "categoryId": 10268
  },
  {
    "key": "9566",
    "id": 24301,
    "categoryId": 10268
  },
  {
    "key": "9697",
    "id": 12100,
    "categoryId": 10268
  },
  {
    "key": "10071",
    "id": 20208,
    "categoryId": 10268
  },
  {
    "key": "ASTER",
    "id": 13400,
    "categoryId": 13201
  },
  {
    "key": "AT",
    "id": 20010,
    "categoryId": 13201
  },
  {
    "key": "ATT",
    "id": 20011,
    "categoryId": 12100
  },
  {
    "key": "ATV",
    "id": 15602,
    "categoryId": 13201
  },
  {
    "key": "AUT",
    "id": 28903,
    "categoryId": 11201
  },
  {
    "key": "BAS",
    "id": 23801,
    "categoryId": -1
  },
  {
    "key": "20293",
    "id": 25223,
    "categoryId": 10325
  },
  {
    "key": "24799",
    "id": 25700,
    "categoryId": 13414
  },
  {
    "key": "CALTEST",
    "id": 29300,
    "categoryId": 13201
  },
  {
    "key": "26504",
    "id": 28200,
    "categoryId": 12104
  },
  {
    "key": "10920",
    "id": 19701,
    "categoryId": 12104
  },
  {
    "key": "23904",
    "id": 24602,
    "categoryId": 10325
  },
  {
    "key": "24613",
    "id": 24907,
    "categoryId": 13300
  },
  {
    "key": "23984",
    "id": 24901,
    "categoryId": 10401
  },
  {
    "key": "24913",
    "id": 25209,
    "categoryId": 12303
  },
  {
    "key": "25636",
    "id": 26503,
    "categoryId": 13300
  },
  {
    "key": "11115",
    "id": 26300,
    "categoryId": 10325
  },
  {
    "key": "26220",
    "id": 28500,
    "categoryId": 12602
  },
  {
    "key": "25984",
    "id": 27601,
    "categoryId": 10325
  },
  {
    "key": "26888",
    "id": 29007,
    "categoryId": 12104
  },
  {
    "key": "25644",
    "id": 27003,
    "categoryId": 12104
  },
  {
    "key": "25784",
    "id": 27304,
    "categoryId": 12104
  },
  {
    "key": "CHOP2",
    "id": 24402,
    "categoryId": 12100
  },
  {
    "key": "CHR",
    "id": 26901,
    "categoryId": 12700
  },
  {
    "key": "23868",
    "id": 24316,
    "categoryId": 12303
  },
  {
    "key": "10956",
    "id": 20100,
    "categoryId": 12304
  },
  {
    "key": "23508",
    "id": 23700,
    "categoryId": 12309
  },
  {
    "key": "10988",
    "id": 20101,
    "categoryId": 12309
  },
  {
    "key": "10971",
    "id": 21000,
    "categoryId": 12304
  },
  {
    "key": "20325",
    "id": 22901,
    "categoryId": 10401
  },
  {
    "key": "11024",
    "id": 21202,
    "categoryId": 12504
  },
  {
    "key": "10762",
    "id": 18901,
    "categoryId": 10325
  },
  {
    "key": "COMMON",
    "id": 11500,
    "categoryId": 10102
  },
  {
    "key": "20414",
    "id": 24003,
    "categoryId": 10321
  },
  {
    "key": "CHR2FM",
    "id": 24317,
    "categoryId": 10321
  },
  {
    "key": "CHR2FH",
    "id": 27001,
    "categoryId": 10321
  },
  {
    "key": "CHR2FQ",
    "id": 24318,
    "categoryId": 10321
  },
  {
    "key": "CHR2HP",
    "id": 24320,
    "categoryId": 10321
  },
  {
    "key": "CHR2ME",
    "id": 24319,
    "categoryId": 10321
  },
  {
    "key": "CROWN",
    "id": 27602,
    "categoryId": 10321
  },
  {
    "key": "FALCON1",
    "id": 26203,
    "categoryId": 10321
  },
  {
    "key": "TITAN1",
    "id": 25210,
    "categoryId": 10321
  },
  {
    "key": "TITAN1B",
    "id": 25211,
    "categoryId": 10321
  },
  {
    "key": "TITAN2",
    "id": 28001,
    "categoryId": 10321
  },
  {
    "key": "TITAN3",
    "id": 26202,
    "categoryId": 10321
  },
  {
    "key": "TITAN4",
    "id": 28002,
    "categoryId": 10321
  },
  {
    "key": "23519",
    "id": 24314,
    "categoryId": 10325
  },
  {
    "key": "CS",
    "id": 23802,
    "categoryId": -1
  },
  {
    "key": "DTNGSP",
    "id": 13704,
    "categoryId": 13201
  },
  {
    "key": "EA",
    "id": 21400,
    "categoryId": 11201
  },
  {
    "key": "EMS",
    "id": 17003,
    "categoryId": 13201
  },
  {
    "key": "26104",
    "id": 27501,
    "categoryId": 10303
  },
  {
    "key": "25876",
    "id": 27502,
    "categoryId": 10303
  },
  {
    "key": "26496",
    "id": 28300,
    "categoryId": 11806
  },
  {
    "key": "24881",
    "id": 27403,
    "categoryId": 10284
  },
  {
    "key": "26072",
    "id": 27402,
    "categoryId": 10284
  },
  {
    "key": "20122",
    "id": 22101,
    "categoryId": 10284
  },
  {
    "key": "26835",
    "id": 29003,
    "categoryId": 10304
  },
  {
    "key": "26280",
    "id": 28102,
    "categoryId": 12310
  },
  {
    "key": "25468",
    "id": 26802,
    "categoryId": 10124
  },
  {
    "key": "26428",
    "id": 28000,
    "categoryId": 10303
  },
  {
    "key": "26668",
    "id": 28406,
    "categoryId": 10303
  },
  {
    "key": "27160",
    "id": 29001,
    "categoryId": 10303
  },
  {
    "key": "FAEASID",
    "id": 23902,
    "categoryId": 11201
  },
  {
    "key": "FSD",
    "id": 23800,
    "categoryId": 12100
  },
  {
    "key": "10499",
    "id": 15402,
    "categoryId": 10800
  },
  {
    "key": "10529",
    "id": 15406,
    "categoryId": 11000
  },
  {
    "key": "24629",
    "id": 27301,
    "categoryId": 10304
  },
  {
    "key": "10677",
    "id": 17611,
    "categoryId": 10304
  },
  {
    "key": "10968",
    "id": 20201,
    "categoryId": 10294
  },
  {
    "key": "10969",
    "id": 23502,
    "categoryId": 10297
  },
  {
    "key": "11136",
    "id": 22503,
    "categoryId": 10304
  },
  {
    "key": "10900",
    "id": 19532,
    "categoryId": 10112
  },
  {
    "key": "20261",
    "id": 23203,
    "categoryId": 10283
  },
  {
    "key": "25892",
    "id": 28902,
    "categoryId": 10283
  },
  {
    "key": "10414",
    "id": 17001,
    "categoryId": 10325
  },
  {
    "key": "10474",
    "id": 16711,
    "categoryId": 10325
  },
  {
    "key": "10629",
    "id": 17000,
    "categoryId": 10325
  },
  {
    "key": "25820",
    "id": 27004,
    "categoryId": 13900
  },
  {
    "key": "25848",
    "id": 27700,
    "categoryId": 10800
  },
  {
    "key": "11106",
    "id": 22102,
    "categoryId": 10321
  },
  {
    "key": "25296",
    "id": 27202,
    "categoryId": 10283
  },
  {
    "key": "24780",
    "id": 24909,
    "categoryId": 12500
  },
  {
    "key": "20131",
    "id": 23600,
    "categoryId": 10283
  },
  {
    "key": "25572",
    "id": 27701,
    "categoryId": 10283
  },
  {
    "key": "24800",
    "id": 27702,
    "categoryId": 10283
  },
  {
    "key": "24160",
    "id": 24803,
    "categoryId": 10105
  },
  {
    "key": "26248",
    "id": 28501,
    "categoryId": 10325
  },
  {
    "key": "25564",
    "id": 27603,
    "categoryId": 10283
  },
  {
    "key": "11010",
    "id": 23301,
    "categoryId": 10325
  },
  {
    "key": "10858",
    "id": 22200,
    "categoryId": 10303
  },
  {
    "key": "10568",
    "id": 16105,
    "categoryId": 10303
  },
  {
    "key": "10691",
    "id": 17700,
    "categoryId": 10325
  },
  {
    "key": "23718",
    "id": 24200,
    "categoryId": 10112
  },
  {
    "key": "10871",
    "id": 20104,
    "categoryId": 10325
  },
  {
    "key": "10753",
    "id": 18601,
    "categoryId": 11805
  },
  {
    "key": "11084",
    "id": 22602,
    "categoryId": 10325
  },
  {
    "key": "10572",
    "id": 22500,
    "categoryId": 10507
  },
  {
    "key": "10942",
    "id": 20105,
    "categoryId": 10325
  },
  {
    "key": "HW",
    "id": 30100,
    "categoryId": 13201
  },
  {
    "key": "10644",
    "id": 17300,
    "categoryId": 11500
  },
  {
    "key": "IP",
    "id": 22900,
    "categoryId": 11900
  },
  {
    "key": "JTES",
    "id": 27000,
    "categoryId": 10105
  },
  {
    "key": "JIRAISSUE",
    "id": 29800,
    "categoryId": 13201
  },
  {
    "key": "10405",
    "id": 13401,
    "categoryId": 10702
  },
  {
    "key": "23698",
    "id": 24001,
    "categoryId": 12300
  },
  {
    "key": "23658",
    "id": 23900,
    "categoryId": 11000
  },
  {
    "key": "10970",
    "id": 21601,
    "categoryId": 10304
  },
  {
    "key": "10573",
    "id": 16200,
    "categoryId": 10602
  },
  {
    "key": "10578",
    "id": 16809,
    "categoryId": 10325
  },
  {
    "key": "MFG",
    "id": 19906,
    "categoryId": 13200
  },
  {
    "key": "10202",
    "id": 11800,
    "categoryId": 10321
  },
  {
    "key": "10177",
    "id": 10800,
    "categoryId": 10325
  },
  {
    "key": "10178",
    "id": 12300,
    "categoryId": 10303
  },
  {
    "key": "CPE",
    "id": 25206,
    "categoryId": 12300
  },
  {
    "key": "10066",
    "id": 11400,
    "categoryId": 10200
  },
  {
    "key": "10346",
    "id": 13210,
    "categoryId": 10205
  },
  {
    "key": "10400",
    "id": 13332,
    "categoryId": 10602
  },
  {
    "key": "10288",
    "id": 10801,
    "categoryId": 10294
  },
  {
    "key": "10333",
    "id": 14904,
    "categoryId": 10504
  },
  {
    "key": "10287",
    "id": 11700,
    "categoryId": 10200
  },
  {
    "key": "10067",
    "id": 17618,
    "categoryId": 10268
  },
  {
    "key": "NAI",
    "id": 29700,
    "categoryId": 13200
  },
  {
    "key": "NTCASID",
    "id": 15101,
    "categoryId": 11201
  },
  {
    "key": "OMCI",
    "id": 28303,
    "categoryId": 13201
  },
  {
    "key": "25824",
    "id": 27100,
    "categoryId": 12500
  },
  {
    "key": "25377",
    "id": 26803,
    "categoryId": 12500
  },
  {
    "key": "10255",
    "id": 12326,
    "categoryId": 10304
  },
  {
    "key": "10322",
    "id": 12400,
    "categoryId": 10506
  },
  {
    "key": "10546",
    "id": 19502,
    "categoryId": 10303
  },
  {
    "key": "10784",
    "id": 18804,
    "categoryId": 11702
  },
  {
    "key": "10868",
    "id": 27901,
    "categoryId": 10801
  },
  {
    "key": "10779",
    "id": 18605,
    "categoryId": 10801
  },
  {
    "key": "10587",
    "id": 16705,
    "categoryId": 11101
  },
  {
    "key": "10330",
    "id": 12500,
    "categoryId": 10502
  },
  {
    "key": "10413",
    "id": 13327,
    "categoryId": 10268
  },
  {
    "key": "10401",
    "id": 13214,
    "categoryId": 10502
  },
  {
    "key": "10685",
    "id": 17605,
    "categoryId": 10284
  },
  {
    "key": "10720",
    "id": 17707,
    "categoryId": 10801
  },
  {
    "key": "10524",
    "id": 15900,
    "categoryId": 10284
  },
  {
    "key": "26096",
    "id": 27600,
    "categoryId": 10284
  },
  {
    "key": "10671",
    "id": 17604,
    "categoryId": 10801
  },
  {
    "key": "25264",
    "id": 26302,
    "categoryId": 10801
  },
  {
    "key": "26040",
    "id": 27504,
    "categoryId": 10801
  },
  {
    "key": "24524",
    "id": 24706,
    "categoryId": 13100
  },
  {
    "key": "23643",
    "id": 24103,
    "categoryId": 10801
  },
  {
    "key": "20245",
    "id": 25304,
    "categoryId": 10303
  },
  {
    "key": "10995",
    "id": 24603,
    "categoryId": 10303
  },
  {
    "key": "10853",
    "id": 19508,
    "categoryId": 10801
  },
  {
    "key": "11058",
    "id": 21300,
    "categoryId": 10801
  },
  {
    "key": "10811",
    "id": 19302,
    "categoryId": 10801
  },
  {
    "key": "11032",
    "id": 21607,
    "categoryId": 12501
  },
  {
    "key": "10830",
    "id": 19105,
    "categoryId": 10401
  },
  {
    "key": "10895",
    "id": 21204,
    "categoryId": 10506
  },
  {
    "key": "25236",
    "id": 26500,
    "categoryId": 13100
  },
  {
    "key": "26952",
    "id": 28904,
    "categoryId": 13100
  },
  {
    "key": "27284",
    "id": 29101,
    "categoryId": 14214
  },
  {
    "key": "27036",
    "id": 28900,
    "categoryId": 10284
  },
  {
    "key": "25741",
    "id": 28003,
    "categoryId": 10303
  },
  {
    "key": "26300",
    "id": 28405,
    "categoryId": 10506
  },
  {
    "key": "24876",
    "id": 27404,
    "categoryId": 10284
  },
  {
    "key": "25944",
    "id": 27401,
    "categoryId": 10284
  },
  {
    "key": "20393",
    "id": 25100,
    "categoryId": 10401
  },
  {
    "key": "11154",
    "id": 22100,
    "categoryId": 10284
  },
  {
    "key": "11006",
    "id": 20206,
    "categoryId": 10325
  },
  {
    "key": "20318",
    "id": 28301,
    "categoryId": 10507
  },
  {
    "key": "26416",
    "id": 28201,
    "categoryId": 10284
  },
  {
    "key": "26706",
    "id": 28302,
    "categoryId": 10507
  },
  {
    "key": "25476",
    "id": 26804,
    "categoryId": 12310
  },
  {
    "key": "11091",
    "id": 21602,
    "categoryId": 10607
  },
  {
    "key": "24504",
    "id": 24703,
    "categoryId": 10284
  },
  {
    "key": "10714",
    "id": 18407,
    "categoryId": 10607
  },
  {
    "key": "10887",
    "id": 19529,
    "categoryId": 12201
  },
  {
    "key": "10666",
    "id": 17903,
    "categoryId": 11601
  },
  {
    "key": "10725",
    "id": 17900,
    "categoryId": 10507
  },
  {
    "key": "25908",
    "id": 28400,
    "categoryId": 10283
  },
  {
    "key": "9174",
    "id": 14001,
    "categoryId": 10105
  },
  {
    "key": "9808",
    "id": 13703,
    "categoryId": 10105
  },
  {
    "key": "11137",
    "id": 22301,
    "categoryId": 10325
  },
  {
    "key": "TBOX",
    "id": 22302,
    "categoryId": 10325
  },
  {
    "key": "10875",
    "id": 19305,
    "categoryId": 10506
  },
  {
    "key": "AVGOSDK",
    "id": 30000,
    "categoryId": 13201
  },
  {
    "key": "MTKSDK",
    "id": 30001,
    "categoryId": 13201
  },
  {
    "key": "SEC",
    "id": 24401,
    "categoryId": 13200
  },
  {
    "key": "SMAR",
    "id": 18209,
    "categoryId": 13201
  },
  {
    "key": "CRITICAL",
    "id": 12001,
    "categoryId": 11201
  },
  {
    "key": "STRATEGY",
    "id": 12000,
    "categoryId": 11201
  },
  {
    "key": "SWIV",
    "id": 24002,
    "categoryId": 13201
  },
  {
    "key": "TES",
    "id": 24708,
    "categoryId": 12700
  },
  {
    "key": "TES2",
    "id": 28705,
    "categoryId": 12700
  },
  {
    "key": "TPE",
    "id": 24008,
    "categoryId": 11201
  },
  {
    "key": "23499",
    "id": 24313,
    "categoryId": 10124
  },
  {
    "key": "26716",
    "id": 28404,
    "categoryId": 12804
  },
  {
    "key": "DRAGONCEI",
    "id": 28304,
    "categoryId": 12700
  },
  {
    "key": "VER",
    "id": 28800,
    "categoryId": 12700
  },
  {
    "key": "10404",
    "id": 13202,
    "categoryId": 10115
  },
  {
    "key": "9914",
    "id": 11100,
    "categoryId": 10115
  },
  {
    "key": "9981",
    "id": 11300,
    "categoryId": 10124
  },
  {
    "key": "9823",
    "id": 12801,
    "categoryId": 10112
  },
  {
    "key": "10498",
    "id": 15405,
    "categoryId": 11000
  },
  {
    "key": "10086",
    "id": 17619,
    "categoryId": 10268
  },
  {
    "key": "9883",
    "id": 11002,
    "categoryId": 10112
  },
  {
    "key": "10352",
    "id": 12220,
    "categoryId": 10401
  },
  {
    "key": "10452",
    "id": 14301,
    "categoryId": 10805
  },
  {
    "key": "10385",
    "id": 12800,
    "categoryId": 10400
  },
  {
    "key": "10368",
    "id": 13209,
    "categoryId": 10116
  },
  {
    "key": "10526",
    "id": 15307,
    "categoryId": 10801
  },
  {
    "key": "10717",
    "id": 17808,
    "categoryId": 10400
  },
  {
    "key": "11037",
    "id": 20900,
    "categoryId": 11806
  },
  {
    "key": "10188",
    "id": 11600,
    "categoryId": 10304
  },
  {
    "key": "10227",
    "id": 12224,
    "categoryId": 10294
  },
  {
    "key": "10539",
    "id": 15704,
    "categoryId": 10605
  },
  {
    "key": "10584",
    "id": 16810,
    "categoryId": 10205
  },
  {
    "key": "10654",
    "id": 17319,
    "categoryId": 10401
  },
  {
    "key": "10689",
    "id": 17512,
    "categoryId": 10294
  },
  {
    "key": "10527",
    "id": 15503,
    "categoryId": 10304
  },
  {
    "key": "25316",
    "id": 26502,
    "categoryId": 12208
  },
  {
    "key": "24451",
    "id": 25214,
    "categoryId": 12208
  },
  {
    "key": "10418",
    "id": 14100,
    "categoryId": 10258
  },
  {
    "key": "10608",
    "id": 17320,
    "categoryId": 11403
  },
  {
    "key": "10516",
    "id": 15000,
    "categoryId": 10801
  },
  {
    "key": "10713",
    "id": 17802,
    "categoryId": 10801
  },
  {
    "key": "10748",
    "id": 18518,
    "categoryId": 10801
  },
  {
    "key": "10264",
    "id": 11200,
    "categoryId": 10112
  },
  {
    "key": "10102",
    "id": 10600,
    "categoryId": 10315
  },
  {
    "key": "10611",
    "id": 17004,
    "categoryId": 10801
  },
  {
    "key": "10553",
    "id": 16001,
    "categoryId": 10801
  },
  {
    "key": "10905",
    "id": 19516,
    "categoryId": 10801
  },
  {
    "key": "10730",
    "id": 18201,
    "categoryId": 10801
  },
  {
    "key": "10775",
    "id": 18507,
    "categoryId": 10801
  },
  {
    "key": "11075",
    "id": 21203,
    "categoryId": 10801
  },
  {
    "key": "24843",
    "id": 25300,
    "categoryId": 11806
  },
  {
    "key": "RFQ11003",
    "id": 20800,
    "categoryId": 10325
  },
  {
    "key": "10299",
    "id": 12401,
    "categoryId": 10112
  },
  {
    "key": "10312",
    "id": 11901,
    "categoryId": 10284
  },
  {
    "key": "10114",
    "id": 11900,
    "categoryId": 10112
  },
  {
    "key": "10673",
    "id": 17902,
    "categoryId": 10205
  },
  {
    "key": "10458",
    "id": 14600,
    "categoryId": 10205
  },
  {
    "key": "VRV9510",
    "id": 14706,
    "categoryId": 10325
  },
  {
    "key": "10448",
    "id": 14803,
    "categoryId": 10304
  },
  {
    "key": "10754",
    "id": 18405,
    "categoryId": 10124
  },
  {
    "key": "TEL10754",
    "id": 18806,
    "categoryId": 10124
  },
  {
    "key": "10982",
    "id": 19914,
    "categoryId": 12300
  },
  {
    "key": "20145",
    "id": 22902,
    "categoryId": 10112
  },
  {
    "key": "SGCM",
    "id": 24102,
    "categoryId": 10112
  },
  {
    "key": "24398",
    "id": 24910,
    "categoryId": 12300
  },
  {
    "key": "23933",
    "id": 24308,
    "categoryId": 12301
  },
  {
    "key": "23723",
    "id": 25602,
    "categoryId": 12302
  },
  {
    "key": "25165",
    "id": 25800,
    "categoryId": 13401
  },
  {
    "key": "25164",
    "id": 25803,
    "categoryId": 13402
  },
  {
    "key": "24960",
    "id": 26812,
    "categoryId": 11804
  },
  {
    "key": "9518B2C",
    "id": 24701,
    "categoryId": 12301
  },
  {
    "key": "9518B2G",
    "id": 25601,
    "categoryId": 12302
  },
  {
    "key": "95I8B2M",
    "id": 26200,
    "categoryId": 13401
  },
  {
    "key": "9518B2N",
    "id": 26201,
    "categoryId": 13402
  },
  {
    "key": "10275",
    "id": 12700,
    "categoryId": 10115
  },
  {
    "key": "10814",
    "id": 23400,
    "categoryId": 10401
  },
  {
    "key": "10746",
    "id": 18415,
    "categoryId": 10401
  },
  {
    "key": "10727",
    "id": 18211,
    "categoryId": 11000
  },
  {
    "key": "10928",
    "id": 20204,
    "categoryId": 10325
  },
  {
    "key": "24116",
    "id": 24705,
    "categoryId": 10310
  },
  {
    "key": "10549",
    "id": 15608,
    "categoryId": 10801
  },
  {
    "key": "10433",
    "id": 13702,
    "categoryId": 10801
  },
  {
    "key": "10391",
    "id": 12900,
    "categoryId": 10112
  },
  {
    "key": "10822",
    "id": 19306,
    "categoryId": 11000
  },
  {
    "key": "10799",
    "id": 19408,
    "categoryId": 10112
  },
  {
    "key": "10491",
    "id": 15504,
    "categoryId": 10112
  },
  {
    "key": "10586",
    "id": 16709,
    "categoryId": 10112
  },
  {
    "key": "10710",
    "id": 18107,
    "categoryId": 10112
  },
  {
    "key": "10545",
    "id": 16402,
    "categoryId": 10801
  },
  {
    "key": "24972",
    "id": 25404,
    "categoryId": 10304
  },
  {
    "key": "26674",
    "id": 28402,
    "categoryId": 12804
  },
  {
    "key": "25704",
    "id": 27204,
    "categoryId": 10112
  },
  {
    "key": "4RSGCM",
    "id": 27302,
    "categoryId": 10112
  },
  {
    "key": "25720",
    "id": 26805,
    "categoryId": 12208
  },
  {
    "key": "25976",
    "id": 27604,
    "categoryId": 10112
  },
  {
    "key": "25172",
    "id": 25801,
    "categoryId": 10303
  },
  {
    "key": "11090",
    "id": 21603,
    "categoryId": 10607
  },
  {
    "key": "6715X",
    "id": 25500,
    "categoryId": 10607
  },
  {
    "key": "10256",
    "id": 11001,
    "categoryId": 10238
  },
  {
    "key": "10376",
    "id": 13001,
    "categoryId": 10124
  },
  {
    "key": "10528",
    "id": 16702,
    "categoryId": 10112
  },
  {
    "key": "10530",
    "id": 15607,
    "categoryId": 10238
  },
  {
    "key": "10408",
    "id": 14500,
    "categoryId": 10703
  },
  {
    "key": "26336",
    "id": 28600,
    "categoryId": 10607
  },
  {
    "key": "10471",
    "id": 14300,
    "categoryId": 10205
  },
  {
    "key": "10392",
    "id": 13000,
    "categoryId": 10325
  },
  {
    "key": "10394",
    "id": 13002,
    "categoryId": 10124
  },
  {
    "key": "10466",
    "id": 14807,
    "categoryId": 10205
  },
  {
    "key": "10557",
    "id": 24501,
    "categoryId": 10325
  },
  {
    "key": "10712",
    "id": 17800,
    "categoryId": 10124
  },
  {
    "key": "10681",
    "id": 17500,
    "categoryId": 11600
  },
  {
    "key": "10891",
    "id": 20034,
    "categoryId": 11601
  },
  {
    "key": "10649",
    "id": 17313,
    "categoryId": 10603
  },
  {
    "key": "10986",
    "id": 20205,
    "categoryId": 10294
  },
  {
    "key": "10592",
    "id": 16601,
    "categoryId": 10304
  },
  {
    "key": "11125",
    "id": 22300,
    "categoryId": 10906
  },
  {
    "key": "10680",
    "id": 17510,
    "categoryId": 11000
  },
  {
    "key": "10795",
    "id": 18903,
    "categoryId": 10800
  },
  {
    "key": "10706",
    "id": 17702,
    "categoryId": 10607
  },
  {
    "key": "10709",
    "id": 24500,
    "categoryId": 10325
  },
  {
    "key": "10874",
    "id": 19315,
    "categoryId": 10124
  },
  {
    "key": "11014",
    "id": 20209,
    "categoryId": 12300
  },
  {
    "key": "10804",
    "id": 19002,
    "categoryId": 11000
  },
  {
    "key": "10711",
    "id": 17801,
    "categoryId": 10124
  },
  {
    "key": "24363",
    "id": 24905,
    "categoryId": 10401
  },
  {
    "key": "10838",
    "id": 19501,
    "categoryId": 10906
  },
  {
    "key": "10744",
    "id": 18600,
    "categoryId": 10112
  },
  {
    "key": "10676",
    "id": 17606,
    "categoryId": 10284
  },
  {
    "key": "10766",
    "id": 18510,
    "categoryId": 10284
  },
  {
    "key": "10867",
    "id": 19409,
    "categoryId": 10284
  },
  {
    "key": "23578",
    "id": 23702,
    "categoryId": 10105
  },
  {
    "key": "25044",
    "id": 28105,
    "categoryId": 10105
  },
  {
    "key": "25029",
    "id": 25501,
    "categoryId": 10304
  },
  {
    "key": "11048",
    "id": 22701,
    "categoryId": 10603
  },
  {
    "key": "11151",
    "id": 23602,
    "categoryId": 10112
  },
  {
    "key": "23808",
    "id": 24100,
    "categoryId": 10124
  },
  {
    "key": "23518",
    "id": 24004,
    "categoryId": 12202
  },
  {
    "key": "24452",
    "id": 25205,
    "categoryId": 12208
  },
  {
    "key": "24378",
    "id": 25301,
    "categoryId": 10310
  },
  {
    "key": "24383",
    "id": 24709,
    "categoryId": 12300
  },
  {
    "key": "24238",
    "id": 24802,
    "categoryId": 10906
  },
  {
    "key": "24914",
    "id": 25204,
    "categoryId": 12303
  },
  {
    "key": "25117",
    "id": 26000,
    "categoryId": 13000
  },
  {
    "key": "25472",
    "id": 27300,
    "categoryId": 13706
  },
  {
    "key": "10856",
    "id": 19309,
    "categoryId": 10321
  },
  {
    "key": "11107",
    "id": 23001,
    "categoryId": 10304
  },
  {
    "key": "20342",
    "id": 23704,
    "categoryId": 11000
  },
  {
    "key": "24848",
    "id": 25215,
    "categoryId": 10607
  },
  {
    "key": "10857",
    "id": 19310,
    "categoryId": 10321
  },
  {
    "key": "24323",
    "id": 25000,
    "categoryId": 12104
  },
  {
    "key": "10855",
    "id": 19528,
    "categoryId": 10321
  },
  {
    "key": "24748",
    "id": 25212,
    "categoryId": 10321
  },
  {
    "key": "26012",
    "id": 27900,
    "categoryId": 10325
  },
  {
    "key": "26672",
    "id": 28403,
    "categoryId": 12804
  },
  {
    "key": "27056",
    "id": 29100,
    "categoryId": 13000
  },
  {
    "key": "27125",
    "id": 29402,
    "categoryId": 10284
  },
  {
    "key": "27364",
    "id": 29900,
    "categoryId": 11000
  },
  {
    "key": "26656",
    "id": 28901,
    "categoryId": 10283
  },
  {
    "key": "25352",
    "id": 27002,
    "categoryId": 10325
  },
  {
    "key": "ABK01",
    "id": 21700,
    "categoryId": 12100
  },
  {
    "key": "11045",
    "id": 20401,
    "categoryId": 10800
  },
  {
    "key": "23489",
    "id": 23601,
    "categoryId": 10502
  },
  {
    "key": "11001",
    "id": 20301,
    "categoryId": 10501
  },
  {
    "key": "24138",
    "id": 24400,
    "categoryId": 12503
  },
  {
    "key": "24506",
    "id": 25207,
    "categoryId": 13400
  },
  {
    "key": "11000",
    "id": 20207,
    "categoryId": 10105
  },
  {
    "key": "10919",
    "id": 19703,
    "categoryId": 10105
  },
  {
    "key": "24149",
    "id": 24700,
    "categoryId": 10105
  },
  {
    "key": "ABK",
    "id": 21600,
    "categoryId": 12100
  },
  {
    "key": "WGABKDEMO",
    "id": 24300,
    "categoryId": 12100
  },
  {
    "key": "10935",
    "id": 20103,
    "categoryId": 12202
  },
  {
    "key": "24505",
    "id": 25208,
    "categoryId": 13400
  },
  {
    "key": "11070",
    "id": 22000,
    "categoryId": 12503
  },
  {
    "key": "26508",
    "id": 28100,
    "categoryId": 10607
  },
  {
    "key": "24880",
    "id": 26100,
    "categoryId": 10800
  },
  {
    "key": "11047",
    "id": 21604,
    "categoryId": 10603
  },
  {
    "key": "25576",
    "id": 26800,
    "categoryId": 10603
  },
  {
    "key": "HC25576",
    "id": 26801,
    "categoryId": 10603
  },
  {
    "key": "23913",
    "id": 24315,
    "categoryId": 10800
  },
  {
    "key": "27600",
    "id": 30002,
    "categoryId": 14214
  },
  {
    "key": "25520",
    "id": 27203,
    "categoryId": 10105
  },
  {
    "key": "11085",
    "id": 23501,
    "categoryId": 10205
  },
  {
    "key": "11049",
    "id": 23500,
    "categoryId": 10205
  },
  {
    "key": "11138",
    "id": 22501,
    "categoryId": 10105
  },
  {
    "key": "24408",
    "id": 25217,
    "categoryId": 10105
  },
  {
    "key": "10991",
    "id": 20210,
    "categoryId": 12104
  },
  {
    "key": "24233",
    "id": 24904,
    "categoryId": 10906
  },
  {
    "key": "11040",
    "id": 21500,
    "categoryId": 10105
  },
  {
    "key": "24653",
    "id": 25218,
    "categoryId": 10105
  },
  {
    "key": "25328",
    "id": 26301,
    "categoryId": 10105
  },
  {
    "key": "11152",
    "id": 24310,
    "categoryId": 10321
  },
  {
    "key": "26948",
    "id": 29000,
    "categoryId": 10105
  },
  {
    "key": "26948WIFI",
    "id": 29400,
    "categoryId": 10105
  },
  {
    "key": "27260",
    "id": 29905,
    "categoryId": 10105
  },
  {
    "key": "27588",
    "id": 29902,
    "categoryId": 13000
  },
  {
    "key": "25972",
    "id": 27400,
    "categoryId": 12104
  },
  {
    "key": "26904",
    "id": 29201,
    "categoryId": 10325
  },
  {
    "key": "10544",
    "id": 15702,
    "categoryId": 10105
  },
  {
    "key": "10477",
    "id": 14308,
    "categoryId": 10105
  },
  {
    "key": "10505",
    "id": 15306,
    "categoryId": 10603
  },
  {
    "key": "10360",
    "id": 12325,
    "categoryId": 10105
  },
  {
    "key": "10749",
    "id": 18503,
    "categoryId": 10105
  },
  {
    "key": "10840",
    "id": 19500,
    "categoryId": 10906
  },
  {
    "key": "10854",
    "id": 19308,
    "categoryId": 10321
  },
  {
    "key": "10182",
    "id": 11601,
    "categoryId": 10121
  },
  {
    "key": "10363",
    "id": 12221,
    "categoryId": 10105
  },
  {
    "key": "10197",
    "id": 10701,
    "categoryId": 10105
  },
  {
    "key": "10301",
    "id": 11003,
    "categoryId": 10105
  },
  {
    "key": "10364",
    "id": 12222,
    "categoryId": 10105
  },
  {
    "key": "10198",
    "id": 10702,
    "categoryId": 10105
  },
  {
    "key": "10599",
    "id": 16802,
    "categoryId": 10121
  },
  {
    "key": "10628",
    "id": 16803,
    "categoryId": 10121
  },
  {
    "key": "10183",
    "id": 10006,
    "categoryId": 12100
  },
  {
    "key": "10823",
    "id": 19204,
    "categoryId": 12000
  },
  {
    "key": "10575",
    "id": 16505,
    "categoryId": 10105
  },
  {
    "key": "10763",
    "id": 18501,
    "categoryId": 10105
  },
  {
    "key": "10718",
    "id": 18301,
    "categoryId": 10234
  },
  {
    "key": "10612",
    "id": 16805,
    "categoryId": 10906
  },
  {
    "key": "10489",
    "id": 14805,
    "categoryId": 10906
  },
  {
    "key": "10492",
    "id": 14804,
    "categoryId": 10906
  },
  {
    "key": "11097",
    "id": 21605,
    "categoryId": 12200
  },
  {
    "key": "10833",
    "id": 24604,
    "categoryId": 10701
  },
  {
    "key": "25936",
    "id": 28801,
    "categoryId": 11405
  },
  {
    "key": "25212",
    "id": 26900,
    "categoryId": 10701
  },
  {
    "key": "24912",
    "id": 25901,
    "categoryId": 12202
  },
  {
    "key": "20382",
    "id": 24000,
    "categoryId": 12202
  },
  {
    "key": "26780",
    "id": 28701,
    "categoryId": 10284
  },
  {
    "key": "26156",
    "id": 28104,
    "categoryId": 13000
  },
  {
    "key": "25880",
    "id": 27205,
    "categoryId": 13404
  },
  {
    "key": "25512",
    "id": 26700,
    "categoryId": 13000
  },
  {
    "key": "27064",
    "id": 29004,
    "categoryId": 13000
  },
  {
    "key": "27252",
    "id": 29008,
    "categoryId": 10284
  },
  {
    "key": "27532",
    "id": 29903,
    "categoryId": 13000
  },
  {
    "key": "27452",
    "id": 29904,
    "categoryId": 13000
  },
  {
    "key": "A25584",
    "id": 26807,
    "categoryId": 12208
  },
  {
    "key": "26600",
    "id": 28704,
    "categoryId": 10702
  },
  {
    "key": "XCBET",
    "id": 29701,
    "categoryId": 10325
  },
  {
    "key": "24973",
    "id": 26810,
    "categoryId": 13000
  },
  {
    "key": "26516",
    "id": 28700,
    "categoryId": 10321
  },
  {
    "key": "11112",
    "id": 22502,
    "categoryId": 12300
  },
  {
    "key": "20193",
    "id": 22700,
    "categoryId": 11000
  },
  {
    "key": "10910",
    "id": 19900,
    "categoryId": 11800
  },
  {
    "key": "25832",
    "id": 27200,
    "categoryId": 13404
  },
  {
    "key": "25260",
    "id": 26501,
    "categoryId": 10507
  },
  {
    "key": "24694",
    "id": 24908,
    "categoryId": 12803
  },
  {
    "key": "25536",
    "id": 26405,
    "categoryId": 10303
  },
  {
    "key": "24113",
    "id": 25216,
    "categoryId": 13000
  },
  {
    "key": "23854",
    "id": 24606,
    "categoryId": 13000
  },
  {
    "key": "23843",
    "id": 24309,
    "categoryId": 10321
  },
  {
    "key": "10966",
    "id": 21606,
    "categoryId": 10325
  },
  {
    "key": "27276",
    "id": 29500,
    "categoryId": 10268
  },
  {
    "key": "27196",
    "id": 29401,
    "categoryId": 10507
  },
  {
    "key": "26544",
    "id": 28103,
    "categoryId": 12202
  },
  {
    "key": "26673",
    "id": 28401,
    "categoryId": 12804
  },
  {
    "key": "25493",
    "id": 26204,
    "categoryId": 12803
  },
  {
    "key": "25916",
    "id": 27503,
    "categoryId": 12803
  },
  {
    "key": "25060",
    "id": 25400,
    "categoryId": 11000
  },
  {
    "key": "26892",
    "id": 29002,
    "categoryId": 10702
  },
  {
    "key": "25956",
    "id": 28203,
    "categoryId": 10303
  },
  {
    "key": "26044",
    "id": 27500,
    "categoryId": 10303
  },
  {
    "key": "27456",
    "id": 29600,
    "categoryId": 10237
  },
  {
    "key": "20337",
    "id": 27303,
    "categoryId": 10112
  },
  {
    "key": "24570",
    "id": 25213,
    "categoryId": 10112
  },
  {
    "key": "25752",
    "id": 26806,
    "categoryId": 12300
  }
];} catch (ex) {window.JEDITOR_PROJECT_CATEGORIES=[];console.log('JEditor: config error [JPC]', ex);}

// release unused LS items
(function() {
    localStorage.removeItem('je_populateall');
    localStorage.removeItem('je_globalwikimode');
    localStorage.removeItem('je_wikimode');
    localStorage.removeItem('je_width');
    localStorage.removeItem('je_switchtoolbar');
    localStorage.removeItem('je_mathjax_path');

    localStorage.removeItem('je_pastedfilename');
    localStorage.removeItem('je_pastedstyles');
    localStorage.removeItem('JEDITOR_RTL');
    localStorage.removeItem('je_leanformatting');
    localStorage.removeItem('JEDITOR_RED_LINE');
    localStorage.removeItem('JEDITOR__PROJ_CACHE'); // page issue key linkifier
    localStorage.removeItem('JEDITOR__SETTINGS_POSTFIX'); // cache control flag
    // edit modes
    for (let item in window.localStorage) {
        if (window.localStorage.hasOwnProperty(item)) {
            if (typeof item === 'string' && item.indexOf('je_editmode__') === 0) {
                localStorage.removeItem(item);
            }
        }
    }
})();


(function () {
    const Helpers = require('jeditor-helpers');

    const settings = window.JEDITOR_CONFIGURATION_JIRA || {};

    // code snippet line numbers
    if (settings['JEDITOR_HIGHLIGHT_GUTTEN']
        && settings['JEDITOR_HIGHLIGHT_GUTTEN'].value !== "true")
    {
        Helpers.localStorage.setItem('je_show_gutter', 'true');
    }
    else {
        localStorage.removeItem('je_show_gutter');
    }

    // code snippet collapse
    if (settings['JEDITOR_HIGHLIGHT_COLLAPSE']
        && settings['JEDITOR_HIGHLIGHT_COLLAPSE'].value === "true")
    {
        Helpers.localStorage.setItem('je_code_collapse', 'true');
    }
    else {
        localStorage.removeItem('je_code_collapse');
    }
})();

(function() {
    function applyJEditorToolbar(config) {
        if (!window.JEDITOR_CONFIGURATION_JIRA) {
            JEDITOR.log("JEDITOR: missing JEditor configuration", JEDITOR.log.level.ERROR);
            return;
        }

        const fullToolbarConfig = JEDITOR_CONFIGURATION_JIRA['JEDITOR_FULL_TOOLBAR_CONFIG']
            || JEDITOR.defaultConfig.fullToolbarConfig;
        config.toolbar_JFull = __transformToolbarToToolbox(fullToolbarConfig);

        const miniToolbarConfig = JEDITOR_CONFIGURATION_JIRA['JEDITOR_MINI_TOOLBAR_CONFIG']
            || JEDITOR.defaultConfig.miniToolbarConfig;
        config.toolbar_JMini = __transformToolbarToToolbox(miniToolbarConfig);

        function __transformToolbarToToolbox (toolbarArray) {
            return toolbarArray.map(function (toolbarItem) {
                if (toolbarItem === '/') {
                    return '/';
                }
                return {
                    name: toolbarItem,
                    items: [toolbarItem]
                }
            });
        }
    }

    function applyJEditorGeneral(config) {
        //Hardcode settings
        let extraPluginsToAdd = [],
            extraPluginsToRemove = [];

        config.toolbarCanCollapse = true;
        config.enableContextMenu = false;
        config.autoUpdateElement = false;
        config.removeFormatTags = 'div,h1,h2,h3,h4,h5,h6,b,big,code,del,dfn,em,font,i,ins,kbd,q,s,samp,small,span,strike,strong,sub,sup,tt,u,var,pre,blockquote';
        config.removeFormatAttributes = 'class,style,lang,width,height,align,hspace,valign';
        config.entities_latin = false;
        config.entities = false;
        config.entities_additional = '';
        config.toolbarStartupExpanded = false;
        config.coreStyles_bold = {element: 'b', overrides: 'strong'};
        config.coreStyles_italic = {element: 'i', overrides: 'em'};

        config.contentsCss = JEDITOR.getUrl("contents.css");

        // ACF
        config.allowedContent = {
            $1: {
                elements: JEDITOR.dtd,
                attributes: true,
                styles: true,
                classes: true
            }
        };
        config.disallowedContent = {
            script: true,
            span: {
                styles: ['line-height'],
                classes: ['jeditor_renderer', 'je_validation_mark']
            },
            input: {
                classes: ['synced'],
                attributes: ['controller']
            },
            div: {
                classes: [
                    'module',
                    'action-head',
                    'sortwrap',
                    'mod-content',
                    'mod-footer',
                    'je_cdata',
                    'je_rdata',
                    'je_rdata_container',
                    'je_preview',
                    'je_cdata_js',
                    'je_cdata_styles',
                    'je_pr_rrj',
                    'je_pr_ssj',
                    'je_pr_atj',
                    'je_cgt'
                ],
                styles: ['border-radius', 'line-height'],
                attributes: ['id']
            },
            p: {
                styles: ['background*', 'line-height']
            },
            'a img': {
                attributes: ['on*']
            }
        };

        // font
        config.font_names = (function () {
            JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_CONFIG'] = JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_CONFIG']
                                                                    || JEDITOR.defaultConfig.fontDropdownConfig;
            let fontConfig = '';

            Object.keys(JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_CONFIG']).forEach(function (fontName) {
                fontConfig += fontName;
                fontConfig += '/';
                fontConfig += JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_CONFIG'][fontName];
                if (!fontConfig.endsWith(';')) {
                    fontConfig += ';';
                }
            });

            return fontConfig;
        })();

        config.fontSize_sizes = (function () {
            JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_SIZE_CONFIG'] = JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_SIZE_CONFIG']
                || JEDITOR.defaultConfig.fontSizeDropdownConfig;

            let fontSizeConfig = '';

            Object.keys(JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_SIZE_CONFIG']).forEach(function (fontSizeName) {
                fontSizeConfig += fontSizeName;
                fontSizeConfig += '/';
                fontSizeConfig += JEDITOR_CONFIGURATION_JIRA['JEDITOR_FONT_SIZE_CONFIG'][fontSizeName];
                fontSizeConfig += ';';
            });

            return fontSizeConfig;
        })();

        config.font_defaultLabel = '';
        config.font_style = {
            element: 'span',
            styles: { 'font-family': '#(family)' },
            overrides: [ {
                element: 'font', attributes: { 'face': null }
            } ]
        };

        config.fontSize_defaultLabel = '11pt';
        config.fontSize_style = {
            element: 'span',
            styles: { 'font-size': '#(size)' },
            overrides: [ {
                element: 'font', attributes: { 'size': null }
            } ]
        };

        // mathjax
        config.mathJaxClass = 'jmath';
        config.mathJaxLib = (function () {
            if (JEDITOR.settings.general.PATH_TO_MATHJAX === ''
                || JEDITOR.settings.general.PATH_TO_MATHJAX === 'null')
            {
                return JEDITOR.MATHJAX_BASE_URL + '/tex-chtml.js';
            }
            else {
                return JEDITOR.settings.general.PATH_TO_MATHJAX;
            }
        })();

        // default font
        (function () {
            if (JEDITOR.settings.general.DEFAULT_FONT_CSS !== 'null'
                && JEDITOR.settings.general.DEFAULT_FONT_CSS !== '')
            {
                JEDITOR.addCss('.cke_editable {font:' + JEDITOR.settings.general.DEFAULT_FONT_CSS + '}');
            }
        })();

        // templates
        config.templates = 'jeditor_global_templates';
        config.templates_replaceContent = false;

        // highlight
        config.syntaxhighlight_codeClass = 'hljs';
        config.syntaxhighlight_languages = {
            apache: 'Apache',
            bash: 'Bash',
            coffeescript: 'CoffeeScript',
            cpp: 'C++',
            cs: 'C#',
            css: 'CSS',
            delphi: 'Delphi',
            diff: 'Diff',
            groovy: 'Groovy',
            html: 'HTML',
            http: 'HTTP',
            ini: 'INI',
            java: 'Java',
            javascript: 'JavaScript',
            json: 'JSON',
            makefile: 'Makefile',
            markdown: 'Markdown',
            nginx: 'Nginx',
            objectivec: 'Objective-C',
            perl: 'Perl',
            php: 'PHP',
            powershell: 'PowerShell',
            python: 'Python',
            ruby: 'Ruby',
            sass: 'SASS',
            sql: 'SQL',
            vbscript: 'VBScript',
            xhtml: 'XHTML',
            xml: 'XML'
        };
        config.syntaxhighlight_theme = 'vs';

        // autogrow
        if (JEDITOR.settings.general.AUTOGROW === 'true'
            && !window.JEDITOR_PORTFOLIO
            && !JEDITOR.maximizedMode) // autogrow is not allowed in maximized mode
        {
            extraPluginsToAdd.push('autogrow');
            config.autoGrow_minHeight = (function () {
                let min = parseInt(JEDITOR.settings.general.EDITABLE_HEIGHT, 10) || 200,
                    max = parseInt(JEDITOR.settings.general.AUTOGROW_MAX, 10) || 900;
                if (min >= max) {
                    JEDITOR.log('JEditor: autogrow minH >= maxH; reverting to default heights', JEDITOR.log.level.WARN);
                    min = 300;
                    JEDITOR.settings.general.EDITABLE_HEIGHT = 300;
                    JEDITOR.settings.general.AUTOGROW_MAX = 900;
                }
                return min;
            })();
            config.autoGrow_maxHeight = parseInt(JEDITOR.settings.general.AUTOGROW_MAX, 10) || 900;
            config.autoGrow_bottomSpace = 30;
            extraPluginsToRemove.push('resize');
        }

        // initial height
        if (JEDITOR.maximizedMode) {
            config.height = '50vh';
        }
        else {
            config.height = parseInt(JEDITOR.settings.general.EDITABLE_HEIGHT) || 200;
        }

        // redline
        if (!JEDITOR.isRedLineButtonOn) {
            extraPluginsToRemove.push('magicline');
        }

        // rtl
        if (JEDITOR.isRtl) {
            config.contentsLangDirection = 'rtl';
        }
        if (JEDITOR.isDirAuto) {
            config.removeFormatAttributes += ',dir';
            config.useComputedState = false;
        }

        // table resize
        if (JEDITOR.isTableResize) {
            extraPluginsToAdd.push('tableresize');
        }

        // language
        switch (JEDITOR.settings.general.EDITOR_LANG) {
            case 'AUTO':
                config.language = '';
                break;
            case 'JIRA':
                config.language = document.documentElement.lang;
                break;
            default:
                config.language = JEDITOR.settings.general.EDITOR_LANG;
        }

        // ctrl+enter
        JEDITOR.reverseEnterMode = JEDITOR.isLineBreaks;

        // custom styles
        if (typeof JEDITOR_CONFIGURATION_JIRA['JEDITOR_STYLES_CONFIG'] !== "undefined") {
            const stylesConfig = JEDITOR_CONFIGURATION_JIRA['JEDITOR_STYLES_CONFIG'];

            if (Array.isArray(stylesConfig) && stylesConfig.length > 0) {
                config.stylesSet = [];
                for (let i = 0; i < stylesConfig.length; i++) {
                    if (stylesConfig[i].element === 'div' && stylesConfig[i].styles) {
                        delete stylesConfig[i].styles['background-color'];
                        delete stylesConfig[i].styles['border-radius'];
                    }
                    config.stylesSet.push(stylesConfig[i]);
                }
            }
            else {
                JEDITOR.log('JEDITOR: failed to parse JSON stored in JEditor Configuration > Dropdowns > Styles', JEDITOR.log.level.WARN);
                config.stylesSet = JEDITOR.defaultConfig.stylesDropdownConfig;
            }
        }

        // spellcheck
        config.disableNativeSpellChecker = !JEDITOR.isSpellchecker;

        // ie helper
        // if (JEDITOR.env.ie) extraPluginsToAdd.push('unblockie');

        // custom
        extraPluginsToAdd.push('extrabottom');
        extraPluginsToAdd.push('toolbarhide');
        extraPluginsToAdd.push('pastehtml');
        extraPluginsToAdd.push('pastewiki');
        extraPluginsToAdd.push('extrashortcuts');
        extraPluginsToAdd.push('tabs');
        extraPluginsToAdd.push('prepopulate');
        extraPluginsToAdd.push('restore');
        extraPluginsToAdd.push('mention');
        extraPluginsToAdd.push('mutableform');

        // inline
        extraPluginsToAdd.push('mentions');
        extraPluginsToAdd.push('floatingtoolbars');
        extraPluginsToAdd.push('syntaxhighlight');

        config.extraPlugins = extraPluginsToAdd.join(',');
        config.removePlugins = extraPluginsToRemove.join(',');
    }

    // global templates
    function applyJEditorTemplates(templates) {
        if (JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_ORDER']) {
            const
                sortArray = JEDITOR_CONFIGURATION_JIRA['JEDITOR_TEMPLATES_ORDER'].params.order,
                sortedTemplates = [];

            for (let i = 0; i < sortArray.length; i++) {
                const template = templates[sortArray[i]];
                if (!template) {
                    JEDITOR.log("JEDITOR: there\'s a mismatch in JEditor template order", JEDITOR.log.level.WARN);
                    continue;
                }
                sortedTemplates[i] = {
                    id: template.name,
                    name: decodeURIComponent(template.label),
                    description: decodeURIComponent(template.description),
                    body: decodeURIComponent(template.value),
                    params: template.params
                };
            }

            JEDITOR.addTemplates('jeditor_global_templates', sortedTemplates);
        }
        else {
            JEDITOR.addTemplates('jeditor_global_templates', templates);
        }
    }

    function applyPrepopulation(config) {
        config.prepopulation = [];
        let preps = JEDITOR_CONFIGURATION_JIRA['JEDITOR_PREPOPULATION'].params;
        for (let key in preps) {
            if (!preps.hasOwnProperty(key)) {
                continue;
            }
            config.prepopulation.push(preps[key]);
        }
        JEDITOR.prepopulationScheme = config.prepopulation;
    }

    function applyControllersSettings() {
        const JIRA_BASE_URL = window.location.protocol + "//" + window.location.host + window.JEDITOR_CONTEXT_PATH;
        JEDITOR.config.filebrowserImageUploadUrl = JIRA_BASE_URL + '/plugins/servlet/jeditor_file_uploader?type=Images&project=&atl_token=XSRF_TOKEN';
        JEDITOR.config.filebrowserUploadUrl = JIRA_BASE_URL + '/plugins/servlet/jeditor_file_uploader?type=Files&project=&atl_token=XSRF_TOKEN';
        JEDITOR.config.imageUploadUrl = JIRA_BASE_URL + '/plugins/servlet/jeditor_file_uploader?type=Images&project=&atl_token=XSRF_TOKEN';
        JEDITOR.config.fileUploadUrl = JIRA_BASE_URL + '/plugins/servlet/jeditor_file_uploader?type=Files&project=&atl_token=XSRF_TOKEN';
    }

    function applySmileySettings(config) {
        config.smiley_images = [
            'address-book.png', // 1
            'alarm-clock.png', // 2
            'arrow-circle.png', // 3
            'arrow-down.png', // 4
            'arrow-join.png', // 5
            'arrow-left.png', // 6
            'arrow-right.png', // 7
            'arrow-split.png', // 8
            'arrow-up.png', // 9
            'balloon.png', // 10
            'box.png', // 11
            'briefcase.png', // 12
            'calendar.png', // 13
            'database.png', // 14
            'defender.png', // 15
            'exclamation.png', // 16
            'eye.png', // 17
            'fire.png', // 18
            'light-bulb.png', // 19
            'lock.png', // 20
            'man-boss.png', // 21
            'man-employee.png', // 22
            'man-manager.png', // 23
            'plus.png', // 24
            'question.png', // 25
            'script.png', // 26
            'smiley.png', // 27
            'smiley-lol.png', // 28
            'star.png', // 29
            'star-empty.png', // 30
            'star-half.png', // 31
            'table.png', // 32
            'tag.png', // 33
            'target.png', // 34
            'thumb-down.png', // 35
            'thumb-up.png', // 36
            'tick.png', // 37
            'tick-cross.png', // 38
            'jira_add.png', // 39
            'jira_check.png', // 40
            'jira_error.png', // 41
            'jira_forbidden.png', // 42
            'jira_help.png', // 43
            'jira_information.png', // 44
            'jira_warning.png', // 45
            'jira_lightbulb_on.png', // 46
            'jira_lightbulb_off.png', // 47
            'jira_flag.png', // 48
            'jira_flag_grey.png', // 49
            'jira_star_blue.png', // 50
            'jira_star_green.png', // 51
            'jira_star_red.png', // 52
            'jira_star_yellow.png', // 53
            'jira_thumbsdown.png', // 54
            'jira_thumbsup.png', // 55
            'jira_smile.png', // 56
            'jira_tongue.png', // 57
            'jira_wink.png', // 58
            'jira_biggrin.png', // 59
            'jira_sad.png' // 60
        ];
        config.smiley_descriptions = [
            'Address', // 1
            'Clock', // 2
            'Circle', // 3
            'Down', // 4
            'Join', // 5
            'Left', // 6
            'Right', // 7
            'Split', // 8
            'Up', // 9
            'Balloon', // 10
            'Box', // 11
            'Briefcase', // 12
            'Calendar', // 13
            'Database', // 14
            'Defender', // 15
            'Attention', // 16
            'Eye', // 17
            'Fire', // 18
            'Idea', // 19
            'Lock', // 20
            'Boss', // 21
            'Employee', // 22
            'Manager', // 23
            'Plus', // 24
            'Question', // 25
            'Script', // 26
            'Smile', // 27
            'Laugh', // 28
            'Star', // 29
            'Empty star', // 30
            'Half star', // 31
            'Table', // 32
            'Tag', // 33
            'Target', // 34
            'Thumb down', // 35
            'Thumb up', // 36
            'Tick', // 37
            'Cross', // 38
            'Add', // 39
            'Check', // 40
            'Error', // 41
            'Forbidden', // 42
            'Help', // 43
            'Information', // 44
            'Warning', // 45
            'Lightbulb On', // 46
            'Lightbulb Off', // 47
            'Flag', // 48
            'Unflag', // 49
            'Star Blue', // 50
            'Star Green', // 51
            'Star Red', // 52
            'Star Yellow', // 53
            'Thumbs Down', // 54
            'Thumbs Up', // 55
            'Smile', // 56
            'Tongue', // 57
            'Wink', // 58
            'Biggrin', // 59
            'Sad' // 60
        ];
    }

    function applyFormatSettings (config) {
        JEDITOR_CONFIGURATION_JIRA['JEDITOR_FORMAT_CONFIG'] = JEDITOR_CONFIGURATION_JIRA['JEDITOR_FORMAT_CONFIG']
                                                                || JEDITOR.defaultConfig.formatDropdownConfig;

        config.format_tags = Object.keys(JEDITOR_CONFIGURATION_JIRA['JEDITOR_FORMAT_CONFIG']).join(';');

        Object.keys(JEDITOR_CONFIGURATION_JIRA['JEDITOR_FORMAT_CONFIG']).forEach(function (formatName) {
            config['format_' + formatName] = JEDITOR_CONFIGURATION_JIRA['JEDITOR_FORMAT_CONFIG'][formatName];
        });
    }

    function getJEditorSettingsByType(type) {
        let result = [];
        for (let key in JEDITOR_CONFIGURATION_JIRA) {
            if (!JEDITOR_CONFIGURATION_JIRA.hasOwnProperty(key)) {
                continue;
            }
            if (JEDITOR_CONFIGURATION_JIRA[key]?.type === type) {
                result[key] = JEDITOR_CONFIGURATION_JIRA[key];
            }
        }
        return result;
    }

    JEDITOR.editorConfig = function (config) {
        if (typeof JEDITOR_CONFIGURATION_JIRA === 'undefined') {
            console.error('JEDITOR: unable to load configuration');
            try {
                require(['aui/flag'], function (JiraFlag) {
                    if (JiraFlag && !JEDITOR.configLoadWarningShown) {
                        JiraFlag({
                            type: 'error',
                            body: '<span>JEditor: failed to load configuration</span><br><span style="font-size:small;">An error occurred, please contact your Jira administrator</span>',
                            close: 'auto'
                        });
                        JEDITOR.configLoadWarningShown = true;
                    }
                });
            }
            catch {
                console.error('JEditor: failed to render error flag: aui/flag not loaded;');
            }
            return;
        }

        // apply smiley
        applySmileySettings(config);
        // apply format
        applyFormatSettings(config);

        // apply templates
        let templates = getJEditorSettingsByType('template');
        if (templates) {
            applyJEditorTemplates(templates);
        }
        // apply toolbar
        applyJEditorToolbar(config);
        // apply general settings
        applyJEditorGeneral(config);
        // apply controllers settings
        applyControllersSettings(config);
        // apply prepopulation settings
        applyPrepopulation(config);
    };
})();