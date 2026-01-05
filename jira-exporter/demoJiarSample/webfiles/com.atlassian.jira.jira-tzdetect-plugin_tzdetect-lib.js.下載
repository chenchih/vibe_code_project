WRMCB=function(e){var c=console;if(c&&c.log&&c.error){c.log('Error running batched script.');c.error(e);}}
;
try {
/* module-key = 'com.atlassian.jira.jira-tzdetect-plugin:tzdetect-lib', location = 'banner/tzdetect-banner-init.js' */
require(["jira-tzdetect/banner","wrm/data","jquery"],function(a,b,c){c(function(){1==b.claim("tzdetect.pref.auto.detect")&&a.init()})});
}catch(e){WRMCB(e)};