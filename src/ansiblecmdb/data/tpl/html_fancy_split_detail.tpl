## -*- coding: utf-8 -*-
<%! from ansiblecmdb.util import to_bool %>

<%namespace name="defs" file="/html_fancy_defs.html" import="*" />

<%
# Default parameter values
local_js = to_bool(context.get('local_js', '0'))
collapsed = to_bool(context.get('collapsed', '0'))

# Set the Javascript resource URL (relative path for HTTP serving)
res_url = "static"
%>

<% html_header(host['name'], local_js, res_url) %>
<% html_header_bar(host['name']) %>
<div id="hosts">
  <% html_host_detail(host, collapsed=collapsed, skip_empty=skip_empty, is_split=True) %>
</div>
<% html_footer_bar(version) %>

<script>
$(document).ready( function () {
  <% js_ev_collapse() %>
});
</script>

<% html_footer() %>
