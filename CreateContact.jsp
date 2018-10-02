<%-- 
    Document   : ProjectManagement
    Created on : Apr 11, 2018, 3:14:02 PM
    Author     : shezi
--%>

<%@page import="za.ac.kbcs.dao.DaoClasses"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "kbcsdatabasev5";
String userid = "cassius";
String password = "cayShez@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
ResultSet resultSet2 = null;
ResultSet resultSet3 = null;

int totalTask = 0;
int totalCompleted = 0;
int pecentage = 0;
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>IAB</title>
    
    <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
    <meta name="author" content="">
    
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/lib/font-awesome/css/font-awesome.css">
    
    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="assets/css/main.css">
    
    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="assets/lib/metismenu/metisMenu.css">
    
    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="assets/lib/onoffcanvas/onoffcanvas.css">
    
    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="assets/lib/animate.css/animate.css">

 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/css/dataTables.bootstrap.min.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    <!--For Development Only. Not required -->
    <script>
        less = {
            env: "development",
            relativeUrls: false,
            rootpath: "/assets/"
        };
    </script>
    <link rel="stylesheet" href="assets/css/style-switcher.css">
    <link rel="stylesheet/less" type="text/css" href="assets/less/theme.less">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/less.js/2.7.1/less.js"></script>
    
    
        
            
       
    
         
         <style>
#popup1 { display:none; }
</style>
         
 
<link href="dist/jquery.simple-popup.min.css" rel="stylesheet" type="text/css">
       
        
          
 <link rel='stylesheet prefetch' href='https://use.fontawesome.com/releases/v5.0.8/css/all.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>
