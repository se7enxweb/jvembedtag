{*if $videoWidth|is_integer|not}{set $videoWidth = ezini( 'YoutubeSettings', 'DefaultWidth', 'embedtag.ini' )}{/if}
{if $videoHeight|is_integer|not}{set $videoHeight = ezini( 'YoutubeSettings', 'DefaultHeight', 'embedtag.ini' )}{/if}
{def $embedUrl = fetch( 'embedtag', 'youtube_embed_url', hash( 'video_url', $video ) ) *}

<div class="jvembed jvembed-spotify-player">
    <iframe width="{$playerWidth}" height="{$playerHeight}" src={$song} frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture" loading="lazy"></iframe>
</div>