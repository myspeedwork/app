<style>
.table-primary tbody tr:nth-child(odd) td, .table-primary tbody tr:nth-child(odd) th {
background: #fff;
}
.table-primary.table-bordered tbody td {
border-color: #dddddd;
border-width: 1px;
box-shadow: 0 0 0 1px #fff inset;
-webkit-box-shadow: 0 0 0 1px #fff inset;
}
.table-primary tbody td {
color: #484c50;
background: #fafafa;
border-width: 0px;
}
.table-bordered th, .table-bordered td {
border-color: #d7d8da;
}
.table th, .table td {
border-top-color: #f8f8f8;
}
.table-bordered th, .table-bordered td {
border-left: 1px solid #ddd;
}
.table th, .table td {
padding: 8px;
line-height: 20px;
vertical-align: top;
border-top: 1px solid #ddd;
}
.table-primary thead th {
border-color: #37a6cd;
background-color: #37a6cd;
color: #fff;
text-transform: uppercase;
text-shadow: 0 1px 0 rgba(0, 0, 0, 0.5);
box-shadow: inset 1px 1px 1px rgba(255, 255, 255, 0.2),inset -1px -1px 1px rgba(0, 0, 0, 0.2);
-moz-box-shadow: inset 1px 1px 1px rgba(255, 255, 255, 0.2),inset -1px -1px 1px rgba(0, 0, 0, 0.2);
-webkit-box-shadow: inset 1px 1px 1px rgba(255, 255, 255, 0.2),inset -1px -1px 1px rgba(0, 0, 0, 0.2);
-webkit-border-radius: 8px 8px 0 0;
-moz-border-radius: 8px 8px 0 0;
border-radius: 8px 8px 0 0;
}
td, th {
display: table-cell;
vertical-align: inherit;
}
Inherited from table.table.table-bordered.table-primary
.table-bordered {
border-collapse: separate;
}
table {
border-collapse: collapse;
border-spacing: 0;
}
user agent stylesheettable {
border-collapse: separate;
border-spacing: 2px;
border-color: gray;
}
Inherited from body
body {
font-family: 'Open Sans',sans-serif;
font-size: 10pt;
}
</style>
<page backtop="100px" backbottom="14mm" backleft="10mm" backright="10mm" pagegroup="new">
	<page_header>
	{*<img src="{$imageurl}images/logo.jpg" width="100" alt="" style="display:block;">*}
	</page_header>
	<!--PDFBODY-->
	<page_footer>
	 {$sitename}. All Right Reserved. 
	</page_footer>
</page>