{if $row.post_id}
<h1 class="header">{$row.post_title}</h1>
<section class="context-widget">
   {$row.post_content}
</section>
{else}
<h2>Coming soon..</h2>
{/if}