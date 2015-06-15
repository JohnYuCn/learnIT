<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>


		<!-- <title>代码项</title> -->
	<jsp:include page="../login/common.jsp" />
	<script type="text/javascript">
		$(document).ready(function(){
			$("#tableDiv").load("<%=path%>/system/codeItemRight/1");
		});
	</script>
	
	<div id="wrapper" style="padding:10px 10px;">
        <div class="row">
        	<div id="codeTree" class="col-md-2">
        		<jsp:include page="codeItemLeft.jsp" />
        	</div>
			<div id="tableDiv" class="col-md-10">
			</div>
    	</div>
	</div>
		<script type="text/javascript">
/**/

//resize of div
(function($, h, c) {
	var a = $( []), e = $.resize = $.extend($.resize, {}), i, k = "setTimeout", j = "resize", d = j
			+ "-special-event", b = "delay", f = "throttleWindow";
	e[b] = 250;
	e[f] = true;
	$.event.special[j] = {
		setup : function() {
			if (!e[f] && this[k]) {
				return false;
			}
			var l = $(this);
			a = a.add(l);
			$.data(this, d, {
				w : l.width(),
				h : l.height()
			});
			if (a.length === 1) {
				g();
			}
		},
		teardown : function() {
			if (!e[f] && this[k]) {
				return false;
			}
			var l = $(this);
			a = a.not(l);
			l.removeData(d);
			if (!a.length) {
				clearTimeout(i);
			}
		},
		add : function(l) {
			if (!e[f] && this[k]) {
				return false;
			}
			var n;
			function m(s, o, p) {
				var q = $(this), r = $.data(this, d);
				r.w = o !== c ? o : q.width();
				r.h = p !== c ? p : q.height();
				n.apply(this, arguments);
			}
			if ($.isFunction(l)) {
				n = l;
				return m;
			} else {
				n = l.handler;
				l.handler = m;
			}
		}
	};
	function g() {
		i = h[k](function() {
			a.each(function() {
				var n = $(this), m = n.width(), l = n.height(), o = $.data(
						this, d);
				if (m !== o.w || l !== o.h) {
					n.trigger(j, [ o.w = m, o.h = l ]);
				}
			});
			g();
		}, e[b]);
	}
})(jQuery, this);




</script>