<link rel="stylesheet" href="css/projectTile.css">
   
  
  <!---------------------------------------------For Project Tiles------------------------------------------------------------------->
  
  
  
  
  
	<style>
		.wrapper1 { 
			background:#ffff; 
			box-shadow: 1px 1px 10px #999; 
			margin: auto; 
			text-align: left; 
			position: relative;
			-webkit-border-radius: 5px;
			-moz-border-radius: 5px;
			border-radius: 5px;
			margin-bottom: 20px !important;
			width: 100%;
			padding-top: 5px;
		}
		.scrolls { 
			overflow-x: scroll;
			overflow-y: hidden;
			height: 95%;
		white-space:nowrap
		} 
		.img { 
			margin: 2px;
			max-height: 100%;
			height:100%;
			
			display:inline-block;
			*display:inline;
			*zoom:1;
			vertical-align:top;
		}
	</style>




    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>

    <style>
		
		* {
		  margin: 0;
		  padding: 0;
		  box-sizing: border-box;
		}

		

		.customSlider {
		  opacity: 0;
		  display: none;
		}
		.customSlider + label {
		  position: relative;
		  top: 35px;
		  left: 15px;
		  cursor: pointer;
		}
		.customSlider + label:before, .customSlider + label:after {
		  background: #FFFFFF;
		  position: absolute;
		  content: '';
		}
		.customSlider + label:before {
		  top: -90px;
		  left: -60px;
		  width: 80px;
		  height: 40px;
		  background: #ccc;
		  border-radius: 20px;
		  transition: background .75s;
		}
		.customSlider + label:after {
		  height: 34px;
		  width: 34px;
		  top: -87px;
		  left: -55px;
		  border-radius: 50%;
		  transition: all .5s;
		}
		.customSlider:checked + label:after {
		  height: 34px;
		  width: 34px;
		  top: -87px;
		  left: -19px;
		  border-radius: 50%;
		}
		.customSlider:checked ~ .wrapper2 {
		  color: #fff;
		  transition: background .6s ease;
		  background: #31394D;
		}
		.customSlider:checked ~ .wrapper2 .top-icons i {
		  color: #fff;
		}
		.customSlider:checked ~ .wrapper2 .profile .name {
		  color: #FDFEFF;
		}
		.customSlider:checked ~ .wrapper2 .profile .title {
		  color: #7C8097;
		}
		.customSlider:checked ~ .wrapper2 .profile .description {
		  color: #FDFEFF;
		}
		.customSlider:checked ~ .wrapper2 .icon h4 {
		  color: #FFFFFF;
		}
		.customSlider:checked ~ .wrapper2 .icon p {
		  color: #666B7D;
		}

		.wrapper2 {
		  width: 300px;
		  height: 400px;
		  background: #FDFEFF;
		  transition: background .6s ease;
		  border-radius: 10px;
		  padding: 20px 20px 20px 20px;
		  box-shadow: 0 8px 40px rgba(0, 0, 0, 0.2);
		}
		.wrapper2 .top-icons i {
		  color: #080911;
		}
		.wrapper2 .top-icons i:nth-of-type(1) {
		  float: left;
		}
		.wrapper2 .top-icons i:nth-of-type(2) {
		  float: right;
		}
		.wrapper2 .top-icons i:nth-of-type(3) {
		  float: right;
		  padding-right: .8em;
		}
		.wrapper2 .profile {
		  margin-top: 2.2em;
		  position: relative;
		}
		.wrapper2 .profile:after {
		  width: 100%;
		  height: 1px;
		  content: ' ';
		  display: block;
		  margin-top: 1.3em;
		  background: #E9EFF6;
		}
		.wrapper2 .profile .check {
		  position: absolute;
		  right: 5em;
		  bottom: 12.7em;
		}
		.wrapper2 .profile .check i {
		  color: #fff;
		  width: 20px;
		  height: 20px;
		  font-size: 12px;
		  line-height: 20px;
		  text-align: center;
		  border-radius: 100%;
		  background: linear-gradient(to bottom right, #C90A6D, #FF48A0);
		}
		.wrapper2 .profile .thumbnail {
		  width: 124px;
		  height: 124px;
		  display: flex;
		  margin-left: auto;
		  margin-right: auto;
		  margin-bottom: 1.5em;
		  border-radius: 100%;
		  box-shadow: 0 13px 26px rgba(0, 0, 0, 0.2), 0 3px 6px rgba(0, 0, 0, 0.2);
		}
		.wrapper2 .profile .name {
		  color: #2D354A;
		  font-size: 24px;
		  font-weight: 600;
		  text-align: center;
		}
		.wrapper2 .profile .title {
		  color: #7C8097;
		  font-size: .75em;
		  font-weight: 300;
		  text-align: center;
		  padding-top: .5em;
		  padding-bottom: .7em;
		  letter-spacing: 1.5px;
		  text-transform: uppercase;
		}
		.wrapper2 .profile .description {
		  color: #080911;
		  font-size: 14px;
		  font-weight: 300;
		  text-align: center;
		  margin-bottom: 1.3em;
		}
		.wrapper2 .profile .btn {
		  color: #fff;
		  width: 130px;
		  height: 42px;
		  outline: none;
		  border: none;
		  display: block;
		  cursor: pointer;
		  font-weight: 300;
		  margin-left: auto;
		  margin-right: auto;
		  border-radius: 70px;
		  box-shadow: 0 13px 26px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.16);
		  background: linear-gradient(to bottom right, #C90A6D, #FF48A0);
		}
		.wrapper2 .social-icons {
		  display: flex;
		  margin-top: 1.2em;
		  justify-content: space-between;
		}
		.wrapper2 .social-icons .icon {
		  display: flex;
		  align-items: center;
		  flex-direction: column;
		}
		.wrapper2 .social-icons .icon a {
		  color: #fff;
		  width: 60px;
		  height: 60px;
		  font-size: 28px;
		  line-height: 60px;
		  text-align: center;
		  border-radius: 30px;
		  box-shadow: 0 13px 26px rgba(0, 0, 0, 0.2), 0 3px 6px rgba(0, 0, 0, 0.2);
		}
		.wrapper2 .social-icons .icon:nth-of-type(1) a {
		  background: linear-gradient(to bottom right, #C90A6D, #FF48A0);
		}
		.wrapper2 .social-icons .icon:nth-of-type(2) a {
		  background: linear-gradient(to bottom right, #5E5AEC, #3F9EFC);
		}
		.wrapper2 .social-icons .icon:nth-of-type(3) a {
		  background: linear-gradient(to bottom right, #6452E9, #639FF9);
		}
		.wrapper2 .social-icons .icon h4 {
		  color: #080911;
		  font-size: 1em;
		  margin-top: 1.3em;
		  margin-bottom: .2em;
		}
		.wrapper2 .social-icons .icon p {
		  color: #666B7D;
		  font-size: 12px;
		}

		.concept {
		  position: absolute;
		  bottom: 25px;
		  color: #AAB0C4;
		  font-size: .9em;
		  font-weight: 400;
		}
		.concept a {
		  color: #ac1966;
		  text-decoration: none;
		}

	  
	  
	</style>




<script>

/*
---
MooTools: the javascript framework

web build:
 - http://mootools.net/core/76bf47062d6c1983d66ce47ad66aa0e0

packager build:
 - packager build Core/Core Core/Array Core/String Core/Number Core/Function Core/Object Core/Event Core/Browser Core/Class Core/Class.Extras Core/Slick.Parser Core/Slick.Finder Core/Element Core/Element.Style Core/Element.Event Core/Element.Delegation Core/Element.Dimensions Core/Fx Core/Fx.CSS Core/Fx.Tween Core/Fx.Morph Core/Fx.Transitions Core/Request Core/Request.HTML Core/Request.JSON Core/Cookie Core/JSON Core/DOMReady Core/Swiff

copyrights:
  - [MooTools](http://mootools.net)

licenses:
  - [MIT License](http://mootools.net/license.txt)
...
*/

(function(){this.MooTools={version:"1.4.5",build:"ab8ea8824dc3b24b6666867a2c4ed58ebb762cf0"};var e=this.typeOf=function(i){if(i==null){return"null";}if(i.$family!=null){return i.$family();
}if(i.nodeName){if(i.nodeType==1){return"element";}if(i.nodeType==3){return(/\S/).test(i.nodeValue)?"textnode":"whitespace";}}else{if(typeof i.length=="number"){if(i.callee){return"arguments";
}if("item" in i){return"collection";}}}return typeof i;};var u=this.instanceOf=function(w,i){if(w==null){return false;}var v=w.$constructor||w.constructor;
while(v){if(v===i){return true;}v=v.parent;}if(!w.hasOwnProperty){return false;}return w instanceof i;};var f=this.Function;var r=true;for(var q in {toString:1}){r=null;
}if(r){r=["hasOwnProperty","valueOf","isPrototypeOf","propertyIsEnumerable","toLocaleString","toString","constructor"];}f.prototype.overloadSetter=function(v){var i=this;
return function(x,w){if(x==null){return this;}if(v||typeof x!="string"){for(var y in x){i.call(this,y,x[y]);}if(r){for(var z=r.length;z--;){y=r[z];if(x.hasOwnProperty(y)){i.call(this,y,x[y]);
}}}}else{i.call(this,x,w);}return this;};};f.prototype.overloadGetter=function(v){var i=this;return function(x){var y,w;if(typeof x!="string"){y=x;}else{if(arguments.length>1){y=arguments;
}else{if(v){y=[x];}}}if(y){w={};for(var z=0;z<y.length;z++){w[y[z]]=i.call(this,y[z]);}}else{w=i.call(this,x);}return w;};};f.prototype.extend=function(i,v){this[i]=v;
}.overloadSetter();f.prototype.implement=function(i,v){this.prototype[i]=v;}.overloadSetter();var o=Array.prototype.slice;f.from=function(i){return(e(i)=="function")?i:function(){return i;
};};Array.from=function(i){if(i==null){return[];}return(k.isEnumerable(i)&&typeof i!="string")?(e(i)=="array")?i:o.call(i):[i];};Number.from=function(v){var i=parseFloat(v);
return isFinite(i)?i:null;};String.from=function(i){return i+"";};f.implement({hide:function(){this.$hidden=true;return this;},protect:function(){this.$protected=true;
return this;}});var k=this.Type=function(x,w){if(x){var v=x.toLowerCase();var i=function(y){return(e(y)==v);};k["is"+x]=i;if(w!=null){w.prototype.$family=(function(){return v;
}).hide();w.type=i;}}if(w==null){return null;}w.extend(this);w.$constructor=k;w.prototype.$constructor=w;return w;};var p=Object.prototype.toString;k.isEnumerable=function(i){return(i!=null&&typeof i.length=="number"&&p.call(i)!="[object Function]");
};var b={};var d=function(i){var v=e(i.prototype);return b[v]||(b[v]=[]);};var h=function(w,A){if(A&&A.$hidden){return;}var v=d(this);for(var x=0;x<v.length;
x++){var z=v[x];if(e(z)=="type"){h.call(z,w,A);}else{z.call(this,w,A);}}var y=this.prototype[w];if(y==null||!y.$protected){this.prototype[w]=A;}if(this[w]==null&&e(A)=="function"){t.call(this,w,function(i){return A.apply(i,o.call(arguments,1));
});}};var t=function(i,w){if(w&&w.$hidden){return;}var v=this[i];if(v==null||!v.$protected){this[i]=w;}};k.implement({implement:h.overloadSetter(),extend:t.overloadSetter(),alias:function(i,v){h.call(this,i,this.prototype[v]);
}.overloadSetter(),mirror:function(i){d(this).push(i);return this;}});new k("Type",k);var c=function(v,A,y){var x=(A!=Object),E=A.prototype;if(x){A=new k(v,A);
}for(var B=0,z=y.length;B<z;B++){var F=y[B],D=A[F],C=E[F];if(D){D.protect();}if(x&&C){A.implement(F,C.protect());}}if(x){var w=E.propertyIsEnumerable(y[0]);
A.forEachMethod=function(J){if(!w){for(var I=0,G=y.length;I<G;I++){J.call(E,E[y[I]],y[I]);}}for(var H in E){J.call(E,E[H],H);}};}return c;};c("String",String,["charAt","charCodeAt","concat","indexOf","lastIndexOf","match","quote","replace","search","slice","split","substr","substring","trim","toLowerCase","toUpperCase"])("Array",Array,["pop","push","reverse","shift","sort","splice","unshift","concat","join","slice","indexOf","lastIndexOf","filter","forEach","every","map","some","reduce","reduceRight"])("Number",Number,["toExponential","toFixed","toLocaleString","toPrecision"])("Function",f,["apply","call","bind"])("RegExp",RegExp,["exec","test"])("Object",Object,["create","defineProperty","defineProperties","keys","getPrototypeOf","getOwnPropertyDescriptor","getOwnPropertyNames","preventExtensions","isExtensible","seal","isSealed","freeze","isFrozen"])("Date",Date,["now"]);
Object.extend=t.overloadSetter();Date.extend("now",function(){return +(new Date);});new k("Boolean",Boolean);Number.prototype.$family=function(){return isFinite(this)?"number":"null";
}.hide();Number.extend("random",function(v,i){return Math.floor(Math.random()*(i-v+1)+v);});var l=Object.prototype.hasOwnProperty;Object.extend("forEach",function(i,w,x){for(var v in i){if(l.call(i,v)){w.call(x,i[v],v,i);
}}});Object.each=Object.forEach;Array.implement({forEach:function(x,y){for(var w=0,v=this.length;w<v;w++){if(w in this){x.call(y,this[w],w,this);}}},each:function(i,v){Array.forEach(this,i,v);
return this;}});var s=function(i){switch(e(i)){case"array":return i.clone();case"object":return Object.clone(i);default:return i;}};Array.implement("clone",function(){var v=this.length,w=new Array(v);
while(v--){w[v]=s(this[v]);}return w;});var a=function(v,i,w){switch(e(w)){case"object":if(e(v[i])=="object"){Object.merge(v[i],w);}else{v[i]=Object.clone(w);
}break;case"array":v[i]=w.clone();break;default:v[i]=w;}return v;};Object.extend({merge:function(C,y,x){if(e(y)=="string"){return a(C,y,x);}for(var B=1,w=arguments.length;
B<w;B++){var z=arguments[B];for(var A in z){a(C,A,z[A]);}}return C;},clone:function(i){var w={};for(var v in i){w[v]=s(i[v]);}return w;},append:function(z){for(var y=1,w=arguments.length;
y<w;y++){var v=arguments[y]||{};for(var x in v){z[x]=v[x];}}return z;}});["Object","WhiteSpace","TextNode","Collection","Arguments"].each(function(i){new k(i);
});var j=Date.now();String.extend("uniqueID",function(){return(j++).toString(36);});var g=this.Hash=new k("Hash",function(i){if(e(i)=="hash"){i=Object.clone(i.getClean());
}for(var v in i){this[v]=i[v];}return this;});g.implement({forEach:function(i,v){Object.forEach(this,i,v);},getClean:function(){var v={};for(var i in this){if(this.hasOwnProperty(i)){v[i]=this[i];
}}return v;},getLength:function(){var v=0;for(var i in this){if(this.hasOwnProperty(i)){v++;}}return v;}});g.alias("each","forEach");Object.type=k.isObject;
var n=this.Native=function(i){return new k(i.name,i.initialize);};n.type=k.type;n.implement=function(x,v){for(var w=0;w<x.length;w++){x[w].implement(v);
}return n;};var m=Array.type;Array.type=function(i){return u(i,Array)||m(i);};this.$A=function(i){return Array.from(i).slice();};this.$arguments=function(v){return function(){return arguments[v];
};};this.$chk=function(i){return !!(i||i===0);};this.$clear=function(i){clearTimeout(i);clearInterval(i);return null;};this.$defined=function(i){return(i!=null);
};this.$each=function(w,v,x){var i=e(w);((i=="arguments"||i=="collection"||i=="array"||i=="elements")?Array:Object).each(w,v,x);};this.$empty=function(){};
this.$extend=function(v,i){return Object.append(v,i);};this.$H=function(i){return new g(i);};this.$merge=function(){var i=Array.slice(arguments);i.unshift({});
return Object.merge.apply(null,i);};this.$lambda=f.from;this.$mixin=Object.merge;this.$random=Number.random;this.$splat=Array.from;this.$time=Date.now;
this.$type=function(i){var v=e(i);if(v=="elements"){return"array";}return(v=="null")?false:v;};this.$unlink=function(i){switch(e(i)){case"object":return Object.clone(i);
case"array":return Array.clone(i);case"hash":return new g(i);default:return i;}};})();Array.implement({every:function(c,d){for(var b=0,a=this.length>>>0;
b<a;b++){if((b in this)&&!c.call(d,this[b],b,this)){return false;}}return true;},filter:function(d,f){var c=[];for(var e,b=0,a=this.length>>>0;b<a;b++){if(b in this){e=this[b];
if(d.call(f,e,b,this)){c.push(e);}}}return c;},indexOf:function(c,d){var b=this.length>>>0;for(var a=(d<0)?Math.max(0,b+d):d||0;a<b;a++){if(this[a]===c){return a;
}}return -1;},map:function(c,e){var d=this.length>>>0,b=Array(d);for(var a=0;a<d;a++){if(a in this){b[a]=c.call(e,this[a],a,this);}}return b;},some:function(c,d){for(var b=0,a=this.length>>>0;
b<a;b++){if((b in this)&&c.call(d,this[b],b,this)){return true;}}return false;},clean:function(){return this.filter(function(a){return a!=null;});},invoke:function(a){var b=Array.slice(arguments,1);
return this.map(function(c){return c[a].apply(c,b);});},associate:function(c){var d={},b=Math.min(this.length,c.length);for(var a=0;a<b;a++){d[c[a]]=this[a];
}return d;},link:function(c){var a={};for(var e=0,b=this.length;e<b;e++){for(var d in c){if(c[d](this[e])){a[d]=this[e];delete c[d];break;}}}return a;},contains:function(a,b){return this.indexOf(a,b)!=-1;
},append:function(a){this.push.apply(this,a);return this;},getLast:function(){return(this.length)?this[this.length-1]:null;},getRandom:function(){return(this.length)?this[Number.random(0,this.length-1)]:null;
},include:function(a){if(!this.contains(a)){this.push(a);}return this;},combine:function(c){for(var b=0,a=c.length;b<a;b++){this.include(c[b]);}return this;
},erase:function(b){for(var a=this.length;a--;){if(this[a]===b){this.splice(a,1);}}return this;},empty:function(){this.length=0;return this;},flatten:function(){var d=[];
for(var b=0,a=this.length;b<a;b++){var c=typeOf(this[b]);if(c=="null"){continue;}d=d.concat((c=="array"||c=="collection"||c=="arguments"||instanceOf(this[b],Array))?Array.flatten(this[b]):this[b]);
}return d;},pick:function(){for(var b=0,a=this.length;b<a;b++){if(this[b]!=null){return this[b];}}return null;},hexToRgb:function(b){if(this.length!=3){return null;
}var a=this.map(function(c){if(c.length==1){c+=c;}return c.toInt(16);});return(b)?a:"rgb("+a+")";},rgbToHex:function(d){if(this.length<3){return null;}if(this.length==4&&this[3]==0&&!d){return"transparent";
}var b=[];for(var a=0;a<3;a++){var c=(this[a]-0).toString(16);b.push((c.length==1)?"0"+c:c);}return(d)?b:"#"+b.join("");}});Array.alias("extend","append");
var $pick=function(){return Array.from(arguments).pick();};String.implement({test:function(a,b){return((typeOf(a)=="regexp")?a:new RegExp(""+a,b)).test(this);
},contains:function(a,b){return(b)?(b+this+b).indexOf(b+a+b)>-1:String(this).indexOf(a)>-1;},trim:function(){return String(this).replace(/^\s+|\s+$/g,"");
},clean:function(){return String(this).replace(/\s+/g," ").trim();},camelCase:function(){return String(this).replace(/-\D/g,function(a){return a.charAt(1).toUpperCase();
});},hyphenate:function(){return String(this).replace(/[A-Z]/g,function(a){return("-"+a.charAt(0).toLowerCase());});},capitalize:function(){return String(this).replace(/\b[a-z]/g,function(a){return a.toUpperCase();
});},escapeRegExp:function(){return String(this).replace(/([-.*+?^$()|[\]\/\\])/g,"\\$1");},toInt:function(a){return parseInt(this,a||10);},toFloat:function(){return parseFloat(this);
},hexToRgb:function(b){var a=String(this).match(/^#?(\w{1,2})(\w{1,2})(\w{1,2})$/);return(a)?a.slice(1).hexToRgb(b):null;},rgbToHex:function(b){var a=String(this).match(/\d{1,3}/g);
return(a)?a.rgbToHex(b):null;},substitute:function(a,b){return String(this).replace(b||(/\\?\{([^{}]+)\}/g),function(d,c){if(d.charAt(0)=="\\"){return d.slice(1);
}return(a[c]!=null)?a[c]:"";});}});Number.implement({limit:function(b,a){return Math.min(a,Math.max(b,this));},round:function(a){a=Math.pow(10,a||0).toFixed(a<0?-a:0);
return Math.round(this*a)/a;},times:function(b,c){for(var a=0;a<this;a++){b.call(c,a,this);}},toFloat:function(){return parseFloat(this);},toInt:function(a){return parseInt(this,a||10);
}});Number.alias("each","times");(function(b){var a={};b.each(function(c){if(!Number[c]){a[c]=function(){return Math[c].apply(null,[this].concat(Array.from(arguments)));
};}});Number.implement(a);})(["abs","acos","asin","atan","atan2","ceil","cos","exp","floor","log","max","min","pow","sin","sqrt","tan"]);Function.extend({attempt:function(){for(var b=0,a=arguments.length;
b<a;b++){try{return arguments[b]();}catch(c){}}return null;}});Function.implement({attempt:function(a,c){try{return this.apply(c,Array.from(a));}catch(b){}return null;
},bind:function(e){var a=this,b=arguments.length>1?Array.slice(arguments,1):null,d=function(){};var c=function(){var g=e,h=arguments.length;if(this instanceof c){d.prototype=a.prototype;
g=new d;}var f=(!b&&!h)?a.call(g):a.apply(g,b&&h?b.concat(Array.slice(arguments)):b||arguments);return g==e?f:g;};return c;},pass:function(b,c){var a=this;
if(b!=null){b=Array.from(b);}return function(){return a.apply(c,b||arguments);};},delay:function(b,c,a){return setTimeout(this.pass((a==null?[]:a),c),b);
},periodical:function(c,b,a){return setInterval(this.pass((a==null?[]:a),b),c);}});delete Function.prototype.bind;Function.implement({create:function(b){var a=this;
b=b||{};return function(d){var c=b.arguments;c=(c!=null)?Array.from(c):Array.slice(arguments,(b.event)?1:0);if(b.event){c=[d||window.event].extend(c);}var e=function(){return a.apply(b.bind||null,c);
};if(b.delay){return setTimeout(e,b.delay);}if(b.periodical){return setInterval(e,b.periodical);}if(b.attempt){return Function.attempt(e);}return e();};
},bind:function(c,b){var a=this;if(b!=null){b=Array.from(b);}return function(){return a.apply(c,b||arguments);};},bindWithEvent:function(c,b){var a=this;
if(b!=null){b=Array.from(b);}return function(d){return a.apply(c,(b==null)?arguments:[d].concat(b));};},run:function(a,b){return this.apply(b,Array.from(a));
}});if(Object.create==Function.prototype.create){Object.create=null;}var $try=Function.attempt;(function(){var a=Object.prototype.hasOwnProperty;Object.extend({subset:function(d,g){var f={};
for(var e=0,b=g.length;e<b;e++){var c=g[e];if(c in d){f[c]=d[c];}}return f;},map:function(b,e,f){var d={};for(var c in b){if(a.call(b,c)){d[c]=e.call(f,b[c],c,b);
}}return d;},filter:function(b,e,g){var d={};for(var c in b){var f=b[c];if(a.call(b,c)&&e.call(g,f,c,b)){d[c]=f;}}return d;},every:function(b,d,e){for(var c in b){if(a.call(b,c)&&!d.call(e,b[c],c)){return false;
}}return true;},some:function(b,d,e){for(var c in b){if(a.call(b,c)&&d.call(e,b[c],c)){return true;}}return false;},keys:function(b){var d=[];for(var c in b){if(a.call(b,c)){d.push(c);
}}return d;},values:function(c){var b=[];for(var d in c){if(a.call(c,d)){b.push(c[d]);}}return b;},getLength:function(b){return Object.keys(b).length;},keyOf:function(b,d){for(var c in b){if(a.call(b,c)&&b[c]===d){return c;
}}return null;},contains:function(b,c){return Object.keyOf(b,c)!=null;},toQueryString:function(b,c){var d=[];Object.each(b,function(h,g){if(c){g=c+"["+g+"]";
}var f;switch(typeOf(h)){case"object":f=Object.toQueryString(h,g);break;case"array":var e={};h.each(function(k,j){e[j]=k;});f=Object.toQueryString(e,g);
break;default:f=g+"="+encodeURIComponent(h);}if(h!=null){d.push(f);}});return d.join("&");}});})();Hash.implement({has:Object.prototype.hasOwnProperty,keyOf:function(a){return Object.keyOf(this,a);
},hasValue:function(a){return Object.contains(this,a);},extend:function(a){Hash.each(a||{},function(c,b){Hash.set(this,b,c);},this);return this;},combine:function(a){Hash.each(a||{},function(c,b){Hash.include(this,b,c);
},this);return this;},erase:function(a){if(this.hasOwnProperty(a)){delete this[a];}return this;},get:function(a){return(this.hasOwnProperty(a))?this[a]:null;
},set:function(a,b){if(!this[a]||this.hasOwnProperty(a)){this[a]=b;}return this;},empty:function(){Hash.each(this,function(b,a){delete this[a];},this);
return this;},include:function(a,b){if(this[a]==null){this[a]=b;}return this;},map:function(a,b){return new Hash(Object.map(this,a,b));},filter:function(a,b){return new Hash(Object.filter(this,a,b));
},every:function(a,b){return Object.every(this,a,b);},some:function(a,b){return Object.some(this,a,b);},getKeys:function(){return Object.keys(this);},getValues:function(){return Object.values(this);
},toQueryString:function(a){return Object.toQueryString(this,a);}});Hash.extend=Object.append;Hash.alias({indexOf:"keyOf",contains:"hasValue"});(function(){var k=this.document;
var h=k.window=this;var a=navigator.userAgent.toLowerCase(),b=navigator.platform.toLowerCase(),i=a.match(/(opera|ie|firefox|chrome|version)[\s\/:]([\w\d\.]+)?.*?(safari|version[\s\/:]([\w\d\.]+)|$)/)||[null,"unknown",0],f=i[1]=="ie"&&k.documentMode;
var o=this.Browser={extend:Function.prototype.extend,name:(i[1]=="version")?i[3]:i[1],version:f||parseFloat((i[1]=="opera"&&i[4])?i[4]:i[2]),Platform:{name:a.match(/ip(?:ad|od|hone)/)?"ios":(a.match(/(?:webos|android)/)||b.match(/mac|win|linux/)||["other"])[0]},Features:{xpath:!!(k.evaluate),air:!!(h.runtime),query:!!(k.querySelector),json:!!(h.JSON)},Plugins:{}};
o[o.name]=true;o[o.name+parseInt(o.version,10)]=true;o.Platform[o.Platform.name]=true;o.Request=(function(){var q=function(){return new XMLHttpRequest();
};var p=function(){return new ActiveXObject("MSXML2.XMLHTTP");};var e=function(){return new ActiveXObject("Microsoft.XMLHTTP");};return Function.attempt(function(){q();
return q;},function(){p();return p;},function(){e();return e;});})();o.Features.xhr=!!(o.Request);var j=(Function.attempt(function(){return navigator.plugins["Shockwave Flash"].description;
},function(){return new ActiveXObject("ShockwaveFlash.ShockwaveFlash").GetVariable("$version");})||"0 r0").match(/\d+/g);o.Plugins.Flash={version:Number(j[0]||"0."+j[1])||0,build:Number(j[2])||0};
o.exec=function(p){if(!p){return p;}if(h.execScript){h.execScript(p);}else{var e=k.createElement("script");e.setAttribute("type","text/javascript");e.text=p;
k.head.appendChild(e);k.head.removeChild(e);}return p;};String.implement("stripScripts",function(p){var e="";var q=this.replace(/<script[^>]*>([\s\S]*?)<\/script>/gi,function(r,s){e+=s+"\n";
return"";});if(p===true){o.exec(e);}else{if(typeOf(p)=="function"){p(e,q);}}return q;});o.extend({Document:this.Document,Window:this.Window,Element:this.Element,Event:this.Event});
this.Window=this.$constructor=new Type("Window",function(){});this.$family=Function.from("window").hide();Window.mirror(function(e,p){h[e]=p;});this.Document=k.$constructor=new Type("Document",function(){});
k.$family=Function.from("document").hide();Document.mirror(function(e,p){k[e]=p;});k.html=k.documentElement;if(!k.head){k.head=k.getElementsByTagName("head")[0];
}if(k.execCommand){try{k.execCommand("BackgroundImageCache",false,true);}catch(g){}}if(this.attachEvent&&!this.addEventListener){var c=function(){this.detachEvent("onunload",c);
k.head=k.html=k.window=null;};this.attachEvent("onunload",c);}var m=Array.from;try{m(k.html.childNodes);}catch(g){Array.from=function(p){if(typeof p!="string"&&Type.isEnumerable(p)&&typeOf(p)!="array"){var e=p.length,q=new Array(e);
while(e--){q[e]=p[e];}return q;}return m(p);};var l=Array.prototype,n=l.slice;["pop","push","reverse","shift","sort","splice","unshift","concat","join","slice"].each(function(e){var p=l[e];
Array[e]=function(q){return p.apply(Array.from(q),n.call(arguments,1));};});}if(o.Platform.ios){o.Platform.ipod=true;}o.Engine={};var d=function(p,e){o.Engine.name=p;
o.Engine[p+e]=true;o.Engine.version=e;};if(o.ie){o.Engine.trident=true;switch(o.version){case 6:d("trident",4);break;case 7:d("trident",5);break;case 8:d("trident",6);
}}if(o.firefox){o.Engine.gecko=true;if(o.version>=3){d("gecko",19);}else{d("gecko",18);}}if(o.safari||o.chrome){o.Engine.webkit=true;switch(o.version){case 2:d("webkit",419);
break;case 3:d("webkit",420);break;case 4:d("webkit",525);}}if(o.opera){o.Engine.presto=true;if(o.version>=9.6){d("presto",960);}else{if(o.version>=9.5){d("presto",950);
}else{d("presto",925);}}}if(o.name=="unknown"){switch((a.match(/(?:webkit|khtml|gecko)/)||[])[0]){case"webkit":case"khtml":o.Engine.webkit=true;break;case"gecko":o.Engine.gecko=true;
}}this.$exec=o.exec;})();(function(){var b={};var a=this.DOMEvent=new Type("DOMEvent",function(c,g){if(!g){g=window;}c=c||g.event;if(c.$extended){return c;
}this.event=c;this.$extended=true;this.shift=c.shiftKey;this.control=c.ctrlKey;this.alt=c.altKey;this.meta=c.metaKey;var i=this.type=c.type;var h=c.target||c.srcElement;
while(h&&h.nodeType==3){h=h.parentNode;}this.target=document.id(h);if(i.indexOf("key")==0){var d=this.code=(c.which||c.keyCode);this.key=b[d]||Object.keyOf(Event.Keys,d);
if(i=="keydown"){if(d>111&&d<124){this.key="f"+(d-111);}else{if(d>95&&d<106){this.key=d-96;}}}if(this.key==null){this.key=String.fromCharCode(d).toLowerCase();
}}else{if(i=="click"||i=="dblclick"||i=="contextmenu"||i=="DOMMouseScroll"||i.indexOf("mouse")==0){var j=g.document;j=(!j.compatMode||j.compatMode=="CSS1Compat")?j.html:j.body;
this.page={x:(c.pageX!=null)?c.pageX:c.clientX+j.scrollLeft,y:(c.pageY!=null)?c.pageY:c.clientY+j.scrollTop};this.client={x:(c.pageX!=null)?c.pageX-g.pageXOffset:c.clientX,y:(c.pageY!=null)?c.pageY-g.pageYOffset:c.clientY};
if(i=="DOMMouseScroll"||i=="mousewheel"){this.wheel=(c.wheelDelta)?c.wheelDelta/120:-(c.detail||0)/3;}this.rightClick=(c.which==3||c.button==2);if(i=="mouseover"||i=="mouseout"){var k=c.relatedTarget||c[(i=="mouseover"?"from":"to")+"Element"];
while(k&&k.nodeType==3){k=k.parentNode;}this.relatedTarget=document.id(k);}}else{if(i.indexOf("touch")==0||i.indexOf("gesture")==0){this.rotation=c.rotation;
this.scale=c.scale;this.targetTouches=c.targetTouches;this.changedTouches=c.changedTouches;var f=this.touches=c.touches;if(f&&f[0]){var e=f[0];this.page={x:e.pageX,y:e.pageY};
this.client={x:e.clientX,y:e.clientY};}}}}if(!this.client){this.client={};}if(!this.page){this.page={};}});a.implement({stop:function(){return this.preventDefault().stopPropagation();
},stopPropagation:function(){if(this.event.stopPropagation){this.event.stopPropagation();}else{this.event.cancelBubble=true;}return this;},preventDefault:function(){if(this.event.preventDefault){this.event.preventDefault();
}else{this.event.returnValue=false;}return this;}});a.defineKey=function(d,c){b[d]=c;return this;};a.defineKeys=a.defineKey.overloadSetter(true);a.defineKeys({"38":"up","40":"down","37":"left","39":"right","27":"esc","32":"space","8":"backspace","9":"tab","46":"delete","13":"enter"});
})();var Event=DOMEvent;Event.Keys={};Event.Keys=new Hash(Event.Keys);(function(){var a=this.Class=new Type("Class",function(h){if(instanceOf(h,Function)){h={initialize:h};
}var g=function(){e(this);if(g.$prototyping){return this;}this.$caller=null;var i=(this.initialize)?this.initialize.apply(this,arguments):this;this.$caller=this.caller=null;
return i;}.extend(this).implement(h);g.$constructor=a;g.prototype.$constructor=g;g.prototype.parent=c;return g;});var c=function(){if(!this.$caller){throw new Error('The method "parent" cannot be called.');
}var g=this.$caller.$name,h=this.$caller.$owner.parent,i=(h)?h.prototype[g]:null;if(!i){throw new Error('The method "'+g+'" has no parent.');}return i.apply(this,arguments);
};var e=function(g){for(var h in g){var j=g[h];switch(typeOf(j)){case"object":var i=function(){};i.prototype=j;g[h]=e(new i);break;case"array":g[h]=j.clone();
break;}}return g;};var b=function(g,h,j){if(j.$origin){j=j.$origin;}var i=function(){if(j.$protected&&this.$caller==null){throw new Error('The method "'+h+'" cannot be called.');
}var l=this.caller,m=this.$caller;this.caller=m;this.$caller=i;var k=j.apply(this,arguments);this.$caller=m;this.caller=l;return k;}.extend({$owner:g,$origin:j,$name:h});
return i;};var f=function(h,i,g){if(a.Mutators.hasOwnProperty(h)){i=a.Mutators[h].call(this,i);if(i==null){return this;}}if(typeOf(i)=="function"){if(i.$hidden){return this;
}this.prototype[h]=(g)?i:b(this,h,i);}else{Object.merge(this.prototype,h,i);}return this;};var d=function(g){g.$prototyping=true;var h=new g;delete g.$prototyping;
return h;};a.implement("implement",f.overloadSetter());a.Mutators={Extends:function(g){this.parent=g;this.prototype=d(g);},Implements:function(g){Array.from(g).each(function(j){var h=new j;
for(var i in h){f.call(this,i,h[i],true);}},this);}};})();(function(){this.Chain=new Class({$chain:[],chain:function(){this.$chain.append(Array.flatten(arguments));
return this;},callChain:function(){return(this.$chain.length)?this.$chain.shift().apply(this,arguments):false;},clearChain:function(){this.$chain.empty();
return this;}});var a=function(b){return b.replace(/^on([A-Z])/,function(c,d){return d.toLowerCase();});};this.Events=new Class({$events:{},addEvent:function(d,c,b){d=a(d);
if(c==$empty){return this;}this.$events[d]=(this.$events[d]||[]).include(c);if(b){c.internal=true;}return this;},addEvents:function(b){for(var c in b){this.addEvent(c,b[c]);
}return this;},fireEvent:function(e,c,b){e=a(e);var d=this.$events[e];if(!d){return this;}c=Array.from(c);d.each(function(f){if(b){f.delay(b,this,c);}else{f.apply(this,c);
}},this);return this;},removeEvent:function(e,d){e=a(e);var c=this.$events[e];if(c&&!d.internal){var b=c.indexOf(d);if(b!=-1){delete c[b];}}return this;
},removeEvents:function(d){var e;if(typeOf(d)=="object"){for(e in d){this.removeEvent(e,d[e]);}return this;}if(d){d=a(d);}for(e in this.$events){if(d&&d!=e){continue;
}var c=this.$events[e];for(var b=c.length;b--;){if(b in c){this.removeEvent(e,c[b]);}}}return this;}});this.Options=new Class({setOptions:function(){var b=this.options=Object.merge.apply(null,[{},this.options].append(arguments));
if(this.addEvent){for(var c in b){if(typeOf(b[c])!="function"||!(/^on[A-Z]/).test(c)){continue;}this.addEvent(c,b[c]);delete b[c];}}return this;}});})();
(function(){var k,n,l,g,a={},c={},m=/\\/g;var e=function(q,p){if(q==null){return null;}if(q.Slick===true){return q;}q=(""+q).replace(/^\s+|\s+$/g,"");g=!!p;
var o=(g)?c:a;if(o[q]){return o[q];}k={Slick:true,expressions:[],raw:q,reverse:function(){return e(this.raw,true);}};n=-1;while(q!=(q=q.replace(j,b))){}k.length=k.expressions.length;
return o[k.raw]=(g)?h(k):k;};var i=function(o){if(o==="!"){return" ";}else{if(o===" "){return"!";}else{if((/^!/).test(o)){return o.replace(/^!/,"");}else{return"!"+o;
}}}};var h=function(u){var r=u.expressions;for(var p=0;p<r.length;p++){var t=r[p];var q={parts:[],tag:"*",combinator:i(t[0].combinator)};for(var o=0;o<t.length;
o++){var s=t[o];if(!s.reverseCombinator){s.reverseCombinator=" ";}s.combinator=s.reverseCombinator;delete s.reverseCombinator;}t.reverse().push(q);}return u;
};var f=function(o){return o.replace(/[-[\]{}()*+?.\\^$|,#\s]/g,function(p){return"\\"+p;});};var j=new RegExp("^(?:\\s*(,)\\s*|\\s*(<combinator>+)\\s*|(\\s+)|(<unicode>+|\\*)|\\#(<unicode>+)|\\.(<unicode>+)|\\[\\s*(<unicode1>+)(?:\\s*([*^$!~|]?=)(?:\\s*(?:([\"']?)(.*?)\\9)))?\\s*\\](?!\\])|(:+)(<unicode>+)(?:\\((?:(?:([\"'])([^\\13]*)\\13)|((?:\\([^)]+\\)|[^()]*)+))\\))?)".replace(/<combinator>/,"["+f(">+~`!@$%^&={}\\;</")+"]").replace(/<unicode>/g,"(?:[\\w\\u00a1-\\uFFFF-]|\\\\[^\\s0-9a-f])").replace(/<unicode1>/g,"(?:[:\\w\\u00a1-\\uFFFF-]|\\\\[^\\s0-9a-f])"));
function b(x,s,D,z,r,C,q,B,A,y,u,F,G,v,p,w){if(s||n===-1){k.expressions[++n]=[];l=-1;if(s){return"";}}if(D||z||l===-1){D=D||" ";var t=k.expressions[n];
if(g&&t[l]){t[l].reverseCombinator=i(D);}t[++l]={combinator:D,tag:"*"};}var o=k.expressions[n][l];if(r){o.tag=r.replace(m,"");}else{if(C){o.id=C.replace(m,"");
}else{if(q){q=q.replace(m,"");if(!o.classList){o.classList=[];}if(!o.classes){o.classes=[];}o.classList.push(q);o.classes.push({value:q,regexp:new RegExp("(^|\\s)"+f(q)+"(\\s|$)")});
}else{if(G){w=w||p;w=w?w.replace(m,""):null;if(!o.pseudos){o.pseudos=[];}o.pseudos.push({key:G.replace(m,""),value:w,type:F.length==1?"class":"element"});
}else{if(B){B=B.replace(m,"");u=(u||"").replace(m,"");var E,H;switch(A){case"^=":H=new RegExp("^"+f(u));break;case"$=":H=new RegExp(f(u)+"$");break;case"~=":H=new RegExp("(^|\\s)"+f(u)+"(\\s|$)");
break;case"|=":H=new RegExp("^"+f(u)+"(-|$)");break;case"=":E=function(I){return u==I;};break;case"*=":E=function(I){return I&&I.indexOf(u)>-1;};break;
case"!=":E=function(I){return u!=I;};break;default:E=function(I){return !!I;};}if(u==""&&(/^[*$^]=$/).test(A)){E=function(){return false;};}if(!E){E=function(I){return I&&H.test(I);
};}if(!o.attributes){o.attributes=[];}o.attributes.push({key:B,operator:A,value:u,test:E});}}}}}return"";}var d=(this.Slick||{});d.parse=function(o){return e(o);
};d.escapeRegExp=f;if(!this.Slick){this.Slick=d;}}).apply((typeof exports!="undefined")?exports:this);(function(){var k={},m={},d=Object.prototype.toString;
k.isNativeCode=function(c){return(/\{\s*\[native code\]\s*\}/).test(""+c);};k.isXML=function(c){return(!!c.xmlVersion)||(!!c.xml)||(d.call(c)=="[object XMLDocument]")||(c.nodeType==9&&c.documentElement.nodeName!="HTML");
};k.setDocument=function(w){var p=w.nodeType;if(p==9){}else{if(p){w=w.ownerDocument;}else{if(w.navigator){w=w.document;}else{return;}}}if(this.document===w){return;
}this.document=w;var A=w.documentElement,o=this.getUIDXML(A),s=m[o],r;if(s){for(r in s){this[r]=s[r];}return;}s=m[o]={};s.root=A;s.isXMLDocument=this.isXML(w);
s.brokenStarGEBTN=s.starSelectsClosedQSA=s.idGetsName=s.brokenMixedCaseQSA=s.brokenGEBCN=s.brokenCheckedQSA=s.brokenEmptyAttributeQSA=s.isHTMLDocument=s.nativeMatchesSelector=false;
var q,u,y,z,t;var x,v="slick_uniqueid";var c=w.createElement("div");var n=w.body||w.getElementsByTagName("body")[0]||A;n.appendChild(c);try{c.innerHTML='<a id="'+v+'"></a>';
s.isHTMLDocument=!!w.getElementById(v);}catch(C){}if(s.isHTMLDocument){c.style.display="none";c.appendChild(w.createComment(""));u=(c.getElementsByTagName("*").length>1);
try{c.innerHTML="foo</foo>";x=c.getElementsByTagName("*");q=(x&&!!x.length&&x[0].nodeName.charAt(0)=="/");}catch(C){}s.brokenStarGEBTN=u||q;try{c.innerHTML='<a name="'+v+'"></a><b id="'+v+'"></b>';
s.idGetsName=w.getElementById(v)===c.firstChild;}catch(C){}if(c.getElementsByClassName){try{c.innerHTML='<a class="f"></a><a class="b"></a>';c.getElementsByClassName("b").length;
c.firstChild.className="b";z=(c.getElementsByClassName("b").length!=2);}catch(C){}try{c.innerHTML='<a class="a"></a><a class="f b a"></a>';y=(c.getElementsByClassName("a").length!=2);
}catch(C){}s.brokenGEBCN=z||y;}if(c.querySelectorAll){try{c.innerHTML="foo</foo>";x=c.querySelectorAll("*");s.starSelectsClosedQSA=(x&&!!x.length&&x[0].nodeName.charAt(0)=="/");
}catch(C){}try{c.innerHTML='<a class="MiX"></a>';s.brokenMixedCaseQSA=!c.querySelectorAll(".MiX").length;}catch(C){}try{c.innerHTML='<select><option selected="selected">a</option></select>';
s.brokenCheckedQSA=(c.querySelectorAll(":checked").length==0);}catch(C){}try{c.innerHTML='<a class=""></a>';s.brokenEmptyAttributeQSA=(c.querySelectorAll('[class*=""]').length!=0);
}catch(C){}}try{c.innerHTML='<form action="s"><input id="action"/></form>';t=(c.firstChild.getAttribute("action")!="s");}catch(C){}s.nativeMatchesSelector=A.matchesSelector||A.mozMatchesSelector||A.webkitMatchesSelector;
if(s.nativeMatchesSelector){try{s.nativeMatchesSelector.call(A,":slick");s.nativeMatchesSelector=null;}catch(C){}}}try{A.slick_expando=1;delete A.slick_expando;
s.getUID=this.getUIDHTML;}catch(C){s.getUID=this.getUIDXML;}n.removeChild(c);c=x=n=null;s.getAttribute=(s.isHTMLDocument&&t)?function(G,E){var H=this.attributeGetters[E];
if(H){return H.call(G);}var F=G.getAttributeNode(E);return(F)?F.nodeValue:null;}:function(F,E){var G=this.attributeGetters[E];return(G)?G.call(F):F.getAttribute(E);
};s.hasAttribute=(A&&this.isNativeCode(A.hasAttribute))?function(F,E){return F.hasAttribute(E);}:function(F,E){F=F.getAttributeNode(E);return !!(F&&(F.specified||F.nodeValue));
};var D=A&&this.isNativeCode(A.contains),B=w&&this.isNativeCode(w.contains);s.contains=(D&&B)?function(E,F){return E.contains(F);}:(D&&!B)?function(E,F){return E===F||((E===w)?w.documentElement:E).contains(F);
}:(A&&A.compareDocumentPosition)?function(E,F){return E===F||!!(E.compareDocumentPosition(F)&16);}:function(E,F){if(F){do{if(F===E){return true;}}while((F=F.parentNode));
}return false;};s.documentSorter=(A.compareDocumentPosition)?function(F,E){if(!F.compareDocumentPosition||!E.compareDocumentPosition){return 0;}return F.compareDocumentPosition(E)&4?-1:F===E?0:1;
}:("sourceIndex" in A)?function(F,E){if(!F.sourceIndex||!E.sourceIndex){return 0;}return F.sourceIndex-E.sourceIndex;}:(w.createRange)?function(H,F){if(!H.ownerDocument||!F.ownerDocument){return 0;
}var G=H.ownerDocument.createRange(),E=F.ownerDocument.createRange();G.setStart(H,0);G.setEnd(H,0);E.setStart(F,0);E.setEnd(F,0);return G.compareBoundaryPoints(Range.START_TO_END,E);
}:null;A=null;for(r in s){this[r]=s[r];}};var f=/^([#.]?)((?:[\w-]+|\*))$/,h=/\[.+[*$^]=(?:""|'')?\]/,g={};k.search=function(U,z,H,s){var p=this.found=(s)?null:(H||[]);
if(!U){return p;}else{if(U.navigator){U=U.document;}else{if(!U.nodeType){return p;}}}var F,O,V=this.uniques={},I=!!(H&&H.length),y=(U.nodeType==9);if(this.document!==(y?U:U.ownerDocument)){this.setDocument(U);
}if(I){for(O=p.length;O--;){V[this.getUID(p[O])]=true;}}if(typeof z=="string"){var r=z.match(f);simpleSelectors:if(r){var u=r[1],v=r[2],A,E;if(!u){if(v=="*"&&this.brokenStarGEBTN){break simpleSelectors;
}E=U.getElementsByTagName(v);if(s){return E[0]||null;}for(O=0;A=E[O++];){if(!(I&&V[this.getUID(A)])){p.push(A);}}}else{if(u=="#"){if(!this.isHTMLDocument||!y){break simpleSelectors;
}A=U.getElementById(v);if(!A){return p;}if(this.idGetsName&&A.getAttributeNode("id").nodeValue!=v){break simpleSelectors;}if(s){return A||null;}if(!(I&&V[this.getUID(A)])){p.push(A);
}}else{if(u=="."){if(!this.isHTMLDocument||((!U.getElementsByClassName||this.brokenGEBCN)&&U.querySelectorAll)){break simpleSelectors;}if(U.getElementsByClassName&&!this.brokenGEBCN){E=U.getElementsByClassName(v);
if(s){return E[0]||null;}for(O=0;A=E[O++];){if(!(I&&V[this.getUID(A)])){p.push(A);}}}else{var T=new RegExp("(^|\\s)"+e.escapeRegExp(v)+"(\\s|$)");E=U.getElementsByTagName("*");
for(O=0;A=E[O++];){className=A.className;if(!(className&&T.test(className))){continue;}if(s){return A;}if(!(I&&V[this.getUID(A)])){p.push(A);}}}}}}if(I){this.sort(p);
}return(s)?null:p;}querySelector:if(U.querySelectorAll){if(!this.isHTMLDocument||g[z]||this.brokenMixedCaseQSA||(this.brokenCheckedQSA&&z.indexOf(":checked")>-1)||(this.brokenEmptyAttributeQSA&&h.test(z))||(!y&&z.indexOf(",")>-1)||e.disableQSA){break querySelector;
}var S=z,x=U;if(!y){var C=x.getAttribute("id"),t="slickid__";x.setAttribute("id",t);S="#"+t+" "+S;U=x.parentNode;}try{if(s){return U.querySelector(S)||null;
}else{E=U.querySelectorAll(S);}}catch(Q){g[z]=1;break querySelector;}finally{if(!y){if(C){x.setAttribute("id",C);}else{x.removeAttribute("id");}U=x;}}if(this.starSelectsClosedQSA){for(O=0;
A=E[O++];){if(A.nodeName>"@"&&!(I&&V[this.getUID(A)])){p.push(A);}}}else{for(O=0;A=E[O++];){if(!(I&&V[this.getUID(A)])){p.push(A);}}}if(I){this.sort(p);
}return p;}F=this.Slick.parse(z);if(!F.length){return p;}}else{if(z==null){return p;}else{if(z.Slick){F=z;}else{if(this.contains(U.documentElement||U,z)){(p)?p.push(z):p=z;
return p;}else{return p;}}}}this.posNTH={};this.posNTHLast={};this.posNTHType={};this.posNTHTypeLast={};this.push=(!I&&(s||(F.length==1&&F.expressions[0].length==1)))?this.pushArray:this.pushUID;
if(p==null){p=[];}var M,L,K;var B,J,D,c,q,G,W;var N,P,o,w,R=F.expressions;search:for(O=0;(P=R[O]);O++){for(M=0;(o=P[M]);M++){B="combinator:"+o.combinator;
if(!this[B]){continue search;}J=(this.isXMLDocument)?o.tag:o.tag.toUpperCase();D=o.id;c=o.classList;q=o.classes;G=o.attributes;W=o.pseudos;w=(M===(P.length-1));
this.bitUniques={};if(w){this.uniques=V;this.found=p;}else{this.uniques={};this.found=[];}if(M===0){this[B](U,J,D,q,G,W,c);if(s&&w&&p.length){break search;
}}else{if(s&&w){for(L=0,K=N.length;L<K;L++){this[B](N[L],J,D,q,G,W,c);if(p.length){break search;}}}else{for(L=0,K=N.length;L<K;L++){this[B](N[L],J,D,q,G,W,c);
}}}N=this.found;}}if(I||(F.expressions.length>1)){this.sort(p);}return(s)?(p[0]||null):p;};k.uidx=1;k.uidk="slick-uniqueid";k.getUIDXML=function(n){var c=n.getAttribute(this.uidk);
if(!c){c=this.uidx++;n.setAttribute(this.uidk,c);}return c;};k.getUIDHTML=function(c){return c.uniqueNumber||(c.uniqueNumber=this.uidx++);};k.sort=function(c){if(!this.documentSorter){return c;
}c.sort(this.documentSorter);return c;};k.cacheNTH={};k.matchNTH=/^([+-]?\d*)?([a-z]+)?([+-]\d+)?$/;k.parseNTHArgument=function(q){var o=q.match(this.matchNTH);
if(!o){return false;}var p=o[2]||false;var n=o[1]||1;if(n=="-"){n=-1;}var c=+o[3]||0;o=(p=="n")?{a:n,b:c}:(p=="odd")?{a:2,b:1}:(p=="even")?{a:2,b:0}:{a:0,b:n};
return(this.cacheNTH[q]=o);};k.createNTHPseudo=function(p,n,c,o){return function(s,q){var u=this.getUID(s);if(!this[c][u]){var A=s.parentNode;if(!A){return false;
}var r=A[p],t=1;if(o){var z=s.nodeName;do{if(r.nodeName!=z){continue;}this[c][this.getUID(r)]=t++;}while((r=r[n]));}else{do{if(r.nodeType!=1){continue;
}this[c][this.getUID(r)]=t++;}while((r=r[n]));}}q=q||"n";var v=this.cacheNTH[q]||this.parseNTHArgument(q);if(!v){return false;}var y=v.a,x=v.b,w=this[c][u];
if(y==0){return x==w;}if(y>0){if(w<x){return false;}}else{if(x<w){return false;}}return((w-x)%y)==0;};};k.pushArray=function(p,c,r,o,n,q){if(this.matchSelector(p,c,r,o,n,q)){this.found.push(p);
}};k.pushUID=function(q,c,s,p,n,r){var o=this.getUID(q);if(!this.uniques[o]&&this.matchSelector(q,c,s,p,n,r)){this.uniques[o]=true;this.found.push(q);}};
k.matchNode=function(n,o){if(this.isHTMLDocument&&this.nativeMatchesSelector){try{return this.nativeMatchesSelector.call(n,o.replace(/\[([^=]+)=\s*([^'"\]]+?)\s*\]/g,'[$1="$2"]'));
}catch(u){}}var t=this.Slick.parse(o);if(!t){return true;}var r=t.expressions,s=0,q;for(q=0;(currentExpression=r[q]);q++){if(currentExpression.length==1){var p=currentExpression[0];
if(this.matchSelector(n,(this.isXMLDocument)?p.tag:p.tag.toUpperCase(),p.id,p.classes,p.attributes,p.pseudos)){return true;}s++;}}if(s==t.length){return false;
}var c=this.search(this.document,t),v;for(q=0;v=c[q++];){if(v===n){return true;}}return false;};k.matchPseudo=function(q,c,p){var n="pseudo:"+c;if(this[n]){return this[n](q,p);
}var o=this.getAttribute(q,c);return(p)?p==o:!!o;};k.matchSelector=function(o,v,c,p,q,s){if(v){var t=(this.isXMLDocument)?o.nodeName:o.nodeName.toUpperCase();
if(v=="*"){if(t<"@"){return false;}}else{if(t!=v){return false;}}}if(c&&o.getAttribute("id")!=c){return false;}var r,n,u;if(p){for(r=p.length;r--;){u=this.getAttribute(o,"class");
if(!(u&&p[r].regexp.test(u))){return false;}}}if(q){for(r=q.length;r--;){n=q[r];if(n.operator?!n.test(this.getAttribute(o,n.key)):!this.hasAttribute(o,n.key)){return false;
}}}if(s){for(r=s.length;r--;){n=s[r];if(!this.matchPseudo(o,n.key,n.value)){return false;}}}return true;};var j={" ":function(q,w,n,r,s,u,p){var t,v,o;
if(this.isHTMLDocument){getById:if(n){v=this.document.getElementById(n);if((!v&&q.all)||(this.idGetsName&&v&&v.getAttributeNode("id").nodeValue!=n)){o=q.all[n];
if(!o){return;}if(!o[0]){o=[o];}for(t=0;v=o[t++];){var c=v.getAttributeNode("id");if(c&&c.nodeValue==n){this.push(v,w,null,r,s,u);break;}}return;}if(!v){if(this.contains(this.root,q)){return;
}else{break getById;}}else{if(this.document!==q&&!this.contains(q,v)){return;}}this.push(v,w,null,r,s,u);return;}getByClass:if(r&&q.getElementsByClassName&&!this.brokenGEBCN){o=q.getElementsByClassName(p.join(" "));
if(!(o&&o.length)){break getByClass;}for(t=0;v=o[t++];){this.push(v,w,n,null,s,u);}return;}}getByTag:{o=q.getElementsByTagName(w);if(!(o&&o.length)){break getByTag;
}if(!this.brokenStarGEBTN){w=null;}for(t=0;v=o[t++];){this.push(v,w,n,r,s,u);}}},">":function(p,c,r,o,n,q){if((p=p.firstChild)){do{if(p.nodeType==1){this.push(p,c,r,o,n,q);
}}while((p=p.nextSibling));}},"+":function(p,c,r,o,n,q){while((p=p.nextSibling)){if(p.nodeType==1){this.push(p,c,r,o,n,q);break;}}},"^":function(p,c,r,o,n,q){p=p.firstChild;
if(p){if(p.nodeType==1){this.push(p,c,r,o,n,q);}else{this["combinator:+"](p,c,r,o,n,q);}}},"~":function(q,c,s,p,n,r){while((q=q.nextSibling)){if(q.nodeType!=1){continue;
}var o=this.getUID(q);if(this.bitUniques[o]){break;}this.bitUniques[o]=true;this.push(q,c,s,p,n,r);}},"++":function(p,c,r,o,n,q){this["combinator:+"](p,c,r,o,n,q);
this["combinator:!+"](p,c,r,o,n,q);},"~~":function(p,c,r,o,n,q){this["combinator:~"](p,c,r,o,n,q);this["combinator:!~"](p,c,r,o,n,q);},"!":function(p,c,r,o,n,q){while((p=p.parentNode)){if(p!==this.document){this.push(p,c,r,o,n,q);
}}},"!>":function(p,c,r,o,n,q){p=p.parentNode;if(p!==this.document){this.push(p,c,r,o,n,q);}},"!+":function(p,c,r,o,n,q){while((p=p.previousSibling)){if(p.nodeType==1){this.push(p,c,r,o,n,q);
break;}}},"!^":function(p,c,r,o,n,q){p=p.lastChild;if(p){if(p.nodeType==1){this.push(p,c,r,o,n,q);}else{this["combinator:!+"](p,c,r,o,n,q);}}},"!~":function(q,c,s,p,n,r){while((q=q.previousSibling)){if(q.nodeType!=1){continue;
}var o=this.getUID(q);if(this.bitUniques[o]){break;}this.bitUniques[o]=true;this.push(q,c,s,p,n,r);}}};for(var i in j){k["combinator:"+i]=j[i];}var l={empty:function(c){var n=c.firstChild;
return !(n&&n.nodeType==1)&&!(c.innerText||c.textContent||"").length;},not:function(c,n){return !this.matchNode(c,n);},contains:function(c,n){return(c.innerText||c.textContent||"").indexOf(n)>-1;
},"first-child":function(c){while((c=c.previousSibling)){if(c.nodeType==1){return false;}}return true;},"last-child":function(c){while((c=c.nextSibling)){if(c.nodeType==1){return false;
}}return true;},"only-child":function(o){var n=o;while((n=n.previousSibling)){if(n.nodeType==1){return false;}}var c=o;while((c=c.nextSibling)){if(c.nodeType==1){return false;
}}return true;},"nth-child":k.createNTHPseudo("firstChild","nextSibling","posNTH"),"nth-last-child":k.createNTHPseudo("lastChild","previousSibling","posNTHLast"),"nth-of-type":k.createNTHPseudo("firstChild","nextSibling","posNTHType",true),"nth-last-of-type":k.createNTHPseudo("lastChild","previousSibling","posNTHTypeLast",true),index:function(n,c){return this["pseudo:nth-child"](n,""+(c+1));
},even:function(c){return this["pseudo:nth-child"](c,"2n");},odd:function(c){return this["pseudo:nth-child"](c,"2n+1");},"first-of-type":function(c){var n=c.nodeName;
while((c=c.previousSibling)){if(c.nodeName==n){return false;}}return true;},"last-of-type":function(c){var n=c.nodeName;while((c=c.nextSibling)){if(c.nodeName==n){return false;
}}return true;},"only-of-type":function(o){var n=o,p=o.nodeName;while((n=n.previousSibling)){if(n.nodeName==p){return false;}}var c=o;while((c=c.nextSibling)){if(c.nodeName==p){return false;
}}return true;},enabled:function(c){return !c.disabled;},disabled:function(c){return c.disabled;},checked:function(c){return c.checked||c.selected;},focus:function(c){return this.isHTMLDocument&&this.document.activeElement===c&&(c.href||c.type||this.hasAttribute(c,"tabindex"));
},root:function(c){return(c===this.root);},selected:function(c){return c.selected;}};for(var b in l){k["pseudo:"+b]=l[b];}var a=k.attributeGetters={"for":function(){return("htmlFor" in this)?this.htmlFor:this.getAttribute("for");
},href:function(){return("href" in this)?this.getAttribute("href",2):this.getAttribute("href");},style:function(){return(this.style)?this.style.cssText:this.getAttribute("style");
},tabindex:function(){var c=this.getAttributeNode("tabindex");return(c&&c.specified)?c.nodeValue:null;},type:function(){return this.getAttribute("type");
},maxlength:function(){var c=this.getAttributeNode("maxLength");return(c&&c.specified)?c.nodeValue:null;}};a.MAXLENGTH=a.maxLength=a.maxlength;var e=k.Slick=(this.Slick||{});
e.version="1.1.7";e.search=function(n,o,c){return k.search(n,o,c);};e.find=function(c,n){return k.search(c,n,null,true);};e.contains=function(c,n){k.setDocument(c);
return k.contains(c,n);};e.getAttribute=function(n,c){k.setDocument(n);return k.getAttribute(n,c);};e.hasAttribute=function(n,c){k.setDocument(n);return k.hasAttribute(n,c);
};e.match=function(n,c){if(!(n&&c)){return false;}if(!c||c===n){return true;}k.setDocument(n);return k.matchNode(n,c);};e.defineAttributeGetter=function(c,n){k.attributeGetters[c]=n;
return this;};e.lookupAttributeGetter=function(c){return k.attributeGetters[c];};e.definePseudo=function(c,n){k["pseudo:"+c]=function(p,o){return n.call(p,o);
};return this;};e.lookupPseudo=function(c){var n=k["pseudo:"+c];if(n){return function(o){return n.call(this,o);};}return null;};e.override=function(n,c){k.override(n,c);
return this;};e.isXML=k.isXML;e.uidOf=function(c){return k.getUIDHTML(c);};if(!this.Slick){this.Slick=e;}}).apply((typeof exports!="undefined")?exports:this);
var Element=function(b,g){var h=Element.Constructors[b];if(h){return h(g);}if(typeof b!="string"){return document.id(b).set(g);}if(!g){g={};}if(!(/^[\w-]+$/).test(b)){var e=Slick.parse(b).expressions[0][0];
b=(e.tag=="*")?"div":e.tag;if(e.id&&g.id==null){g.id=e.id;}var d=e.attributes;if(d){for(var a,f=0,c=d.length;f<c;f++){a=d[f];if(g[a.key]!=null){continue;
}if(a.value!=null&&a.operator=="="){g[a.key]=a.value;}else{if(!a.value&&!a.operator){g[a.key]=true;}}}}if(e.classList&&g["class"]==null){g["class"]=e.classList.join(" ");
}}return document.newElement(b,g);};if(Browser.Element){Element.prototype=Browser.Element.prototype;Element.prototype._fireEvent=(function(a){return function(b,c){return a.call(this,b,c);
};})(Element.prototype.fireEvent);}new Type("Element",Element).mirror(function(a){if(Array.prototype[a]){return;}var b={};b[a]=function(){var h=[],e=arguments,j=true;
for(var g=0,d=this.length;g<d;g++){var f=this[g],c=h[g]=f[a].apply(f,e);j=(j&&typeOf(c)=="element");}return(j)?new Elements(h):h;};Elements.implement(b);
});if(!Browser.Element){Element.parent=Object;Element.Prototype={"$constructor":Element,"$family":Function.from("element").hide()};Element.mirror(function(a,b){Element.Prototype[a]=b;
});}Element.Constructors={};Element.Constructors=new Hash;var IFrame=new Type("IFrame",function(){var e=Array.link(arguments,{properties:Type.isObject,iframe:function(f){return(f!=null);
}});var c=e.properties||{},b;if(e.iframe){b=document.id(e.iframe);}var d=c.onload||function(){};delete c.onload;c.id=c.name=[c.id,c.name,b?(b.id||b.name):"IFrame_"+String.uniqueID()].pick();
b=new Element(b||"iframe",c);var a=function(){d.call(b.contentWindow);};if(window.frames[c.id]){a();}else{b.addListener("load",a);}return b;});var Elements=this.Elements=function(a){if(a&&a.length){var e={},d;
for(var c=0;d=a[c++];){var b=Slick.uidOf(d);if(!e[b]){e[b]=true;this.push(d);}}}};Elements.prototype={length:0};Elements.parent=Array;new Type("Elements",Elements).implement({filter:function(a,b){if(!a){return this;
}return new Elements(Array.filter(this,(typeOf(a)=="string")?function(c){return c.match(a);}:a,b));}.protect(),push:function(){var d=this.length;for(var b=0,a=arguments.length;
b<a;b++){var c=document.id(arguments[b]);if(c){this[d++]=c;}}return(this.length=d);}.protect(),unshift:function(){var b=[];for(var c=0,a=arguments.length;
c<a;c++){var d=document.id(arguments[c]);if(d){b.push(d);}}return Array.prototype.unshift.apply(this,b);}.protect(),concat:function(){var b=new Elements(this);
for(var c=0,a=arguments.length;c<a;c++){var d=arguments[c];if(Type.isEnumerable(d)){b.append(d);}else{b.push(d);}}return b;}.protect(),append:function(c){for(var b=0,a=c.length;
b<a;b++){this.push(c[b]);}return this;}.protect(),empty:function(){while(this.length){delete this[--this.length];}return this;}.protect()});Elements.alias("extend","append");
(function(){var f=Array.prototype.splice,a={"0":0,"1":1,length:2};f.call(a,1,1);if(a[1]==1){Elements.implement("splice",function(){var g=this.length;var e=f.apply(this,arguments);
while(g>=this.length){delete this[g--];}return e;}.protect());}Array.forEachMethod(function(g,e){Elements.implement(e,g);});Array.mirror(Elements);var d;
try{d=(document.createElement("<input name=x>").name=="x");}catch(b){}var c=function(e){return(""+e).replace(/&/g,"&amp;").replace(/"/g,"&quot;");};Document.implement({newElement:function(e,g){if(g&&g.checked!=null){g.defaultChecked=g.checked;
}if(d&&g){e="<"+e;if(g.name){e+=' name="'+c(g.name)+'"';}if(g.type){e+=' type="'+c(g.type)+'"';}e+=">";delete g.name;delete g.type;}return this.id(this.createElement(e)).set(g);
}});})();(function(){Slick.uidOf(window);Slick.uidOf(document);Document.implement({newTextNode:function(e){return this.createTextNode(e);},getDocument:function(){return this;
},getWindow:function(){return this.window;},id:(function(){var e={string:function(E,D,l){E=Slick.find(l,"#"+E.replace(/(\W)/g,"\\$1"));return(E)?e.element(E,D):null;
},element:function(D,E){Slick.uidOf(D);if(!E&&!D.$family&&!(/^(?:object|embed)$/i).test(D.tagName)){var l=D.fireEvent;D._fireEvent=function(F,G){return l(F,G);
};Object.append(D,Element.Prototype);}return D;},object:function(D,E,l){if(D.toElement){return e.element(D.toElement(l),E);}return null;}};e.textnode=e.whitespace=e.window=e.document=function(l){return l;
};return function(D,F,E){if(D&&D.$family&&D.uniqueNumber){return D;}var l=typeOf(D);return(e[l])?e[l](D,F,E||document):null;};})()});if(window.$==null){Window.implement("$",function(e,l){return document.id(e,l,this.document);
});}Window.implement({getDocument:function(){return this.document;},getWindow:function(){return this;}});[Document,Element].invoke("implement",{getElements:function(e){return Slick.search(this,e,new Elements);
},getElement:function(e){return document.id(Slick.find(this,e));}});var m={contains:function(e){return Slick.contains(this,e);}};if(!document.contains){Document.implement(m);
}if(!document.createElement("div").contains){Element.implement(m);}Element.implement("hasChild",function(e){return this!==e&&this.contains(e);});(function(l,E,e){this.Selectors={};
var F=this.Selectors.Pseudo=new Hash();var D=function(){for(var G in F){if(F.hasOwnProperty(G)){Slick.definePseudo(G,F[G]);delete F[G];}}};Slick.search=function(H,I,G){D();
return l.call(this,H,I,G);};Slick.find=function(G,H){D();return E.call(this,G,H);};Slick.match=function(H,G){D();return e.call(this,H,G);};})(Slick.search,Slick.find,Slick.match);
var r=function(E,D){if(!E){return D;}E=Object.clone(Slick.parse(E));var l=E.expressions;for(var e=l.length;e--;){l[e][0].combinator=D;}return E;};Object.forEach({getNext:"~",getPrevious:"!~",getParent:"!"},function(e,l){Element.implement(l,function(D){return this.getElement(r(D,e));
});});Object.forEach({getAllNext:"~",getAllPrevious:"!~",getSiblings:"~~",getChildren:">",getParents:"!"},function(e,l){Element.implement(l,function(D){return this.getElements(r(D,e));
});});Element.implement({getFirst:function(e){return document.id(Slick.search(this,r(e,">"))[0]);},getLast:function(e){return document.id(Slick.search(this,r(e,">")).getLast());
},getWindow:function(){return this.ownerDocument.window;},getDocument:function(){return this.ownerDocument;},getElementById:function(e){return document.id(Slick.find(this,"#"+(""+e).replace(/(\W)/g,"\\$1")));
},match:function(e){return !e||Slick.match(this,e);}});if(window.$$==null){Window.implement("$$",function(e){var H=new Elements;if(arguments.length==1&&typeof e=="string"){return Slick.search(this.document,e,H);
}var E=Array.flatten(arguments);for(var F=0,D=E.length;F<D;F++){var G=E[F];switch(typeOf(G)){case"element":H.push(G);break;case"string":Slick.search(this.document,G,H);
}}return H;});}if(window.$$==null){Window.implement("$$",function(e){if(arguments.length==1){if(typeof e=="string"){return Slick.search(this.document,e,new Elements);
}else{if(Type.isEnumerable(e)){return new Elements(e);}}}return new Elements(arguments);});}var w={before:function(l,e){var D=e.parentNode;if(D){D.insertBefore(l,e);
}},after:function(l,e){var D=e.parentNode;if(D){D.insertBefore(l,e.nextSibling);}},bottom:function(l,e){e.appendChild(l);},top:function(l,e){e.insertBefore(l,e.firstChild);
}};w.inside=w.bottom;Object.each(w,function(l,D){D=D.capitalize();var e={};e["inject"+D]=function(E){l(this,document.id(E,true));return this;};e["grab"+D]=function(E){l(document.id(E,true),this);
return this;};Element.implement(e);});var j={},d={};var k={};Array.forEach(["type","value","defaultValue","accessKey","cellPadding","cellSpacing","colSpan","frameBorder","rowSpan","tabIndex","useMap"],function(e){k[e.toLowerCase()]=e;
});k.html="innerHTML";k.text=(document.createElement("div").textContent==null)?"innerText":"textContent";Object.forEach(k,function(l,e){d[e]=function(D,E){D[l]=E;
};j[e]=function(D){return D[l];};});var x=["compact","nowrap","ismap","declare","noshade","checked","disabled","readOnly","multiple","selected","noresize","defer","defaultChecked","autofocus","controls","autoplay","loop"];
var h={};Array.forEach(x,function(e){var l=e.toLowerCase();h[l]=e;d[l]=function(D,E){D[e]=!!E;};j[l]=function(D){return !!D[e];};});Object.append(d,{"class":function(e,l){("className" in e)?e.className=(l||""):e.setAttribute("class",l);
},"for":function(e,l){("htmlFor" in e)?e.htmlFor=l:e.setAttribute("for",l);},style:function(e,l){(e.style)?e.style.cssText=l:e.setAttribute("style",l);
},value:function(e,l){e.value=(l!=null)?l:"";}});j["class"]=function(e){return("className" in e)?e.className||null:e.getAttribute("class");};var f=document.createElement("button");
try{f.type="button";}catch(z){}if(f.type!="button"){d.type=function(e,l){e.setAttribute("type",l);};}f=null;var p=document.createElement("input");p.value="t";
p.type="submit";if(p.value!="t"){d.type=function(l,e){var D=l.value;l.type=e;l.value=D;};}p=null;var q=(function(e){e.random="attribute";return(e.getAttribute("random")=="attribute");
})(document.createElement("div"));Element.implement({setProperty:function(l,D){var E=d[l.toLowerCase()];if(E){E(this,D);}else{if(q){var e=this.retrieve("$attributeWhiteList",{});
}if(D==null){this.removeAttribute(l);if(q){delete e[l];}}else{this.setAttribute(l,""+D);if(q){e[l]=true;}}}return this;},setProperties:function(e){for(var l in e){this.setProperty(l,e[l]);
}return this;},getProperty:function(F){var D=j[F.toLowerCase()];if(D){return D(this);}if(q){var l=this.getAttributeNode(F),E=this.retrieve("$attributeWhiteList",{});
if(!l){return null;}if(l.expando&&!E[F]){var G=this.outerHTML;if(G.substr(0,G.search(/\/?['"]?>(?![^<]*<['"])/)).indexOf(F)<0){return null;}E[F]=true;}}var e=Slick.getAttribute(this,F);
return(!e&&!Slick.hasAttribute(this,F))?null:e;},getProperties:function(){var e=Array.from(arguments);return e.map(this.getProperty,this).associate(e);
},removeProperty:function(e){return this.setProperty(e,null);},removeProperties:function(){Array.each(arguments,this.removeProperty,this);return this;},set:function(D,l){var e=Element.Properties[D];
(e&&e.set)?e.set.call(this,l):this.setProperty(D,l);}.overloadSetter(),get:function(l){var e=Element.Properties[l];return(e&&e.get)?e.get.apply(this):this.getProperty(l);
}.overloadGetter(),erase:function(l){var e=Element.Properties[l];(e&&e.erase)?e.erase.apply(this):this.removeProperty(l);return this;},hasClass:function(e){return this.className.clean().contains(e," ");
},addClass:function(e){if(!this.hasClass(e)){this.className=(this.className+" "+e).clean();}return this;},removeClass:function(e){this.className=this.className.replace(new RegExp("(^|\\s)"+e+"(?:\\s|$)"),"$1");
return this;},toggleClass:function(e,l){if(l==null){l=!this.hasClass(e);}return(l)?this.addClass(e):this.removeClass(e);},adopt:function(){var E=this,e,G=Array.flatten(arguments),F=G.length;
if(F>1){E=e=document.createDocumentFragment();}for(var D=0;D<F;D++){var l=document.id(G[D],true);if(l){E.appendChild(l);}}if(e){this.appendChild(e);}return this;
},appendText:function(l,e){return this.grab(this.getDocument().newTextNode(l),e);},grab:function(l,e){w[e||"bottom"](document.id(l,true),this);return this;
},inject:function(l,e){w[e||"bottom"](this,document.id(l,true));return this;},replaces:function(e){e=document.id(e,true);e.parentNode.replaceChild(this,e);
return this;},wraps:function(l,e){l=document.id(l,true);return this.replaces(l).grab(l,e);},getSelected:function(){this.selectedIndex;return new Elements(Array.from(this.options).filter(function(e){return e.selected;
}));},toQueryString:function(){var e=[];this.getElements("input, select, textarea").each(function(D){var l=D.type;if(!D.name||D.disabled||l=="submit"||l=="reset"||l=="file"||l=="image"){return;
}var E=(D.get("tag")=="select")?D.getSelected().map(function(F){return document.id(F).get("value");}):((l=="radio"||l=="checkbox")&&!D.checked)?null:D.get("value");
Array.from(E).each(function(F){if(typeof F!="undefined"){e.push(encodeURIComponent(D.name)+"="+encodeURIComponent(F));}});});return e.join("&");}});var i={},A={};
var B=function(e){return(A[e]||(A[e]={}));};var v=function(l){var e=l.uniqueNumber;if(l.removeEvents){l.removeEvents();}if(l.clearAttributes){l.clearAttributes();
}if(e!=null){delete i[e];delete A[e];}return l;};var C={input:"checked",option:"selected",textarea:"value"};Element.implement({destroy:function(){var e=v(this).getElementsByTagName("*");
Array.each(e,v);Element.dispose(this);return null;},empty:function(){Array.from(this.childNodes).each(Element.dispose);return this;},dispose:function(){return(this.parentNode)?this.parentNode.removeChild(this):this;
},clone:function(G,E){G=G!==false;var L=this.cloneNode(G),D=[L],F=[this],J;if(G){D.append(Array.from(L.getElementsByTagName("*")));F.append(Array.from(this.getElementsByTagName("*")));
}for(J=D.length;J--;){var H=D[J],K=F[J];if(!E){H.removeAttribute("id");}if(H.clearAttributes){H.clearAttributes();H.mergeAttributes(K);H.removeAttribute("uniqueNumber");
if(H.options){var O=H.options,e=K.options;for(var I=O.length;I--;){O[I].selected=e[I].selected;}}}var l=C[K.tagName.toLowerCase()];if(l&&K[l]){H[l]=K[l];
}}if(Browser.ie){var M=L.getElementsByTagName("object"),N=this.getElementsByTagName("object");for(J=M.length;J--;){M[J].outerHTML=N[J].outerHTML;}}return document.id(L);
}});[Element,Window,Document].invoke("implement",{addListener:function(E,D){if(E=="unload"){var e=D,l=this;D=function(){l.removeListener("unload",D);e();
};}else{i[Slick.uidOf(this)]=this;}if(this.addEventListener){this.addEventListener(E,D,!!arguments[2]);}else{this.attachEvent("on"+E,D);}return this;},removeListener:function(l,e){if(this.removeEventListener){this.removeEventListener(l,e,!!arguments[2]);
}else{this.detachEvent("on"+l,e);}return this;},retrieve:function(l,e){var E=B(Slick.uidOf(this)),D=E[l];if(e!=null&&D==null){D=E[l]=e;}return D!=null?D:null;
},store:function(l,e){var D=B(Slick.uidOf(this));D[l]=e;return this;},eliminate:function(e){var l=B(Slick.uidOf(this));delete l[e];return this;}});if(window.attachEvent&&!window.addEventListener){window.addListener("unload",function(){Object.each(i,v);
if(window.CollectGarbage){CollectGarbage();}});}Element.Properties={};Element.Properties=new Hash;Element.Properties.style={set:function(e){this.style.cssText=e;
},get:function(){return this.style.cssText;},erase:function(){this.style.cssText="";}};Element.Properties.tag={get:function(){return this.tagName.toLowerCase();
}};Element.Properties.html={set:function(e){if(e==null){e="";}else{if(typeOf(e)=="array"){e=e.join("");}}this.innerHTML=e;},erase:function(){this.innerHTML="";
}};var t=document.createElement("div");t.innerHTML="<nav></nav>";var a=(t.childNodes.length==1);if(!a){var s="abbr article aside audio canvas datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video".split(" "),b=document.createDocumentFragment(),u=s.length;
while(u--){b.createElement(s[u]);}}t=null;var g=Function.attempt(function(){var e=document.createElement("table");e.innerHTML="<tr><td></td></tr>";return true;
});var c=document.createElement("tr"),o="<td></td>";c.innerHTML=o;var y=(c.innerHTML==o);c=null;if(!g||!y||!a){Element.Properties.html.set=(function(l){var e={table:[1,"<table>","</table>"],select:[1,"<select>","</select>"],tbody:[2,"<table><tbody>","</tbody></table>"],tr:[3,"<table><tbody><tr>","</tr></tbody></table>"]};
e.thead=e.tfoot=e.tbody;return function(D){var E=e[this.get("tag")];if(!E&&!a){E=[0,"",""];}if(!E){return l.call(this,D);}var H=E[0],G=document.createElement("div"),F=G;
if(!a){b.appendChild(G);}G.innerHTML=[E[1],D,E[2]].flatten().join("");while(H--){F=F.firstChild;}this.empty().adopt(F.childNodes);if(!a){b.removeChild(G);
}G=null;};})(Element.Properties.html.set);}var n=document.createElement("form");n.innerHTML="<select><option>s</option></select>";if(n.firstChild.value!="s"){Element.Properties.value={set:function(G){var l=this.get("tag");
if(l!="select"){return this.setProperty("value",G);}var D=this.getElements("option");for(var E=0;E<D.length;E++){var F=D[E],e=F.getAttributeNode("value"),H=(e&&e.specified)?F.value:F.get("text");
if(H==G){return F.selected=true;}}},get:function(){var D=this,l=D.get("tag");if(l!="select"&&l!="option"){return this.getProperty("value");}if(l=="select"&&!(D=D.getSelected()[0])){return"";
}var e=D.getAttributeNode("value");return(e&&e.specified)?D.value:D.get("text");}};}n=null;if(document.createElement("div").getAttributeNode("id")){Element.Properties.id={set:function(e){this.id=this.getAttributeNode("id").value=e;
},get:function(){return this.id||null;},erase:function(){this.id=this.getAttributeNode("id").value="";}};}})();(function(){var i=document.html;var d=document.createElement("div");
d.style.color="red";d.style.color=null;var c=d.style.color=="red";d=null;Element.Properties.styles={set:function(k){this.setStyles(k);}};var h=(i.style.opacity!=null),e=(i.style.filter!=null),j=/alpha\(opacity=([\d.]+)\)/i;
var a=function(l,k){l.store("$opacity",k);l.style.visibility=k>0||k==null?"visible":"hidden";};var f=(h?function(l,k){l.style.opacity=k;}:(e?function(l,k){var n=l.style;
if(!l.currentStyle||!l.currentStyle.hasLayout){n.zoom=1;}if(k==null||k==1){k="";}else{k="alpha(opacity="+(k*100).limit(0,100).round()+")";}var m=n.filter||l.getComputedStyle("filter")||"";
n.filter=j.test(m)?m.replace(j,k):m+k;if(!n.filter){n.removeAttribute("filter");}}:a));var g=(h?function(l){var k=l.style.opacity||l.getComputedStyle("opacity");
return(k=="")?1:k.toFloat();}:(e?function(l){var m=(l.style.filter||l.getComputedStyle("filter")),k;if(m){k=m.match(j);}return(k==null||m==null)?1:(k[1]/100);
}:function(l){var k=l.retrieve("$opacity");if(k==null){k=(l.style.visibility=="hidden"?0:1);}return k;}));var b=(i.style.cssFloat==null)?"styleFloat":"cssFloat";
Element.implement({getComputedStyle:function(m){if(this.currentStyle){return this.currentStyle[m.camelCase()];}var l=Element.getDocument(this).defaultView,k=l?l.getComputedStyle(this,null):null;
return(k)?k.getPropertyValue((m==b)?"float":m.hyphenate()):null;},setStyle:function(l,k){if(l=="opacity"){if(k!=null){k=parseFloat(k);}f(this,k);return this;
}l=(l=="float"?b:l).camelCase();if(typeOf(k)!="string"){var m=(Element.Styles[l]||"@").split(" ");k=Array.from(k).map(function(o,n){if(!m[n]){return"";
}return(typeOf(o)=="number")?m[n].replace("@",Math.round(o)):o;}).join(" ");}else{if(k==String(Number(k))){k=Math.round(k);}}this.style[l]=k;if((k==""||k==null)&&c&&this.style.removeAttribute){this.style.removeAttribute(l);
}return this;},getStyle:function(q){if(q=="opacity"){return g(this);}q=(q=="float"?b:q).camelCase();var k=this.style[q];if(!k||q=="zIndex"){k=[];for(var p in Element.ShortStyles){if(q!=p){continue;
}for(var o in Element.ShortStyles[p]){k.push(this.getStyle(o));}return k.join(" ");}k=this.getComputedStyle(q);}if(k){k=String(k);var m=k.match(/rgba?\([\d\s,]+\)/);
if(m){k=k.replace(m[0],m[0].rgbToHex());}}if(Browser.opera||Browser.ie){if((/^(height|width)$/).test(q)&&!(/px$/.test(k))){var l=(q=="width")?["left","right"]:["top","bottom"],n=0;
l.each(function(r){n+=this.getStyle("border-"+r+"-width").toInt()+this.getStyle("padding-"+r).toInt();},this);return this["offset"+q.capitalize()]-n+"px";
}if(Browser.ie&&(/^border(.+)Width|margin|padding/).test(q)&&isNaN(parseFloat(k))){return"0px";}}return k;},setStyles:function(l){for(var k in l){this.setStyle(k,l[k]);
}return this;},getStyles:function(){var k={};Array.flatten(arguments).each(function(l){k[l]=this.getStyle(l);},this);return k;}});Element.Styles={left:"@px",top:"@px",bottom:"@px",right:"@px",width:"@px",height:"@px",maxWidth:"@px",maxHeight:"@px",minWidth:"@px",minHeight:"@px",backgroundColor:"rgb(@, @, @)",backgroundPosition:"@px @px",color:"rgb(@, @, @)",fontSize:"@px",letterSpacing:"@px",lineHeight:"@px",clip:"rect(@px @px @px @px)",margin:"@px @px @px @px",padding:"@px @px @px @px",border:"@px @ rgb(@, @, @) @px @ rgb(@, @, @) @px @ rgb(@, @, @)",borderWidth:"@px @px @px @px",borderStyle:"@ @ @ @",borderColor:"rgb(@, @, @) rgb(@, @, @) rgb(@, @, @) rgb(@, @, @)",zIndex:"@",zoom:"@",fontWeight:"@",textIndent:"@px",opacity:"@"};
Element.implement({setOpacity:function(k){f(this,k);return this;},getOpacity:function(){return g(this);}});Element.Properties.opacity={set:function(k){f(this,k);
a(this,k);},get:function(){return g(this);}};Element.Styles=new Hash(Element.Styles);Element.ShortStyles={margin:{},padding:{},border:{},borderWidth:{},borderStyle:{},borderColor:{}};
["Top","Right","Bottom","Left"].each(function(q){var p=Element.ShortStyles;var l=Element.Styles;["margin","padding"].each(function(r){var s=r+q;p[r][s]=l[s]="@px";
});var o="border"+q;p.border[o]=l[o]="@px @ rgb(@, @, @)";var n=o+"Width",k=o+"Style",m=o+"Color";p[o]={};p.borderWidth[n]=p[o][n]=l[n]="@px";p.borderStyle[k]=p[o][k]=l[k]="@";
p.borderColor[m]=p[o][m]=l[m]="rgb(@, @, @)";});})();(function(){Element.Properties.events={set:function(b){this.addEvents(b);}};[Element,Window,Document].invoke("implement",{addEvent:function(f,h){var i=this.retrieve("events",{});
if(!i[f]){i[f]={keys:[],values:[]};}if(i[f].keys.contains(h)){return this;}i[f].keys.push(h);var g=f,b=Element.Events[f],d=h,j=this;if(b){if(b.onAdd){b.onAdd.call(this,h,f);
}if(b.condition){d=function(k){if(b.condition.call(this,k,f)){return h.call(this,k);}return true;};}if(b.base){g=Function.from(b.base).call(this,f);}}var e=function(){return h.call(j);
};var c=Element.NativeEvents[g];if(c){if(c==2){e=function(k){k=new DOMEvent(k,j.getWindow());if(d.call(j,k)===false){k.stop();}};}this.addListener(g,e,arguments[2]);
}i[f].values.push(e);return this;},removeEvent:function(e,d){var c=this.retrieve("events");if(!c||!c[e]){return this;}var h=c[e];var b=h.keys.indexOf(d);
if(b==-1){return this;}var g=h.values[b];delete h.keys[b];delete h.values[b];var f=Element.Events[e];if(f){if(f.onRemove){f.onRemove.call(this,d,e);}if(f.base){e=Function.from(f.base).call(this,e);
}}return(Element.NativeEvents[e])?this.removeListener(e,g,arguments[2]):this;},addEvents:function(b){for(var c in b){this.addEvent(c,b[c]);}return this;
},removeEvents:function(b){var d;if(typeOf(b)=="object"){for(d in b){this.removeEvent(d,b[d]);}return this;}var c=this.retrieve("events");if(!c){return this;
}if(!b){for(d in c){this.removeEvents(d);}this.eliminate("events");}else{if(c[b]){c[b].keys.each(function(e){this.removeEvent(b,e);},this);delete c[b];
}}return this;},fireEvent:function(e,c,b){var d=this.retrieve("events");if(!d||!d[e]){return this;}c=Array.from(c);d[e].keys.each(function(f){if(b){f.delay(b,this,c);
}else{f.apply(this,c);}},this);return this;},cloneEvents:function(e,d){e=document.id(e);var c=e.retrieve("events");if(!c){return this;}if(!d){for(var b in c){this.cloneEvents(e,b);
}}else{if(c[d]){c[d].keys.each(function(f){this.addEvent(d,f);},this);}}return this;}});Element.NativeEvents={click:2,dblclick:2,mouseup:2,mousedown:2,contextmenu:2,mousewheel:2,DOMMouseScroll:2,mouseover:2,mouseout:2,mousemove:2,selectstart:2,selectend:2,keydown:2,keypress:2,keyup:2,orientationchange:2,touchstart:2,touchmove:2,touchend:2,touchcancel:2,gesturestart:2,gesturechange:2,gestureend:2,focus:2,blur:2,change:2,reset:2,select:2,submit:2,paste:2,input:2,load:2,unload:1,beforeunload:2,resize:1,move:1,DOMContentLoaded:1,readystatechange:1,error:1,abort:1,scroll:1};
Element.Events={mousewheel:{base:(Browser.firefox)?"DOMMouseScroll":"mousewheel"}};if("onmouseenter" in document.documentElement){Element.NativeEvents.mouseenter=Element.NativeEvents.mouseleave=2;
}else{var a=function(b){var c=b.relatedTarget;if(c==null){return true;}if(!c){return false;}return(c!=this&&c.prefix!="xul"&&typeOf(this)!="document"&&!this.contains(c));
};Element.Events.mouseenter={base:"mouseover",condition:a};Element.Events.mouseleave={base:"mouseout",condition:a};}if(!window.addEventListener){Element.NativeEvents.propertychange=2;
Element.Events.change={base:function(){var b=this.type;return(this.get("tag")=="input"&&(b=="radio"||b=="checkbox"))?"propertychange":"change";},condition:function(b){return this.type!="radio"||(b.event.propertyName=="checked"&&this.checked);
}};}Element.Events=new Hash(Element.Events);})();(function(){var c=!!window.addEventListener;Element.NativeEvents.focusin=Element.NativeEvents.focusout=2;
var k=function(l,m,n,o,p){while(p&&p!=l){if(m(p,o)){return n.call(p,o,p);}p=document.id(p.parentNode);}};var a={mouseenter:{base:"mouseover"},mouseleave:{base:"mouseout"},focus:{base:"focus"+(c?"":"in"),capture:true},blur:{base:c?"blur":"focusout",capture:true}};
var b="$delegation:";var i=function(l){return{base:"focusin",remove:function(m,o){var p=m.retrieve(b+l+"listeners",{})[o];if(p&&p.forms){for(var n=p.forms.length;
n--;){p.forms[n].removeEvent(l,p.fns[n]);}}},listen:function(x,r,v,n,t,s){var o=(t.get("tag")=="form")?t:n.target.getParent("form");if(!o){return;}var u=x.retrieve(b+l+"listeners",{}),p=u[s]||{forms:[],fns:[]},m=p.forms,w=p.fns;
if(m.indexOf(o)!=-1){return;}m.push(o);var q=function(y){k(x,r,v,y,t);};o.addEvent(l,q);w.push(q);u[s]=p;x.store(b+l+"listeners",u);}};};var d=function(l){return{base:"focusin",listen:function(m,n,p,q,r){var o={blur:function(){this.removeEvents(o);
}};o[l]=function(s){k(m,n,p,s,r);};q.target.addEvents(o);}};};if(!c){Object.append(a,{submit:i("submit"),reset:i("reset"),change:d("change"),select:d("select")});
}var h=Element.prototype,f=h.addEvent,j=h.removeEvent;var e=function(l,m){return function(r,q,n){if(r.indexOf(":relay")==-1){return l.call(this,r,q,n);
}var o=Slick.parse(r).expressions[0][0];if(o.pseudos[0].key!="relay"){return l.call(this,r,q,n);}var p=o.tag;o.pseudos.slice(1).each(function(s){p+=":"+s.key+(s.value?"("+s.value+")":"");
});l.call(this,r,q);return m.call(this,p,o.pseudos[0].value,q);};};var g={addEvent:function(v,q,x){var t=this.retrieve("$delegates",{}),r=t[v];if(r){for(var y in r){if(r[y].fn==x&&r[y].match==q){return this;
}}}var p=v,u=q,o=x,n=a[v]||{};v=n.base||p;q=function(B){return Slick.match(B,u);};var w=Element.Events[p];if(w&&w.condition){var l=q,m=w.condition;q=function(C,B){return l(C,B)&&m.call(C,B,v);
};}var z=this,s=String.uniqueID();var A=n.listen?function(B,C){if(!C&&B&&B.target){C=B.target;}if(C){n.listen(z,q,x,B,C,s);}}:function(B,C){if(!C&&B&&B.target){C=B.target;
}if(C){k(z,q,x,B,C);}};if(!r){r={};}r[s]={match:u,fn:o,delegator:A};t[p]=r;return f.call(this,v,A,n.capture);},removeEvent:function(r,n,t,u){var q=this.retrieve("$delegates",{}),p=q[r];
if(!p){return this;}if(u){var m=r,w=p[u].delegator,l=a[r]||{};r=l.base||m;if(l.remove){l.remove(this,u);}delete p[u];q[m]=p;return j.call(this,r,w);}var o,v;
if(t){for(o in p){v=p[o];if(v.match==n&&v.fn==t){return g.removeEvent.call(this,r,n,t,o);}}}else{for(o in p){v=p[o];if(v.match==n){g.removeEvent.call(this,r,n,v.fn,o);
}}}return this;}};[Element,Window,Document].invoke("implement",{addEvent:e(f,g.addEvent),removeEvent:e(j,g.removeEvent)});})();(function(){var h=document.createElement("div"),e=document.createElement("div");
h.style.height="0";h.appendChild(e);var d=(e.offsetParent===h);h=e=null;var l=function(m){return k(m,"position")!="static"||a(m);};var i=function(m){return l(m)||(/^(?:table|td|th)$/i).test(m.tagName);
};Element.implement({scrollTo:function(m,n){if(a(this)){this.getWindow().scrollTo(m,n);}else{this.scrollLeft=m;this.scrollTop=n;}return this;},getSize:function(){if(a(this)){return this.getWindow().getSize();
}return{x:this.offsetWidth,y:this.offsetHeight};},getScrollSize:function(){if(a(this)){return this.getWindow().getScrollSize();}return{x:this.scrollWidth,y:this.scrollHeight};
},getScroll:function(){if(a(this)){return this.getWindow().getScroll();}return{x:this.scrollLeft,y:this.scrollTop};},getScrolls:function(){var n=this.parentNode,m={x:0,y:0};
while(n&&!a(n)){m.x+=n.scrollLeft;m.y+=n.scrollTop;n=n.parentNode;}return m;},getOffsetParent:d?function(){var m=this;if(a(m)||k(m,"position")=="fixed"){return null;
}var n=(k(m,"position")=="static")?i:l;while((m=m.parentNode)){if(n(m)){return m;}}return null;}:function(){var m=this;if(a(m)||k(m,"position")=="fixed"){return null;
}try{return m.offsetParent;}catch(n){}return null;},getOffsets:function(){if(this.getBoundingClientRect&&!Browser.Platform.ios){var r=this.getBoundingClientRect(),o=document.id(this.getDocument().documentElement),q=o.getScroll(),t=this.getScrolls(),s=(k(this,"position")=="fixed");
return{x:r.left.toInt()+t.x+((s)?0:q.x)-o.clientLeft,y:r.top.toInt()+t.y+((s)?0:q.y)-o.clientTop};}var n=this,m={x:0,y:0};if(a(this)){return m;}while(n&&!a(n)){m.x+=n.offsetLeft;
m.y+=n.offsetTop;if(Browser.firefox){if(!c(n)){m.x+=b(n);m.y+=g(n);}var p=n.parentNode;if(p&&k(p,"overflow")!="visible"){m.x+=b(p);m.y+=g(p);}}else{if(n!=this&&Browser.safari){m.x+=b(n);
m.y+=g(n);}}n=n.offsetParent;}if(Browser.firefox&&!c(this)){m.x-=b(this);m.y-=g(this);}return m;},getPosition:function(p){var q=this.getOffsets(),n=this.getScrolls();
var m={x:q.x-n.x,y:q.y-n.y};if(p&&(p=document.id(p))){var o=p.getPosition();return{x:m.x-o.x-b(p),y:m.y-o.y-g(p)};}return m;},getCoordinates:function(o){if(a(this)){return this.getWindow().getCoordinates();
}var m=this.getPosition(o),n=this.getSize();var p={left:m.x,top:m.y,width:n.x,height:n.y};p.right=p.left+p.width;p.bottom=p.top+p.height;return p;},computePosition:function(m){return{left:m.x-j(this,"margin-left"),top:m.y-j(this,"margin-top")};
},setPosition:function(m){return this.setStyles(this.computePosition(m));}});[Document,Window].invoke("implement",{getSize:function(){var m=f(this);return{x:m.clientWidth,y:m.clientHeight};
},getScroll:function(){var n=this.getWindow(),m=f(this);return{x:n.pageXOffset||m.scrollLeft,y:n.pageYOffset||m.scrollTop};},getScrollSize:function(){var o=f(this),n=this.getSize(),m=this.getDocument().body;
return{x:Math.max(o.scrollWidth,m.scrollWidth,n.x),y:Math.max(o.scrollHeight,m.scrollHeight,n.y)};},getPosition:function(){return{x:0,y:0};},getCoordinates:function(){var m=this.getSize();
return{top:0,left:0,bottom:m.y,right:m.x,height:m.y,width:m.x};}});var k=Element.getComputedStyle;function j(m,n){return k(m,n).toInt()||0;}function c(m){return k(m,"-moz-box-sizing")=="border-box";
}function g(m){return j(m,"border-top-width");}function b(m){return j(m,"border-left-width");}function a(m){return(/^(?:body|html)$/i).test(m.tagName);
}function f(m){var n=m.getDocument();return(!n.compatMode||n.compatMode=="CSS1Compat")?n.html:n.body;}})();Element.alias({position:"setPosition"});[Window,Document,Element].invoke("implement",{getHeight:function(){return this.getSize().y;
},getWidth:function(){return this.getSize().x;},getScrollTop:function(){return this.getScroll().y;},getScrollLeft:function(){return this.getScroll().x;
},getScrollHeight:function(){return this.getScrollSize().y;},getScrollWidth:function(){return this.getScrollSize().x;},getTop:function(){return this.getPosition().y;
},getLeft:function(){return this.getPosition().x;}});(function(){var f=this.Fx=new Class({Implements:[Chain,Events,Options],options:{fps:60,unit:false,duration:500,frames:null,frameSkip:true,link:"ignore"},initialize:function(g){this.subject=this.subject||this;
this.setOptions(g);},getTransition:function(){return function(g){return -(Math.cos(Math.PI*g)-1)/2;};},step:function(g){if(this.options.frameSkip){var h=(this.time!=null)?(g-this.time):0,i=h/this.frameInterval;
this.time=g;this.frame+=i;}else{this.frame++;}if(this.frame<this.frames){var j=this.transition(this.frame/this.frames);this.set(this.compute(this.from,this.to,j));
}else{this.frame=this.frames;this.set(this.compute(this.from,this.to,1));this.stop();}},set:function(g){return g;},compute:function(i,h,g){return f.compute(i,h,g);
},check:function(){if(!this.isRunning()){return true;}switch(this.options.link){case"cancel":this.cancel();return true;case"chain":this.chain(this.caller.pass(arguments,this));
return false;}return false;},start:function(k,j){if(!this.check(k,j)){return this;}this.from=k;this.to=j;this.frame=(this.options.frameSkip)?0:-1;this.time=null;
this.transition=this.getTransition();var i=this.options.frames,h=this.options.fps,g=this.options.duration;this.duration=f.Durations[g]||g.toInt();this.frameInterval=1000/h;
this.frames=i||Math.round(this.duration/this.frameInterval);this.fireEvent("start",this.subject);b.call(this,h);return this;},stop:function(){if(this.isRunning()){this.time=null;
d.call(this,this.options.fps);if(this.frames==this.frame){this.fireEvent("complete",this.subject);if(!this.callChain()){this.fireEvent("chainComplete",this.subject);
}}else{this.fireEvent("stop",this.subject);}}return this;},cancel:function(){if(this.isRunning()){this.time=null;d.call(this,this.options.fps);this.frame=this.frames;
this.fireEvent("cancel",this.subject).clearChain();}return this;},pause:function(){if(this.isRunning()){this.time=null;d.call(this,this.options.fps);}return this;
},resume:function(){if((this.frame<this.frames)&&!this.isRunning()){b.call(this,this.options.fps);}return this;},isRunning:function(){var g=e[this.options.fps];
return g&&g.contains(this);}});f.compute=function(i,h,g){return(h-i)*g+i;};f.Durations={"short":250,normal:500,"long":1000};var e={},c={};var a=function(){var h=Date.now();
for(var j=this.length;j--;){var g=this[j];if(g){g.step(h);}}};var b=function(h){var g=e[h]||(e[h]=[]);g.push(this);if(!c[h]){c[h]=a.periodical(Math.round(1000/h),g);
}};var d=function(h){var g=e[h];if(g){g.erase(this);if(!g.length&&c[h]){delete e[h];c[h]=clearInterval(c[h]);}}};})();Fx.CSS=new Class({Extends:Fx,prepare:function(b,e,a){a=Array.from(a);
var h=a[0],g=a[1];if(g==null){g=h;h=b.getStyle(e);var c=this.options.unit;if(c&&h.slice(-c.length)!=c&&parseFloat(h)!=0){b.setStyle(e,g+c);var d=b.getComputedStyle(e);
if(!(/px$/.test(d))){d=b.style[("pixel-"+e).camelCase()];if(d==null){var f=b.style.left;b.style.left=g+c;d=b.style.pixelLeft;b.style.left=f;}}h=(g||1)/(parseFloat(d)||1)*(parseFloat(h)||0);
b.setStyle(e,h+c);}}return{from:this.parse(h),to:this.parse(g)};},parse:function(a){a=Function.from(a)();a=(typeof a=="string")?a.split(" "):Array.from(a);
return a.map(function(c){c=String(c);var b=false;Object.each(Fx.CSS.Parsers,function(f,e){if(b){return;}var d=f.parse(c);if(d||d===0){b={value:d,parser:f};
}});b=b||{value:c,parser:Fx.CSS.Parsers.String};return b;});},compute:function(d,c,b){var a=[];(Math.min(d.length,c.length)).times(function(e){a.push({value:d[e].parser.compute(d[e].value,c[e].value,b),parser:d[e].parser});
});a.$family=Function.from("fx:css:value");return a;},serve:function(c,b){if(typeOf(c)!="fx:css:value"){c=this.parse(c);}var a=[];c.each(function(d){a=a.concat(d.parser.serve(d.value,b));
});return a;},render:function(a,d,c,b){a.setStyle(d,this.serve(c,b));},search:function(a){if(Fx.CSS.Cache[a]){return Fx.CSS.Cache[a];}var c={},b=new RegExp("^"+a.escapeRegExp()+"$");
Array.each(document.styleSheets,function(f,e){var d=f.href;if(d&&d.contains("://")&&!d.contains(document.domain)){return;}var g=f.rules||f.cssRules;Array.each(g,function(k,h){if(!k.style){return;
}var j=(k.selectorText)?k.selectorText.replace(/^\w+/,function(i){return i.toLowerCase();}):null;if(!j||!b.test(j)){return;}Object.each(Element.Styles,function(l,i){if(!k.style[i]||Element.ShortStyles[i]){return;
}l=String(k.style[i]);c[i]=((/^rgb/).test(l))?l.rgbToHex():l;});});});return Fx.CSS.Cache[a]=c;}});Fx.CSS.Cache={};Fx.CSS.Parsers={Color:{parse:function(a){if(a.match(/^#[0-9a-f]{3,6}$/i)){return a.hexToRgb(true);
}return((a=a.match(/(\d+),\s*(\d+),\s*(\d+)/)))?[a[1],a[2],a[3]]:false;},compute:function(c,b,a){return c.map(function(e,d){return Math.round(Fx.compute(c[d],b[d],a));
});},serve:function(a){return a.map(Number);}},Number:{parse:parseFloat,compute:Fx.compute,serve:function(b,a){return(a)?b+a:b;}},String:{parse:Function.from(false),compute:function(b,a){return a;
},serve:function(a){return a;}}};Fx.CSS.Parsers=new Hash(Fx.CSS.Parsers);Fx.Tween=new Class({Extends:Fx.CSS,initialize:function(b,a){this.element=this.subject=document.id(b);
this.parent(a);},set:function(b,a){if(arguments.length==1){a=b;b=this.property||this.options.property;}this.render(this.element,b,a,this.options.unit);
return this;},start:function(c,e,d){if(!this.check(c,e,d)){return this;}var b=Array.flatten(arguments);this.property=this.options.property||b.shift();var a=this.prepare(this.element,this.property,b);
return this.parent(a.from,a.to);}});Element.Properties.tween={set:function(a){this.get("tween").cancel().setOptions(a);return this;},get:function(){var a=this.retrieve("tween");
if(!a){a=new Fx.Tween(this,{link:"cancel"});this.store("tween",a);}return a;}};Element.implement({tween:function(a,c,b){this.get("tween").start(a,c,b);
return this;},fade:function(d){var e=this.get("tween"),g,c=["opacity"].append(arguments),a;if(c[1]==null){c[1]="toggle";}switch(c[1]){case"in":g="start";
c[1]=1;break;case"out":g="start";c[1]=0;break;case"show":g="set";c[1]=1;break;case"hide":g="set";c[1]=0;break;case"toggle":var b=this.retrieve("fade:flag",this.getStyle("opacity")==1);
g="start";c[1]=b?0:1;this.store("fade:flag",!b);a=true;break;default:g="start";}if(!a){this.eliminate("fade:flag");}e[g].apply(e,c);var f=c[c.length-1];
if(g=="set"||f!=0){this.setStyle("visibility",f==0?"hidden":"visible");}else{e.chain(function(){this.element.setStyle("visibility","hidden");this.callChain();
});}return this;},highlight:function(c,a){if(!a){a=this.retrieve("highlight:original",this.getStyle("background-color"));a=(a=="transparent")?"#fff":a;
}var b=this.get("tween");b.start("background-color",c||"#ffff88",a).chain(function(){this.setStyle("background-color",this.retrieve("highlight:original"));
b.callChain();}.bind(this));return this;}});Fx.Morph=new Class({Extends:Fx.CSS,initialize:function(b,a){this.element=this.subject=document.id(b);this.parent(a);
},set:function(a){if(typeof a=="string"){a=this.search(a);}for(var b in a){this.render(this.element,b,a[b],this.options.unit);}return this;},compute:function(e,d,c){var a={};
for(var b in e){a[b]=this.parent(e[b],d[b],c);}return a;},start:function(b){if(!this.check(b)){return this;}if(typeof b=="string"){b=this.search(b);}var e={},d={};
for(var c in b){var a=this.prepare(this.element,c,b[c]);e[c]=a.from;d[c]=a.to;}return this.parent(e,d);}});Element.Properties.morph={set:function(a){this.get("morph").cancel().setOptions(a);
return this;},get:function(){var a=this.retrieve("morph");if(!a){a=new Fx.Morph(this,{link:"cancel"});this.store("morph",a);}return a;}};Element.implement({morph:function(a){this.get("morph").start(a);
return this;}});Fx.implement({getTransition:function(){var a=this.options.transition||Fx.Transitions.Sine.easeInOut;if(typeof a=="string"){var b=a.split(":");
a=Fx.Transitions;a=a[b[0]]||a[b[0].capitalize()];if(b[1]){a=a["ease"+b[1].capitalize()+(b[2]?b[2].capitalize():"")];}}return a;}});Fx.Transition=function(c,b){b=Array.from(b);
var a=function(d){return c(d,b);};return Object.append(a,{easeIn:a,easeOut:function(d){return 1-c(1-d,b);},easeInOut:function(d){return(d<=0.5?c(2*d,b):(2-c(2*(1-d),b)))/2;
}});};Fx.Transitions={linear:function(a){return a;}};Fx.Transitions=new Hash(Fx.Transitions);Fx.Transitions.extend=function(a){for(var b in a){Fx.Transitions[b]=new Fx.Transition(a[b]);
}};Fx.Transitions.extend({Pow:function(b,a){return Math.pow(b,a&&a[0]||6);},Expo:function(a){return Math.pow(2,8*(a-1));},Circ:function(a){return 1-Math.sin(Math.acos(a));
},Sine:function(a){return 1-Math.cos(a*Math.PI/2);},Back:function(b,a){a=a&&a[0]||1.618;return Math.pow(b,2)*((a+1)*b-a);},Bounce:function(f){var e;for(var d=0,c=1;
1;d+=c,c/=2){if(f>=(7-4*d)/11){e=c*c-Math.pow((11-6*d-11*f)/4,2);break;}}return e;},Elastic:function(b,a){return Math.pow(2,10*--b)*Math.cos(20*b*Math.PI*(a&&a[0]||1)/3);
}});["Quad","Cubic","Quart","Quint"].each(function(b,a){Fx.Transitions[b]=new Fx.Transition(function(c){return Math.pow(c,a+2);});});(function(){var d=function(){},a=("onprogress" in new Browser.Request);
var c=this.Request=new Class({Implements:[Chain,Events,Options],options:{url:"",data:"",headers:{"X-Requested-With":"XMLHttpRequest",Accept:"text/javascript, text/html, application/xml, text/xml, */*"},async:true,format:false,method:"post",link:"ignore",isSuccess:null,emulation:true,urlEncoded:true,encoding:"utf-8",evalScripts:false,evalResponse:false,timeout:0,noCache:false},initialize:function(e){this.xhr=new Browser.Request();
this.setOptions(e);this.headers=this.options.headers;},onStateChange:function(){var e=this.xhr;if(e.readyState!=4||!this.running){return;}this.running=false;
this.status=0;Function.attempt(function(){var f=e.status;this.status=(f==1223)?204:f;}.bind(this));e.onreadystatechange=d;if(a){e.onprogress=e.onloadstart=d;
}clearTimeout(this.timer);this.response={text:this.xhr.responseText||"",xml:this.xhr.responseXML};if(this.options.isSuccess.call(this,this.status)){this.success(this.response.text,this.response.xml);
}else{this.failure();}},isSuccess:function(){var e=this.status;return(e>=200&&e<300);},isRunning:function(){return !!this.running;},processScripts:function(e){if(this.options.evalResponse||(/(ecma|java)script/).test(this.getHeader("Content-type"))){return Browser.exec(e);
}return e.stripScripts(this.options.evalScripts);},success:function(f,e){this.onSuccess(this.processScripts(f),e);},onSuccess:function(){this.fireEvent("complete",arguments).fireEvent("success",arguments).callChain();
},failure:function(){this.onFailure();},onFailure:function(){this.fireEvent("complete").fireEvent("failure",this.xhr);},loadstart:function(e){this.fireEvent("loadstart",[e,this.xhr]);
},progress:function(e){this.fireEvent("progress",[e,this.xhr]);},timeout:function(){this.fireEvent("timeout",this.xhr);},setHeader:function(e,f){this.headers[e]=f;
return this;},getHeader:function(e){return Function.attempt(function(){return this.xhr.getResponseHeader(e);}.bind(this));},check:function(){if(!this.running){return true;
}switch(this.options.link){case"cancel":this.cancel();return true;case"chain":this.chain(this.caller.pass(arguments,this));return false;}return false;},send:function(o){if(!this.check(o)){return this;
}this.options.isSuccess=this.options.isSuccess||this.isSuccess;this.running=true;var l=typeOf(o);if(l=="string"||l=="element"){o={data:o};}var h=this.options;
o=Object.append({data:h.data,url:h.url,method:h.method},o);var j=o.data,f=String(o.url),e=o.method.toLowerCase();switch(typeOf(j)){case"element":j=document.id(j).toQueryString();
break;case"object":case"hash":j=Object.toQueryString(j);}if(this.options.format){var m="format="+this.options.format;j=(j)?m+"&"+j:m;}if(this.options.emulation&&!["get","post"].contains(e)){var k="_method="+e;
j=(j)?k+"&"+j:k;e="post";}if(this.options.urlEncoded&&["post","put"].contains(e)){var g=(this.options.encoding)?"; charset="+this.options.encoding:"";this.headers["Content-type"]="application/x-www-form-urlencoded"+g;
}if(!f){f=document.location.pathname;}var i=f.lastIndexOf("/");if(i>-1&&(i=f.indexOf("#"))>-1){f=f.substr(0,i);}if(this.options.noCache){f+=(f.contains("?")?"&":"?")+String.uniqueID();
}if(j&&e=="get"){f+=(f.contains("?")?"&":"?")+j;j=null;}var n=this.xhr;if(a){n.onloadstart=this.loadstart.bind(this);n.onprogress=this.progress.bind(this);
}n.open(e.toUpperCase(),f,this.options.async,this.options.user,this.options.password);if(this.options.user&&"withCredentials" in n){n.withCredentials=true;
}n.onreadystatechange=this.onStateChange.bind(this);Object.each(this.headers,function(q,p){try{n.setRequestHeader(p,q);}catch(r){this.fireEvent("exception",[p,q]);
}},this);this.fireEvent("request");n.send(j);if(!this.options.async){this.onStateChange();}else{if(this.options.timeout){this.timer=this.timeout.delay(this.options.timeout,this);
}}return this;},cancel:function(){if(!this.running){return this;}this.running=false;var e=this.xhr;e.abort();clearTimeout(this.timer);e.onreadystatechange=d;
if(a){e.onprogress=e.onloadstart=d;}this.xhr=new Browser.Request();this.fireEvent("cancel");return this;}});var b={};["get","post","put","delete","GET","POST","PUT","DELETE"].each(function(e){b[e]=function(g){var f={method:e};
if(g!=null){f.data=g;}return this.send(f);};});c.implement(b);Element.Properties.send={set:function(e){var f=this.get("send").cancel();f.setOptions(e);
return this;},get:function(){var e=this.retrieve("send");if(!e){e=new c({data:this,link:"cancel",method:this.get("method")||"post",url:this.get("action")});
this.store("send",e);}return e;}};Element.implement({send:function(e){var f=this.get("send");f.send({data:this,url:e||f.options.url});return this;}});})();
Request.HTML=new Class({Extends:Request,options:{update:false,append:false,evalScripts:true,filter:false,headers:{Accept:"text/html, application/xml, text/xml, */*"}},success:function(f){var e=this.options,c=this.response;
c.html=f.stripScripts(function(h){c.javascript=h;});var d=c.html.match(/<body[^>]*>([\s\S]*?)<\/body>/i);if(d){c.html=d[1];}var b=new Element("div").set("html",c.html);
c.tree=b.childNodes;c.elements=b.getElements(e.filter||"*");if(e.filter){c.tree=c.elements;}if(e.update){var g=document.id(e.update).empty();if(e.filter){g.adopt(c.elements);
}else{g.set("html",c.html);}}else{if(e.append){var a=document.id(e.append);if(e.filter){c.elements.reverse().inject(a);}else{a.adopt(b.getChildren());}}}if(e.evalScripts){Browser.exec(c.javascript);
}this.onSuccess(c.tree,c.elements,c.html,c.javascript);}});Element.Properties.load={set:function(a){var b=this.get("load").cancel();b.setOptions(a);return this;
},get:function(){var a=this.retrieve("load");if(!a){a=new Request.HTML({data:this,link:"cancel",update:this,method:"get"});this.store("load",a);}return a;
}};Element.implement({load:function(){this.get("load").send(Array.link(arguments,{data:Type.isObject,url:Type.isString}));return this;}});if(typeof JSON=="undefined"){this.JSON={};
}JSON=new Hash({stringify:JSON.stringify,parse:JSON.parse});(function(){var special={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"};
var escape=function(chr){return special[chr]||"\\u"+("0000"+chr.charCodeAt(0).toString(16)).slice(-4);};JSON.validate=function(string){string=string.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g,"@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g,"");
return(/^[\],:{}\s]*$/).test(string);};JSON.encode=JSON.stringify?function(obj){return JSON.stringify(obj);}:function(obj){if(obj&&obj.toJSON){obj=obj.toJSON();
}switch(typeOf(obj)){case"string":return'"'+obj.replace(/[\x00-\x1f\\"]/g,escape)+'"';case"array":return"["+obj.map(JSON.encode).clean()+"]";case"object":case"hash":var string=[];
Object.each(obj,function(value,key){var json=JSON.encode(value);if(json){string.push(JSON.encode(key)+":"+json);}});return"{"+string+"}";case"number":case"boolean":return""+obj;
case"null":return"null";}return null;};JSON.decode=function(string,secure){if(!string||typeOf(string)!="string"){return null;}if(secure||JSON.secure){if(JSON.parse){return JSON.parse(string);
}if(!JSON.validate(string)){throw new Error("JSON could not decode the input; security is enabled and the value is not secure.");}}return eval("("+string+")");
};})();Request.JSON=new Class({Extends:Request,options:{secure:true},initialize:function(a){this.parent(a);Object.append(this.headers,{Accept:"application/json","X-Request":"JSON"});
},success:function(c){var b;try{b=this.response.json=JSON.decode(c,this.options.secure);}catch(a){this.fireEvent("error",[c,a]);return;}if(b==null){this.onFailure();
}else{this.onSuccess(b,c);}}});var Cookie=new Class({Implements:Options,options:{path:"/",domain:false,duration:false,secure:false,document:document,encode:true},initialize:function(b,a){this.key=b;
this.setOptions(a);},write:function(b){if(this.options.encode){b=encodeURIComponent(b);}if(this.options.domain){b+="; domain="+this.options.domain;}if(this.options.path){b+="; path="+this.options.path;
}if(this.options.duration){var a=new Date();a.setTime(a.getTime()+this.options.duration*24*60*60*1000);b+="; expires="+a.toGMTString();}if(this.options.secure){b+="; secure";
}this.options.document.cookie=this.key+"="+b;return this;},read:function(){var a=this.options.document.cookie.match("(?:^|;)\\s*"+this.key.escapeRegExp()+"=([^;]*)");
return(a)?decodeURIComponent(a[1]):null;},dispose:function(){new Cookie(this.key,Object.merge({},this.options,{duration:-1})).write("");return this;}});
Cookie.write=function(b,c,a){return new Cookie(b,a).write(c);};Cookie.read=function(a){return new Cookie(a).read();};Cookie.dispose=function(b,a){return new Cookie(b,a).dispose();
};(function(i,k){var l,f,e=[],c,b,d=k.createElement("div");var g=function(){clearTimeout(b);if(l){return;}Browser.loaded=l=true;k.removeListener("DOMContentLoaded",g).removeListener("readystatechange",a);
k.fireEvent("domready");i.fireEvent("domready");};var a=function(){for(var m=e.length;m--;){if(e[m]()){g();return true;}}return false;};var j=function(){clearTimeout(b);
if(!a()){b=setTimeout(j,10);}};k.addListener("DOMContentLoaded",g);var h=function(){try{d.doScroll();return true;}catch(m){}return false;};if(d.doScroll&&!h()){e.push(h);
c=true;}if(k.readyState){e.push(function(){var m=k.readyState;return(m=="loaded"||m=="complete");});}if("onreadystatechange" in k){k.addListener("readystatechange",a);
}else{c=true;}if(c){j();}Element.Events.domready={onAdd:function(m){if(l){m.call(this);}}};Element.Events.load={base:"load",onAdd:function(m){if(f&&this==i){m.call(this);
}},condition:function(){if(this==i){g();delete Element.Events.load;}return true;}};i.addEvent("load",function(){f=true;});})(window,document);(function(){var Swiff=this.Swiff=new Class({Implements:Options,options:{id:null,height:1,width:1,container:null,properties:{},params:{quality:"high",allowScriptAccess:"always",wMode:"window",swLiveConnect:true},callBacks:{},vars:{}},toElement:function(){return this.object;
},initialize:function(path,options){this.instance="Swiff_"+String.uniqueID();this.setOptions(options);options=this.options;var id=this.id=options.id||this.instance;
var container=document.id(options.container);Swiff.CallBacks[this.instance]={};var params=options.params,vars=options.vars,callBacks=options.callBacks;
var properties=Object.append({height:options.height,width:options.width},options.properties);var self=this;for(var callBack in callBacks){Swiff.CallBacks[this.instance][callBack]=(function(option){return function(){return option.apply(self.object,arguments);
};})(callBacks[callBack]);vars[callBack]="Swiff.CallBacks."+this.instance+"."+callBack;}params.flashVars=Object.toQueryString(vars);if(Browser.ie){properties.classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000";
params.movie=path;}else{properties.type="application/x-shockwave-flash";}properties.data=path;var build='<object id="'+id+'"';for(var property in properties){build+=" "+property+'="'+properties[property]+'"';
}build+=">";for(var param in params){if(params[param]){build+='<param name="'+param+'" value="'+params[param]+'" />';}}build+="</object>";this.object=((container)?container.empty():new Element("div")).set("html",build).firstChild;
},replaces:function(element){element=document.id(element,true);element.parentNode.replaceChild(this.toElement(),element);return this;},inject:function(element){document.id(element,true).appendChild(this.toElement());
return this;},remote:function(){return Swiff.remote.apply(Swiff,[this.toElement()].append(arguments));}});Swiff.CallBacks={};Swiff.remote=function(obj,fn){var rs=obj.CallFunction('<invoke name="'+fn+'" returntype="javascript">'+__flash__argumentsToXML(arguments,2)+"</invoke>");
return eval(rs);};})();


</script>

<!--------------------------------------------------------------------------------------END---------------------------------------------------------------------------->



<!--------------------------------------------------------RESIZE TEXT IN PROJECT NAME------------------------------------------------------------------------------>



<script>





/* Zepto v1.0rc1 - polyfill zepto event detect fx ajax form touch - zeptojs.com/license */
;(function(undefined){
  if (String.prototype.trim === undefined) // fix for iOS 3.2
    String.prototype.trim = function(){ return this.replace(/^\s+/, '').replace(/\s+$/, '') }

  // For iOS 3.x
  // from https://developer.mozilla.org/en/JavaScript/Reference/Global_Objects/Array/reduce
  if (Array.prototype.reduce === undefined)
    Array.prototype.reduce = function(fun){
      if(this === void 0 || this === null) throw new TypeError()
      var t = Object(this), len = t.length >>> 0, k = 0, accumulator
      if(typeof fun != 'function') throw new TypeError()
      if(len == 0 && arguments.length == 1) throw new TypeError()

      if(arguments.length >= 2)
       accumulator = arguments[1]
      else
        do{
          if(k in t){
            accumulator = t[k++]
            break
          }
          if(++k >= len) throw new TypeError()
        } while (true)

      while (k < len){
        if(k in t) accumulator = fun.call(undefined, accumulator, t[k], k, t)
        k++
      }
      return accumulator
    }

})()
var Zepto = (function() {
  var undefined, key, $, classList, emptyArray = [], slice = emptyArray.slice,
    document = window.document,
    elementDisplay = {}, classCache = {},
    getComputedStyle = document.defaultView.getComputedStyle,
    cssNumber = { 'column-count': 1, 'columns': 1, 'font-weight': 1, 'line-height': 1,'opacity': 1, 'z-index': 1, 'zoom': 1 },
    fragmentRE = /^\s*<(\w+|!)[^>]*>/,

    // Used by `$.zepto.init` to wrap elements, text/comment nodes, document,
    // and document fragment node types.
    elementTypes = [1, 3, 8, 9, 11],

    adjacencyOperators = [ 'after', 'prepend', 'before', 'append' ],
    table = document.createElement('table'),
    tableRow = document.createElement('tr'),
    containers = {
      'tr': document.createElement('tbody'),
      'tbody': table, 'thead': table, 'tfoot': table,
      'td': tableRow, 'th': tableRow,
      '*': document.createElement('div')
    },
    readyRE = /complete|loaded|interactive/,
    classSelectorRE = /^\.([\w-]+)$/,
    idSelectorRE = /^#([\w-]+)$/,
    tagSelectorRE = /^[\w-]+$/,
    toString = ({}).toString,
    zepto = {},
    camelize, uniq,
    tempParent = document.createElement('div')

  zepto.matches = function(element, selector) {
    if (!element || element.nodeType !== 1) return false
    var matchesSelector = element.webkitMatchesSelector || element.mozMatchesSelector ||
                          element.oMatchesSelector || element.matchesSelector
    if (matchesSelector) return matchesSelector.call(element, selector)
    // fall back to performing a selector:
    var match, parent = element.parentNode, temp = !parent
    if (temp) (parent = tempParent).appendChild(element)
    match = ~zepto.qsa(parent, selector).indexOf(element)
    temp && tempParent.removeChild(element)
    return match
  }

  function isFunction(value) { return toString.call(value) == "[object Function]" }
  function isObject(value) { return value instanceof Object }
  function isPlainObject(value) {
    var key, ctor
    if (toString.call(value) !== "[object Object]") return false
    ctor = (isFunction(value.constructor) && value.constructor.prototype)
    if (!ctor || !hasOwnProperty.call(ctor, 'isPrototypeOf')) return false
    for (key in value);
    return key === undefined || hasOwnProperty.call(value, key)
  }
  function isArray(value) { return value instanceof Array }
  function likeArray(obj) { return typeof obj.length == 'number' }

  function compact(array) { return array.filter(function(item){ return item !== undefined && item !== null }) }
  function flatten(array) { return array.length > 0 ? [].concat.apply([], array) : array }
  camelize = function(str){ return str.replace(/-+(.)?/g, function(match, chr){ return chr ? chr.toUpperCase() : '' }) }
  function dasherize(str) {
    return str.replace(/::/g, '/')
           .replace(/([A-Z]+)([A-Z][a-z])/g, '$1_$2')
           .replace(/([a-z\d])([A-Z])/g, '$1_$2')
           .replace(/_/g, '-')
           .toLowerCase()
  }
  uniq = function(array){ return array.filter(function(item, idx){ return array.indexOf(item) == idx }) }

  function classRE(name) {
    return name in classCache ?
      classCache[name] : (classCache[name] = new RegExp('(^|\\s)' + name + '(\\s|$)'))
  }

  function maybeAddPx(name, value) {
    return (typeof value == "number" && !cssNumber[dasherize(name)]) ? value + "px" : value
  }

  function defaultDisplay(nodeName) {
    var element, display
    if (!elementDisplay[nodeName]) {
      element = document.createElement(nodeName)
      document.body.appendChild(element)
      display = getComputedStyle(element, '').getPropertyValue("display")
      element.parentNode.removeChild(element)
      display == "none" && (display = "block")
      elementDisplay[nodeName] = display
    }
    return elementDisplay[nodeName]
  }

  // `$.zepto.fragment` takes a html string and an optional tag name
  // to generate DOM nodes nodes from the given html string.
  // The generated DOM nodes are returned as an array.
  // This function can be overriden in plugins for example to make
  // it compatible with browsers that don't support the DOM fully.
  zepto.fragment = function(html, name) {
    if (name === undefined) name = fragmentRE.test(html) && RegExp.$1
    if (!(name in containers)) name = '*'
    var container = containers[name]
    container.innerHTML = '' + html
    return $.each(slice.call(container.childNodes), function(){
      container.removeChild(this)
    })
  }

  // `$.zepto.Z` swaps out the prototype of the given `dom` array
  // of nodes with `$.fn` and thus supplying all the Zepto functions
  // to the array. Note that `__proto__` is not supported on Internet
  // Explorer. This method can be overriden in plugins.
  zepto.Z = function(dom, selector) {
    dom = dom || []
    dom.__proto__ = arguments.callee.prototype
    dom.selector = selector || ''
    return dom
  }

  // `$.zepto.isZ` should return `true` if the given object is a Zepto
  // collection. This method can be overriden in plugins.
  zepto.isZ = function(object) {
    return object instanceof zepto.Z
  }

  // `$.zepto.init` is Zepto's counterpart to jQuery's `$.fn.init` and
  // takes a CSS selector and an optional context (and handles various
  // special cases).
  // This method can be overriden in plugins.
  zepto.init = function(selector, context) {
    // If nothing given, return an empty Zepto collection
    if (!selector) return zepto.Z()
    // If a function is given, call it when the DOM is ready
    else if (isFunction(selector)) return $(document).ready(selector)
    // If a Zepto collection is given, juts return it
    else if (zepto.isZ(selector)) return selector
    else {
      var dom
      // normalize array if an array of nodes is given
      if (isArray(selector)) dom = compact(selector)
      // if a JavaScript object is given, return a copy of it
      // this is a somewhat peculiar option, but supported by
      // jQuery so we'll do it, too
      else if (isPlainObject(selector))
        dom = [$.extend({}, selector)], selector = null
      // wrap stuff like `document` or `window`
      else if (elementTypes.indexOf(selector.nodeType) >= 0 || selector === window)
        dom = [selector], selector = null
      // If it's a html fragment, create nodes from it
      else if (fragmentRE.test(selector))
        dom = zepto.fragment(selector.trim(), RegExp.$1), selector = null
      // If there's a context, create a collection on that context first, and select
      // nodes from there
      else if (context !== undefined) return $(context).find(selector)
      // And last but no least, if it's a CSS selector, use it to select nodes.
      else dom = zepto.qsa(document, selector)
      // create a new Zepto collection from the nodes found
      return zepto.Z(dom, selector)
    }
  }

  // `$` will be the base `Zepto` object. When calling this
  // function just call `$.zepto.init, whichs makes the implementation
  // details of selecting nodes and creating Zepto collections
  // patchable in plugins.
  $ = function(selector, context){
    return zepto.init(selector, context)
  }

  // Copy all but undefined properties from one or more
  // objects to the `target` object.
  $.extend = function(target){
    slice.call(arguments, 1).forEach(function(source) {
      for (key in source)
        if (source[key] !== undefined)
          target[key] = source[key]
    })
    return target
  }

  // `$.zepto.qsa` is Zepto's CSS selector implementation which
  // uses `document.querySelectorAll` and optimizes for some special cases, like `#id`.
  // This method can be overriden in plugins.
  zepto.qsa = function(element, selector){
    var found
    return (element === document && idSelectorRE.test(selector)) ?
      ( (found = element.getElementById(RegExp.$1)) ? [found] : emptyArray ) :
      (element.nodeType !== 1 && element.nodeType !== 9) ? emptyArray :
      slice.call(
        classSelectorRE.test(selector) ? element.getElementsByClassName(RegExp.$1) :
        tagSelectorRE.test(selector) ? element.getElementsByTagName(selector) :
        element.querySelectorAll(selector)
      )
  }

  function filtered(nodes, selector) {
    return selector === undefined ? $(nodes) : $(nodes).filter(selector)
  }

  function funcArg(context, arg, idx, payload) {
   return isFunction(arg) ? arg.call(context, idx, payload) : arg
  }

  $.isFunction = isFunction
  $.isObject = isObject
  $.isArray = isArray
  $.isPlainObject = isPlainObject

  $.inArray = function(elem, array, i){
    return emptyArray.indexOf.call(array, elem, i)
  }

  $.trim = function(str) { return str.trim() }

  // plugin compatibility
  $.uuid = 0

  $.map = function(elements, callback){
    var value, values = [], i, key
    if (likeArray(elements))
      for (i = 0; i < elements.length; i++) {
        value = callback(elements[i], i)
        if (value != null) values.push(value)
      }
    else
      for (key in elements) {
        value = callback(elements[key], key)
        if (value != null) values.push(value)
      }
    return flatten(values)
  }

  $.each = function(elements, callback){
    var i, key
    if (likeArray(elements)) {
      for (i = 0; i < elements.length; i++)
        if (callback.call(elements[i], i, elements[i]) === false) return elements
    } else {
      for (key in elements)
        if (callback.call(elements[key], key, elements[key]) === false) return elements
    }

    return elements
  }

  // Define methods that will be available on all
  // Zepto collections
  $.fn = {
    // Because a collection acts like an array
    // copy over these useful array functions.
    forEach: emptyArray.forEach,
    reduce: emptyArray.reduce,
    push: emptyArray.push,
    indexOf: emptyArray.indexOf,
    concat: emptyArray.concat,

    // `map` and `slice` in the jQuery API work differently
    // from their array counterparts
    map: function(fn){
      return $.map(this, function(el, i){ return fn.call(el, i, el) })
    },
    slice: function(){
      return $(slice.apply(this, arguments))
    },

    ready: function(callback){
      if (readyRE.test(document.readyState)) callback($)
      else document.addEventListener('DOMContentLoaded', function(){ callback($) }, false)
      return this
    },
    get: function(idx){
      return idx === undefined ? slice.call(this) : this[idx]
    },
    toArray: function(){ return this.get() },
    size: function(){
      return this.length
    },
    remove: function(){
      return this.each(function(){
        if (this.parentNode != null)
          this.parentNode.removeChild(this)
      })
    },
    each: function(callback){
      this.forEach(function(el, idx){ callback.call(el, idx, el) })
      return this
    },
    filter: function(selector){
      return $([].filter.call(this, function(element){
        return zepto.matches(element, selector)
      }))
    },
    add: function(selector,context){
      return $(uniq(this.concat($(selector,context))))
    },
    is: function(selector){
      return this.length > 0 && zepto.matches(this[0], selector)
    },
    not: function(selector){
      var nodes=[]
      if (isFunction(selector) && selector.call !== undefined)
        this.each(function(idx){
          if (!selector.call(this,idx)) nodes.push(this)
        })
      else {
        var excludes = typeof selector == 'string' ? this.filter(selector) :
          (likeArray(selector) && isFunction(selector.item)) ? slice.call(selector) : $(selector)
        this.forEach(function(el){
          if (excludes.indexOf(el) < 0) nodes.push(el)
        })
      }
      return $(nodes)
    },
    eq: function(idx){
      return idx === -1 ? this.slice(idx) : this.slice(idx, + idx + 1)
    },
    first: function(){
      var el = this[0]
      return el && !isObject(el) ? el : $(el)
    },
    last: function(){
      var el = this[this.length - 1]
      return el && !isObject(el) ? el : $(el)
    },
    find: function(selector){
      var result
      if (this.length == 1) result = zepto.qsa(this[0], selector)
      else result = this.map(function(){ return zepto.qsa(this, selector) })
      return $(result)
    },
    closest: function(selector, context){
      var node = this[0]
      while (node && !zepto.matches(node, selector))
        node = node !== context && node !== document && node.parentNode
      return $(node)
    },
    parents: function(selector){
      var ancestors = [], nodes = this
      while (nodes.length > 0)
        nodes = $.map(nodes, function(node){
          if ((node = node.parentNode) && node !== document && ancestors.indexOf(node) < 0) {
            ancestors.push(node)
            return node
          }
        })
      return filtered(ancestors, selector)
    },
    parent: function(selector){
      return filtered(uniq(this.pluck('parentNode')), selector)
    },
    children: function(selector){
      return filtered(this.map(function(){ return slice.call(this.children) }), selector)
    },
    siblings: function(selector){
      return filtered(this.map(function(i, el){
        return slice.call(el.parentNode.children).filter(function(child){ return child!==el })
      }), selector)
    },
    empty: function(){
      return this.each(function(){ this.innerHTML = '' })
    },
    // `pluck` is borrowed from Prototype.js
    pluck: function(property){
      return this.map(function(){ return this[property] })
    },
    show: function(){
      return this.each(function(){
        this.style.display == "none" && (this.style.display = null)
        if (getComputedStyle(this, '').getPropertyValue("display") == "none")
          this.style.display = defaultDisplay(this.nodeName)
      })
    },
    replaceWith: function(newContent){
      return this.before(newContent).remove()
    },
    wrap: function(newContent){
      return this.each(function(){
        $(this).wrapAll($(newContent)[0].cloneNode(false))
      })
    },
    wrapAll: function(newContent){
      if (this[0]) {
        $(this[0]).before(newContent = $(newContent))
        newContent.append(this)
      }
      return this
    },
    unwrap: function(){
      this.parent().each(function(){
        $(this).replaceWith($(this).children())
      })
      return this
    },
    clone: function(){
      return $(this.map(function(){ return this.cloneNode(true) }))
    },
    hide: function(){
      return this.css("display", "none")
    },
    toggle: function(setting){
      return (setting === undefined ? this.css("display") == "none" : setting) ? this.show() : this.hide()
    },
    prev: function(){ return $(this.pluck('previousElementSibling')) },
    next: function(){ return $(this.pluck('nextElementSibling')) },
    html: function(html){
      return html === undefined ?
        (this.length > 0 ? this[0].innerHTML : null) :
        this.each(function(idx){
          var originHtml = this.innerHTML
          $(this).empty().append( funcArg(this, html, idx, originHtml) )
        })
    },
    text: function(text){
      return text === undefined ?
        (this.length > 0 ? this[0].textContent : null) :
        this.each(function(){ this.textContent = text })
    },
    attr: function(name, value){
      var result
      return (typeof name == 'string' && value === undefined) ?
        (this.length == 0 || this[0].nodeType !== 1 ? undefined :
          (name == 'value' && this[0].nodeName == 'INPUT') ? this.val() :
          (!(result = this[0].getAttribute(name)) && name in this[0]) ? this[0][name] : result
        ) :
        this.each(function(idx){
          if (this.nodeType !== 1) return
          if (isObject(name)) for (key in name) this.setAttribute(key, name[key])
          else this.setAttribute(name, funcArg(this, value, idx, this.getAttribute(name)))
        })
    },
    removeAttr: function(name){
      return this.each(function(){ if (this.nodeType === 1) this.removeAttribute(name) })
    },
    prop: function(name, value){
      return (value === undefined) ?
        (this[0] ? this[0][name] : undefined) :
        this.each(function(idx){
          this[name] = funcArg(this, value, idx, this[name])
        })
    },
    data: function(name, value){
      var data = this.attr('data-' + dasherize(name), value)
      return data !== null ? data : undefined
    },
    val: function(value){
      return (value === undefined) ?
        (this.length > 0 ? this[0].value : undefined) :
        this.each(function(idx){
          this.value = funcArg(this, value, idx, this.value)
        })
    },
    offset: function(){
      if (this.length==0) return null
      var obj = this[0].getBoundingClientRect()
      return {
        left: obj.left + window.pageXOffset,
        top: obj.top + window.pageYOffset,
        width: obj.width,
        height: obj.height
      }
    },
    css: function(property, value){
      if (value === undefined && typeof property == 'string')
        return (
          this.length == 0
            ? undefined
            : this[0].style[camelize(property)] || getComputedStyle(this[0], '').getPropertyValue(property))

      var css = ''
      for (key in property)
        if(typeof property[key] == 'string' && property[key] == '')
          this.each(function(){ this.style.removeProperty(dasherize(key)) })
        else
          css += dasherize(key) + ':' + maybeAddPx(key, property[key]) + ';'

      if (typeof property == 'string')
        if (value == '')
          this.each(function(){ this.style.removeProperty(dasherize(property)) })
        else
          css = dasherize(property) + ":" + maybeAddPx(property, value)

      return this.each(function(){ this.style.cssText += ';' + css })
    },
    index: function(element){
      return element ? this.indexOf($(element)[0]) : this.parent().children().indexOf(this[0])
    },
    hasClass: function(name){
      if (this.length < 1) return false
      else return classRE(name).test(this[0].className)
    },
    addClass: function(name){
      return this.each(function(idx){
        classList = []
        var cls = this.className, newName = funcArg(this, name, idx, cls)
        newName.split(/\s+/g).forEach(function(klass){
          if (!$(this).hasClass(klass)) classList.push(klass)
        }, this)
        classList.length && (this.className += (cls ? " " : "") + classList.join(" "))
      })
    },
    removeClass: function(name){
      return this.each(function(idx){
        if (name === undefined)
          return this.className = ''
        classList = this.className
        funcArg(this, name, idx, classList).split(/\s+/g).forEach(function(klass){
          classList = classList.replace(classRE(klass), " ")
        })
        this.className = classList.trim()
      })
    },
    toggleClass: function(name, when){
      return this.each(function(idx){
        var newName = funcArg(this, name, idx, this.className)
        ;(when === undefined ? !$(this).hasClass(newName) : when) ?
          $(this).addClass(newName) : $(this).removeClass(newName)
      })
    }
  }

  // Generate the `width` and `height` functions
  ;['width', 'height'].forEach(function(dimension){
    $.fn[dimension] = function(value){
      var offset, Dimension = dimension.replace(/./, function(m){ return m[0].toUpperCase() })
      if (value === undefined) return this[0] == window ? window['inner' + Dimension] :
        this[0] == document ? document.documentElement['offset' + Dimension] :
        (offset = this.offset()) && offset[dimension]
      else return this.each(function(idx){
        var el = $(this)
        el.css(dimension, funcArg(this, value, idx, el[dimension]()))
      })
    }
  })

  function insert(operator, target, node) {
    var parent = (operator % 2) ? target : target.parentNode
    parent ? parent.insertBefore(node,
      !operator ? target.nextSibling :      // after
      operator == 1 ? parent.firstChild :   // prepend
      operator == 2 ? target :              // before
      null) :                               // append
      $(node).remove()
  }

  function traverseNode(node, fun) {
    fun(node)
    for (var key in node.childNodes) traverseNode(node.childNodes[key], fun)
  }

  // Generate the `after`, `prepend`, `before`, `append`,
  // `insertAfter`, `insertBefore`, `appendTo`, and `prependTo` methods.
  adjacencyOperators.forEach(function(key, operator) {
    $.fn[key] = function(){
      // arguments can be nodes, arrays of nodes, Zepto objects and HTML strings
      var nodes = $.map(arguments, function(n){ return isObject(n) ? n : zepto.fragment(n) })
      if (nodes.length < 1) return this
      var size = this.length, copyByClone = size > 1, inReverse = operator < 2

      return this.each(function(index, target){
        for (var i = 0; i < nodes.length; i++) {
          var node = nodes[inReverse ? nodes.length-i-1 : i]
          traverseNode(node, function(node){
            if (node.nodeName != null && node.nodeName.toUpperCase() === 'SCRIPT' && (!node.type || node.type === 'text/javascript'))
              window['eval'].call(window, node.innerHTML)
          })
          if (copyByClone && index < size - 1) node = node.cloneNode(true)
          insert(operator, target, node)
        }
      })
    }

    $.fn[(operator % 2) ? key+'To' : 'insert'+(operator ? 'Before' : 'After')] = function(html){
      $(html)[key](this)
      return this
    }
  })

  zepto.Z.prototype = $.fn

  // Export internal API functions in the `$.zepto` namespace
  zepto.camelize = camelize
  zepto.uniq = uniq
  $.zepto = zepto

  return $
})()

// If `$` is not yet defined, point it to `Zepto`
window.Zepto = Zepto
'$' in window || (window.$ = Zepto)
;(function($){
  var $$ = $.zepto.qsa, handlers = {}, _zid = 1, specialEvents={}

  specialEvents.click = specialEvents.mousedown = specialEvents.mouseup = specialEvents.mousemove = 'MouseEvents'

  function zid(element) {
    return element._zid || (element._zid = _zid++)
  }
  function findHandlers(element, event, fn, selector) {
    event = parse(event)
    if (event.ns) var matcher = matcherFor(event.ns)
    return (handlers[zid(element)] || []).filter(function(handler) {
      return handler
        && (!event.e  || handler.e == event.e)
        && (!event.ns || matcher.test(handler.ns))
        && (!fn       || zid(handler.fn) === zid(fn))
        && (!selector || handler.sel == selector)
    })
  }
  function parse(event) {
    var parts = ('' + event).split('.')
    return {e: parts[0], ns: parts.slice(1).sort().join(' ')}
  }
  function matcherFor(ns) {
    return new RegExp('(?:^| )' + ns.replace(' ', ' .* ?') + '(?: |$)')
  }

  function eachEvent(events, fn, iterator){
    if ($.isObject(events)) $.each(events, iterator)
    else events.split(/\s/).forEach(function(type){ iterator(type, fn) })
  }

  function add(element, events, fn, selector, getDelegate, capture){
    capture = !!capture
    var id = zid(element), set = (handlers[id] || (handlers[id] = []))
    eachEvent(events, fn, function(event, fn){
      var delegate = getDelegate && getDelegate(fn, event),
        callback = delegate || fn
      var proxyfn = function (event) {
        var result = callback.apply(element, [event].concat(event.data))
        if (result === false) event.preventDefault()
        return result
      }
      var handler = $.extend(parse(event), {fn: fn, proxy: proxyfn, sel: selector, del: delegate, i: set.length})
      set.push(handler)
      element.addEventListener(handler.e, proxyfn, capture)
    })
  }
  function remove(element, events, fn, selector){
    var id = zid(element)
    eachEvent(events || '', fn, function(event, fn){
      findHandlers(element, event, fn, selector).forEach(function(handler){
        delete handlers[id][handler.i]
        element.removeEventListener(handler.e, handler.proxy, false)
      })
    })
  }

  $.event = { add: add, remove: remove }

  $.proxy = function(fn, context) {
    if ($.isFunction(fn)) {
      var proxyFn = function(){ return fn.apply(context, arguments) }
      proxyFn._zid = zid(fn)
      return proxyFn
    } else if (typeof context == 'string') {
      return $.proxy(fn[context], fn)
    } else {
      throw new TypeError("expected function")
    }
  }

  $.fn.bind = function(event, callback){
    return this.each(function(){
      add(this, event, callback)
    })
  }
  $.fn.unbind = function(event, callback){
    return this.each(function(){
      remove(this, event, callback)
    })
  }
  $.fn.one = function(event, callback){
    return this.each(function(i, element){
      add(this, event, callback, null, function(fn, type){
        return function(){
          var result = fn.apply(element, arguments)
          remove(element, type, fn)
          return result
        }
      })
    })
  }

  var returnTrue = function(){return true},
      returnFalse = function(){return false},
      eventMethods = {
        preventDefault: 'isDefaultPrevented',
        stopImmediatePropagation: 'isImmediatePropagationStopped',
        stopPropagation: 'isPropagationStopped'
      }
  function createProxy(event) {
    var proxy = $.extend({originalEvent: event}, event)
    $.each(eventMethods, function(name, predicate) {
      proxy[name] = function(){
        this[predicate] = returnTrue
        return event[name].apply(event, arguments)
      }
      proxy[predicate] = returnFalse
    })
    return proxy
  }

  // emulates the 'defaultPrevented' property for browsers that have none
  function fix(event) {
    if (!('defaultPrevented' in event)) {
      event.defaultPrevented = false
      var prevent = event.preventDefault
      event.preventDefault = function() {
        this.defaultPrevented = true
        prevent.call(this)
      }
    }
  }

  $.fn.delegate = function(selector, event, callback){
    var capture = false
    if(event == 'blur' || event == 'focus'){
      if($.iswebkit)
        event = event == 'blur' ? 'focusout' : event == 'focus' ? 'focusin' : event
      else
        capture = true
    }

    return this.each(function(i, element){
      add(element, event, callback, selector, function(fn){
        return function(e){
          var evt, match = $(e.target).closest(selector, element).get(0)
          if (match) {
            evt = $.extend(createProxy(e), {currentTarget: match, liveFired: element})
            return fn.apply(match, [evt].concat([].slice.call(arguments, 1)))
          }
        }
      }, capture)
    })
  }
  $.fn.undelegate = function(selector, event, callback){
    return this.each(function(){
      remove(this, event, callback, selector)
    })
  }

  $.fn.live = function(event, callback){
    $(document.body).delegate(this.selector, event, callback)
    return this
  }
  $.fn.die = function(event, callback){
    $(document.body).undelegate(this.selector, event, callback)
    return this
  }

  $.fn.on = function(event, selector, callback){
    return selector == undefined || $.isFunction(selector) ?
      this.bind(event, selector) : this.delegate(selector, event, callback)
  }
  $.fn.off = function(event, selector, callback){
    return selector == undefined || $.isFunction(selector) ?
      this.unbind(event, selector) : this.undelegate(selector, event, callback)
  }

  $.fn.trigger = function(event, data){
    if (typeof event == 'string') event = $.Event(event)
    fix(event)
    event.data = data
    return this.each(function(){
      // items in the collection might not be DOM elements
      // (todo: possibly support events on plain old objects)
      if('dispatchEvent' in this) this.dispatchEvent(event)
    })
  }

  // triggers event handlers on current element just as if an event occurred,
  // doesn't trigger an actual event, doesn't bubble
  $.fn.triggerHandler = function(event, data){
    var e, result
    this.each(function(i, element){
      e = createProxy(typeof event == 'string' ? $.Event(event) : event)
      e.data = data
      e.target = element
      $.each(findHandlers(element, event.type || event), function(i, handler){
        result = handler.proxy(e)
        if (e.isImmediatePropagationStopped()) return false
      })
    })
    return result
  }

  // shortcut methods for `.bind(event, fn)` for each event type
  ;('focusin focusout load resize scroll unload click dblclick '+
  'mousedown mouseup mousemove mouseover mouseout '+
  'change select keydown keypress keyup error').split(' ').forEach(function(event) {
    $.fn[event] = function(callback){ return this.bind(event, callback) }
  })

  ;['focus', 'blur'].forEach(function(name) {
    $.fn[name] = function(callback) {
      if (callback) this.bind(name, callback)
      else if (this.length) try { this.get(0)[name]() } catch(e){}
      return this
    }
  })

  $.Event = function(type, props) {
    var event = document.createEvent(specialEvents[type] || 'Events'), bubbles = true
    if (props) for (var name in props) (name == 'bubbles') ? (bubbles = !!props[name]) : (event[name] = props[name])
    event.initEvent(type, bubbles, true, null, null, null, null, null, null, null, null, null, null, null, null)
    return event
  }

})(Zepto)
;(function($){
  function detect(ua){
    var os = this.os = {}, browser = this.browser = {},
      webkit = ua.match(/WebKit\/([\d.]+)/),
      android = ua.match(/(Android)\s+([\d.]+)/),
      ipad = ua.match(/(iPad).*OS\s([\d_]+)/),
      iphone = !ipad && ua.match(/(iPhone\sOS)\s([\d_]+)/),
      webos = ua.match(/(webOS|hpwOS)[\s\/]([\d.]+)/),
      touchpad = webos && ua.match(/TouchPad/),
      kindle = ua.match(/Kindle\/([\d.]+)/),
      silk = ua.match(/Silk\/([\d._]+)/),
      blackberry = ua.match(/(BlackBerry).*Version\/([\d.]+)/)

    // todo clean this up with a better OS/browser
    // separation. we need to discern between multiple
    // browsers on android, and decide if kindle fire in
    // silk mode is android or not

    if (browser.webkit = !!webkit) browser.version = webkit[1]

    if (android) os.android = true, os.version = android[2]
    if (iphone) os.ios = os.iphone = true, os.version = iphone[2].replace(/_/g, '.')
    if (ipad) os.ios = os.ipad = true, os.version = ipad[2].replace(/_/g, '.')
    if (webos) os.webos = true, os.version = webos[2]
    if (touchpad) os.touchpad = true
    if (blackberry) os.blackberry = true, os.version = blackberry[2]
    if (kindle) os.kindle = true, os.version = kindle[1]
    if (silk) browser.silk = true, browser.version = silk[1]
    if (!silk && os.android && ua.match(/Kindle Fire/)) browser.silk = true
  }

  detect.call($, navigator.userAgent)
  // make available to unit tests
  $.__detect = detect

})(Zepto)
;(function($, undefined){
  var prefix = '', eventPrefix, endEventName, endAnimationName,
    vendors = { Webkit: 'webkit', Moz: '', O: 'o', ms: 'MS' },
    document = window.document, testEl = document.createElement('div'),
    supportedTransforms = /^((translate|rotate|scale)(X|Y|Z|3d)?|matrix(3d)?|perspective|skew(X|Y)?)$/i,
    clearProperties = {}

  function downcase(str) { return str.toLowerCase() }
  function normalizeEvent(name) { return eventPrefix ? eventPrefix + name : downcase(name) }

  $.each(vendors, function(vendor, event){
    if (testEl.style[vendor + 'TransitionProperty'] !== undefined) {
      prefix = '-' + downcase(vendor) + '-'
      eventPrefix = event
      return false
    }
  })

  clearProperties[prefix + 'transition-property'] =
  clearProperties[prefix + 'transition-duration'] =
  clearProperties[prefix + 'transition-timing-function'] =
  clearProperties[prefix + 'animation-name'] =
  clearProperties[prefix + 'animation-duration'] = ''

  $.fx = {
    off: (eventPrefix === undefined && testEl.style.transitionProperty === undefined),
    cssPrefix: prefix,
    transitionEnd: normalizeEvent('TransitionEnd'),
    animationEnd: normalizeEvent('AnimationEnd')
  }

  $.fn.animate = function(properties, duration, ease, callback){
    if ($.isObject(duration))
      ease = duration.easing, callback = duration.complete, duration = duration.duration
    if (duration) duration = duration / 1000
    return this.anim(properties, duration, ease, callback)
  }

  $.fn.anim = function(properties, duration, ease, callback){
    var transforms, cssProperties = {}, key, that = this, wrappedCallback, endEvent = $.fx.transitionEnd
    if (duration === undefined) duration = 0.4
    if ($.fx.off) duration = 0

    if (typeof properties == 'string') {
      // keyframe animation
      cssProperties[prefix + 'animation-name'] = properties
      cssProperties[prefix + 'animation-duration'] = duration + 's'
      endEvent = $.fx.animationEnd
    } else {
      // CSS transitions
      for (key in properties)
        if (supportedTransforms.test(key)) {
          transforms || (transforms = [])
          transforms.push(key + '(' + properties[key] + ')')
        }
        else cssProperties[key] = properties[key]

      if (transforms) cssProperties[prefix + 'transform'] = transforms.join(' ')
      if (!$.fx.off && typeof properties === 'object') {
        cssProperties[prefix + 'transition-property'] = Object.keys(properties).join(', ')
        cssProperties[prefix + 'transition-duration'] = duration + 's'
        cssProperties[prefix + 'transition-timing-function'] = (ease || 'linear')
      }
    }

    wrappedCallback = function(event){
      if (typeof event !== 'undefined') {
        if (event.target !== event.currentTarget) return // makes sure the event didn't bubble from "below"
        $(event.target).unbind(endEvent, arguments.callee)
      }
      $(this).css(clearProperties)
      callback && callback.call(this)
    }
    if (duration > 0) this.bind(endEvent, wrappedCallback)

    setTimeout(function() {
      that.css(cssProperties)
      if (duration <= 0) setTimeout(function() {
        that.each(function(){ wrappedCallback.call(this) })
      }, 0)
    }, 0)

    return this
  }

  testEl = null
})(Zepto)
;(function($){
  var jsonpID = 0,
      isObject = $.isObject,
      document = window.document,
      key,
      name,
      rscript = /<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,
      scriptTypeRE = /^(?:text|application)\/javascript/i,
      xmlTypeRE = /^(?:text|application)\/xml/i,
      jsonType = 'application/json',
      htmlType = 'text/html',
      blankRE = /^\s*$/

  // trigger a custom event and return false if it was cancelled
  function triggerAndReturn(context, eventName, data) {
    var event = $.Event(eventName)
    $(context).trigger(event, data)
    return !event.defaultPrevented
  }

  // trigger an Ajax "global" event
  function triggerGlobal(settings, context, eventName, data) {
    if (settings.global) return triggerAndReturn(context || document, eventName, data)
  }

  // Number of active Ajax requests
  $.active = 0

  function ajaxStart(settings) {
    if (settings.global && $.active++ === 0) triggerGlobal(settings, null, 'ajaxStart')
  }
  function ajaxStop(settings) {
    if (settings.global && !(--$.active)) triggerGlobal(settings, null, 'ajaxStop')
  }

  // triggers an extra global event "ajaxBeforeSend" that's like "ajaxSend" but cancelable
  function ajaxBeforeSend(xhr, settings) {
    var context = settings.context
    if (settings.beforeSend.call(context, xhr, settings) === false ||
        triggerGlobal(settings, context, 'ajaxBeforeSend', [xhr, settings]) === false)
      return false

    triggerGlobal(settings, context, 'ajaxSend', [xhr, settings])
  }
  function ajaxSuccess(data, xhr, settings) {
    var context = settings.context, status = 'success'
    settings.success.call(context, data, status, xhr)
    triggerGlobal(settings, context, 'ajaxSuccess', [xhr, settings, data])
    ajaxComplete(status, xhr, settings)
  }
  // type: "timeout", "error", "abort", "parsererror"
  function ajaxError(error, type, xhr, settings) {
    var context = settings.context
    settings.error.call(context, xhr, type, error)
    triggerGlobal(settings, context, 'ajaxError', [xhr, settings, error])
    ajaxComplete(type, xhr, settings)
  }
  // status: "success", "notmodified", "error", "timeout", "abort", "parsererror"
  function ajaxComplete(status, xhr, settings) {
    var context = settings.context
    settings.complete.call(context, xhr, status)
    triggerGlobal(settings, context, 'ajaxComplete', [xhr, settings])
    ajaxStop(settings)
  }

  // Empty function, used as default callback
  function empty() {}

  $.ajaxJSONP = function(options){
    var callbackName = 'jsonp' + (++jsonpID),
      script = document.createElement('script'),
      abort = function(){
        $(script).remove()
        if (callbackName in window) window[callbackName] = empty
        ajaxComplete('abort', xhr, options)
      },
      xhr = { abort: abort }, abortTimeout

    if (options.error) script.onerror = function() {
      xhr.abort()
      options.error()
    }

    window[callbackName] = function(data){
      clearTimeout(abortTimeout)
      $(script).remove()
      delete window[callbackName]
      ajaxSuccess(data, xhr, options)
    }

    serializeData(options)
    script.src = options.url.replace(/=\?/, '=' + callbackName)
    $('head').append(script)

    if (options.timeout > 0) abortTimeout = setTimeout(function(){
        xhr.abort()
        ajaxComplete('timeout', xhr, options)
      }, options.timeout)

    return xhr
  }

  $.ajaxSettings = {
    // Default type of request
    type: 'GET',
    // Callback that is executed before request
    beforeSend: empty,
    // Callback that is executed if the request succeeds
    success: empty,
    // Callback that is executed the the server drops error
    error: empty,
    // Callback that is executed on request complete (both: error and success)
    complete: empty,
    // The context for the callbacks
    context: null,
    // Whether to trigger "global" Ajax events
    global: true,
    // Transport
    xhr: function () {
      return new window.XMLHttpRequest()
    },
    // MIME types mapping
    accepts: {
      script: 'text/javascript, application/javascript',
      json:   jsonType,
      xml:    'application/xml, text/xml',
      html:   htmlType,
      text:   'text/plain'
    },
    // Whether the request is to another domain
    crossDomain: false,
    // Default timeout
    timeout: 0
  }

  function mimeToDataType(mime) {
    return mime && ( mime == htmlType ? 'html' :
      mime == jsonType ? 'json' :
      scriptTypeRE.test(mime) ? 'script' :
      xmlTypeRE.test(mime) && 'xml' ) || 'text'
  }

  function appendQuery(url, query) {
    return (url + '&' + query).replace(/[&?]{1,2}/, '?')
  }

  // serialize payload and append it to the URL for GET requests
  function serializeData(options) {
    if (isObject(options.data)) options.data = $.param(options.data)
    if (options.data && (!options.type || options.type.toUpperCase() == 'GET'))
      options.url = appendQuery(options.url, options.data)
  }

  $.ajax = function(options){
    var settings = $.extend({}, options || {})
    for (key in $.ajaxSettings) if (settings[key] === undefined) settings[key] = $.ajaxSettings[key]

    ajaxStart(settings)

    if (!settings.crossDomain) settings.crossDomain = /^([\w-]+:)?\/\/([^\/]+)/.test(settings.url) &&
      RegExp.$2 != window.location.host

    var dataType = settings.dataType, hasPlaceholder = /=\?/.test(settings.url)
    if (dataType == 'jsonp' || hasPlaceholder) {
      if (!hasPlaceholder) settings.url = appendQuery(settings.url, 'callback=?')
      return $.ajaxJSONP(settings)
    }

    if (!settings.url) settings.url = window.location.toString()
    serializeData(settings)

    var mime = settings.accepts[dataType],
        baseHeaders = { },
        protocol = /^([\w-]+:)\/\//.test(settings.url) ? RegExp.$1 : window.location.protocol,
        xhr = $.ajaxSettings.xhr(), abortTimeout

    if (!settings.crossDomain) baseHeaders['X-Requested-With'] = 'XMLHttpRequest'
    if (mime) {
      baseHeaders['Accept'] = mime
      if (mime.indexOf(',') > -1) mime = mime.split(',', 2)[0]
      xhr.overrideMimeType && xhr.overrideMimeType(mime)
    }
    if (settings.contentType || (settings.data && settings.type.toUpperCase() != 'GET'))
      baseHeaders['Content-Type'] = (settings.contentType || 'application/x-www-form-urlencoded')
    settings.headers = $.extend(baseHeaders, settings.headers || {})

    xhr.onreadystatechange = function(){
      if (xhr.readyState == 4) {
        clearTimeout(abortTimeout)
        var result, error = false
        if ((xhr.status >= 200 && xhr.status < 300) || xhr.status == 304 || (xhr.status == 0 && protocol == 'file:')) {
          dataType = dataType || mimeToDataType(xhr.getResponseHeader('content-type'))
          result = xhr.responseText

          try {
            if (dataType == 'script')    (1,eval)(result)
            else if (dataType == 'xml')  result = xhr.responseXML
            else if (dataType == 'json') result = blankRE.test(result) ? null : JSON.parse(result)
          } catch (e) { error = e }

          if (error) ajaxError(error, 'parsererror', xhr, settings)
          else ajaxSuccess(result, xhr, settings)
        } else {
          ajaxError(null, 'error', xhr, settings)
        }
      }
    }

    var async = 'async' in settings ? settings.async : true
    xhr.open(settings.type, settings.url, async)

    for (name in settings.headers) xhr.setRequestHeader(name, settings.headers[name])

    if (ajaxBeforeSend(xhr, settings) === false) {
      xhr.abort()
      return false
    }

    if (settings.timeout > 0) abortTimeout = setTimeout(function(){
        xhr.onreadystatechange = empty
        xhr.abort()
        ajaxError(null, 'timeout', xhr, settings)
      }, settings.timeout)

    // avoid sending empty string (#319)
    xhr.send(settings.data ? settings.data : null)
    return xhr
  }

  $.get = function(url, success){ return $.ajax({ url: url, success: success }) }

  $.post = function(url, data, success, dataType){
    if ($.isFunction(data)) dataType = dataType || success, success = data, data = null
    return $.ajax({ type: 'POST', url: url, data: data, success: success, dataType: dataType })
  }

  $.getJSON = function(url, success){
    return $.ajax({ url: url, success: success, dataType: 'json' })
  }

  $.fn.load = function(url, success){
    if (!this.length) return this
    var self = this, parts = url.split(/\s/), selector
    if (parts.length > 1) url = parts[0], selector = parts[1]
    $.get(url, function(response){
      self.html(selector ?
        $(document.createElement('div')).html(response.replace(rscript, "")).find(selector).html()
        : response)
      success && success.call(self)
    })
    return this
  }

  var escape = encodeURIComponent

  function serialize(params, obj, traditional, scope){
    var array = $.isArray(obj)
    $.each(obj, function(key, value) {
      if (scope) key = traditional ? scope : scope + '[' + (array ? '' : key) + ']'
      // handle data in serializeArray() format
      if (!scope && array) params.add(value.name, value.value)
      // recurse into nested objects
      else if (traditional ? $.isArray(value) : isObject(value))
        serialize(params, value, traditional, key)
      else params.add(key, value)
    })
  }

  $.param = function(obj, traditional){
    var params = []
    params.add = function(k, v){ this.push(escape(k) + '=' + escape(v)) }
    serialize(params, obj, traditional)
    return params.join('&').replace('%20', '+')
  }
})(Zepto)
;(function ($) {
  $.fn.serializeArray = function () {
    var result = [], el
    $( Array.prototype.slice.call(this.get(0).elements) ).each(function () {
      el = $(this)
      var type = el.attr('type')
      if (this.nodeName.toLowerCase() != 'fieldset' &&
        !this.disabled && type != 'submit' && type != 'reset' && type != 'button' &&
        ((type != 'radio' && type != 'checkbox') || this.checked))
        result.push({
          name: el.attr('name'),
          value: el.val()
        })
    })
    return result
  }

  $.fn.serialize = function () {
    var result = []
    this.serializeArray().forEach(function (elm) {
      result.push( encodeURIComponent(elm.name) + '=' + encodeURIComponent(elm.value) )
    })
    return result.join('&')
  }

  $.fn.submit = function (callback) {
    if (callback) this.bind('submit', callback)
    else if (this.length) {
      var event = $.Event('submit')
      this.eq(0).trigger(event)
      if (!event.defaultPrevented) this.get(0).submit()
    }
    return this
  }

})(Zepto)
;(function($){
  var touch = {}, touchTimeout

  function parentIfText(node){
    return 'tagName' in node ? node : node.parentNode
  }

  function swipeDirection(x1, x2, y1, y2){
    var xDelta = Math.abs(x1 - x2), yDelta = Math.abs(y1 - y2)
    return xDelta >= yDelta ? (x1 - x2 > 0 ? 'Left' : 'Right') : (y1 - y2 > 0 ? 'Up' : 'Down')
  }

  var longTapDelay = 750, longTapTimeout

  function longTap(){
    longTapTimeout = null
    if (touch.last) {
      touch.el.trigger('longTap')
      touch = {}
    }
  }

  function cancelLongTap(){
    if (longTapTimeout) clearTimeout(longTapTimeout)
    longTapTimeout = null
  }

  $(document).ready(function(){
    var now, delta

    $(document.body).bind('touchstart', function(e){
      now = Date.now()
      delta = now - (touch.last || now)
      touch.el = $(parentIfText(e.touches[0].target))
      touchTimeout && clearTimeout(touchTimeout)
      touch.x1 = e.touches[0].pageX
      touch.y1 = e.touches[0].pageY
      if (delta > 0 && delta <= 250) touch.isDoubleTap = true
      touch.last = now
      longTapTimeout = setTimeout(longTap, longTapDelay)
    }).bind('touchmove', function(e){
      cancelLongTap()
      touch.x2 = e.touches[0].pageX
      touch.y2 = e.touches[0].pageY
    }).bind('touchend', function(e){
       cancelLongTap()

      // double tap (tapped twice within 250ms)
      if (touch.isDoubleTap) {
        touch.el.trigger('doubleTap')
        touch = {}

      // swipe
      } else if ((touch.x2 && Math.abs(touch.x1 - touch.x2) > 30) ||
                 (touch.y2 && Math.abs(touch.y1 - touch.y2) > 30)) {
        touch.el.trigger('swipe') &&
          touch.el.trigger('swipe' + (swipeDirection(touch.x1, touch.x2, touch.y1, touch.y2)))
        touch = {}

      // normal tap
      } else if ('last' in touch) {
        touch.el.trigger('tap')

        touchTimeout = setTimeout(function(){
          touchTimeout = null
          touch.el.trigger('singleTap')
          touch = {}
        }, 250)
      }
    }).bind('touchcancel', function(){
      if (touchTimeout) clearTimeout(touchTimeout)
      if (longTapTimeout) clearTimeout(longTapTimeout)
      longTapTimeout = touchTimeout = null
      touch = {}
    })
  })

  ;['swipe', 'swipeLeft', 'swipeRight', 'swipeUp', 'swipeDown', 'doubleTap', 'tap', 'singleTap', 'longTap'].forEach(function(m){
    $.fn[m] = function(callback){ return this.bind(m, callback) }
  })
})(Zepto)


</script>


<style>

.resize {
    width: 100px;
    height: 40px;
    border: none;
    color: #000;
}

.resize2 {
    width: 100%;
    height: 50px;
    border: none;
    color: #000;
}

</style>




<!--------------------------------------------------------END RESIZE TEXT IN PROJECT NAME------------------------------------------------------------------------------>












 
</head>
 <body>

       <div class="bg-dark dk" id="wrap">
            
              
               <jsp:include page="TopLayer.jsp"></jsp:include>
                <!-- /#top -->
                      <jsp:include page="ProfileInclude.jsp"></jsp:include>
        <!--close-left-menu-stats-sidebar-->
        
                        <div id="content">
 
<div class="btn-group" style="float: left">
              <button data-toggle="dropdown" class="btn btn-success dropdown-toggle">Projects <span class="caret"></span></button>
              <ul class="dropdown-menu">
                <li><a href="currentProject.jsp">Current Projects</a></li>
                <li><a href="SubmiteedProject.jsp">Submitted Projects</a></li>
                <li><a href="ViewProject.jsp">Pending Projects</a></li>
                <li><a href="ViewDeferredProjects.jsp">Deferred Projects</a></li>
              </ul>
            </div>
    
    
    
   
   
  <div class="outer">
      
      <ul style="float:right">
          <a href="currentProject.jsp" title="Grid View"><i class="glyphicon glyphicon-th-list" style="font-size: 20px;color: #ffffff"></i></a>&nbsp;
        <a href="ProjectTileTest2.jsp" title="Card View"><i class="glyphicon glyphicon-th" style="font-size: 20px;color: #ffffff"></i></a>
  
     </ul>
                
                <div class="inner bg-light lter">

  <div class="row-fluid">
    <div class="span12">
     <div class="widget-box">
          
          <div class="widget-content">
            <div class="todo">
				
				
				<div class="wrapper1">
					<div class="scrolls" align="center">
					 
					<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from projectmanagement p, employees e where status = '" + "In Progress" + "' AND e.employeeID = p.projectManager";
resultSet = statement.executeQuery(sql);


%>

              <tbody>
                  <tr class="gradeX">
                      
                      <%

int i=0;
while(resultSet.next()){
%>
   

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
int z = Integer.parseInt(resultSet.getString("projectID")); 
String sql2 = "select count(*) from projecttask where projectName = '" + z  + "'";
resultSet2 = statement.executeQuery(sql2);
resultSet2.next();

 totalTask = resultSet2.getInt(1);


 
String sql3 = "select count(*) from projecttask where projectName = '" + z + "' AND status = '" + "Completed" + "'";
resultSet3 = statement.executeQuery(sql3);
resultSet3.next();

 totalCompleted = resultSet3.getInt(1);
 
 pecentage = (totalCompleted * 100) / totalTask;
 
%>


<%
//**Should I input the codes here?**
        }
          catch (Exception e) {
e.printStackTrace();
}
%>
              
					 
							<div class="img" >
							
								<div class="wrapper2">
										<div class="top-icons">
										
										</div>
										
										<div class="profile">
											<h4 class="resize"><b>
												
                                                                                                 <%=resultSet.getString("projectName")%> 
											</h4>
                                                                                    
                                                                                    <div class="profile">
		
              
		
	
	</div>
											
											
											</br>
											<p class="resize2" ><%=resultSet.getString("projectDescription")%></p>
											<!--<p class="description">Lorem ipsum dolor </p>-->
											
											<script>

												(function() {
												  var elements = $('.resize');
												  if(elements.length < 0) {
													return;
												  }
												  elements.each(function(i, element) {
													while(element.scrollWidth > element.offsetWidth || element.scrollHeight > element.offsetHeight) {
													  var newFontSize = (parseFloat($(element).css('font-size').slice(0, -2)) * 0.95) + 'px';
													  $(element).css('font-size', newFontSize);
													}
												  });
												})();
												
												
												
												(function() {
												  var elements = $('.resize2');
												  if(elements.length < 0) {
													return;
												  }
												  elements.each(function(i, element) {
													while(element.scrollWidth > element.offsetWidth || element.scrollHeight > element.offsetHeight) {
													  var newFontSize = (parseFloat($(element).css('font-size').slice(0, -2)) * 0.95) + 'px';
													  $(element).css('font-size', newFontSize);
													}
												  });
												})();

											</script>
											
										  <a class="btn" href="ViewTaskPerProject.jsp?id=<%=resultSet.getString("projectID")%>"><%=totalTask%> - Task(s)</a>
											
											</br>
											
										
												<div class="progress mini progress-striped active">
        <div style="width: <%=pecentage%>%" class="progress-bar"><span><%=pecentage%>%</span></div>
      </div>
											
										</div>
										
										
										
										
										<div class="social-icons">
            <div>
			
			<h5>Start Date</h5>
			<span class="btn btn-success btn-xs btn-round"><%=resultSet.getString("startDate")%></span> 
		</div>
		
		
		
		<div>
			
			<h5>End Date</h5>
			<span class="btn btn-danger btn-xs btn-round"><%=resultSet.getString("dueDate")%></span> 
		</div>
	</div>
										
										
										
								</div>
								
								
								
								
							</div>
                
                
<%
i++;
}

%>

</tr>

<%
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
						
						
						
					</div>
					
					
					
					
				</div>
				
				
				
				
				
				
			  
            </div>
 
			
			
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>

  
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->

</div></div></div></div></div>
  <jsp:include page="Footer.jsp"></jsp:include>


<script src="assets/lib/jquery/jquery.js"></script>

                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.0/jquery-ui.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.26.6/js/jquery.tablesorter.min.js"></script>
                    <script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>
                    
                    
                     <script src="assets/lib/bootstrap/js/bootstrap.js"></script>
                     <script src="assets/lib/metismenu/metisMenu.js"></script>
                     
                      <script src="assets/lib/onoffcanvas/onoffcanvas.js"></script>
            <!-- Screenfull -->
            <script src="assets/lib/screenfull/screenfull.js"></script>

            
             <script src="assets/js/core.js"></script>
            <!-- Metis demo scripts -->
            <script src="assets/js/app.js"></script>
            
            
             <script>
                    $(function() {
                      Metis.MetisTable();
                      Metis.metisSortable();
                    });
                </script>

            


</body>
</html>
