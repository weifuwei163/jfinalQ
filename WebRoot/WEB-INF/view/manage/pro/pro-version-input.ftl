<#include "/WEB-INF/view/inc.ftl"/>

<@ueditor init=false>ue = UE.getEditor('ueditor',{zIndex:1100});</@bsueditor>
<form class="form-horizontal" role="form">
	<input type="hidden" name="row.id" value="${(row.id)!}"/>
	<@bsinput title='所属项目' input=false>
		<select class="form-control" name='row.pro_detail_id'>
			<#list proDetails as item>
				<option value="${item.id}" <#if row?? && row.pro_detail_id == item.id>selected</#if>>${item.pro_name}</option>
			</#list>
		</select>
	</@bsinput>
	<@bsinput title='版本代号' name='row.ver_code' value='${(row.ver_code)!}'/>
	<@bsinput title='版本详情' input=false>
		<script id="ueditor" name="row.ver_desc" type="text/plain">${(row.ver_desc)!}</script>
	</@bsinput>
</form>