

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <title>
  Mystica / CoffeeScript Compiler for Windows / source &mdash; Bitbucket
</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="description" content="" />
  <meta name="keywords" content="" />
  <!--[if lt IE 9]>
  <script src="https://dwz7u9t8u8usb.cloudfront.net/m/2484565b655c/js/lib/html5.js"></script>
  <![endif]-->

  <script>
    (function (window) {
      // prevent stray occurrences of `console.log` from causing errors in IE
      var console = window.console || (window.console = {});
      console.log || (console.log = function () {});

      var BB = window.BB || (window.BB = {});
      BB.debug = false;
      BB.cname = false;
      BB.CANON_URL = 'https://bitbucket.org';
      BB.MEDIA_URL = 'https://dwz7u9t8u8usb.cloudfront.net/m/2484565b655c/';
      BB.images = {
        noAvatar: 'https://dwz7u9t8u8usb.cloudfront.net/m/2484565b655c/img/no_avatar.png'
      };
      BB.user = {"isKbdShortcutsEnabled": true, "isSshEnabled": false};
      BB.user.has = (function () {
        var betaFeatures = [];
        betaFeatures.push('repo2');
        return function (feature) {
          return _.contains(betaFeatures, feature);
        };
      }());
      BB.targetUser = BB.user;
  
      BB.repo || (BB.repo = {});
  
      BB.user.isAdmin = false;
      BB.repo.id = 252696;
    
    
      BB.repo.language = 'shell';
      BB.repo.pygmentsLanguage = null;
    
    
      BB.repo.slug = 'coffeescript\u002Dcompiler\u002Dfor\u002Dwindows';
    
    
      BB.repo.owner = {
        username: 'Mystica'
      };
    
      // Coerce `BB.repo` to a string to get
      // "davidchambers/mango" or whatever.
      BB.repo.toString = function () {
        return BB.cname ? this.slug : this.owner.username + '/' + this.slug;
      }
    
    
      BB.changeset = '135099abce86'
    
    
  
    }(this));
  </script>

  


  <link rel="stylesheet" href="https://dwz7u9t8u8usb.cloudfront.net/m/2484565b655c/bun/css/bundle.css"/>



  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="Bitbucket" />
  <link rel="icon" href="https://dwz7u9t8u8usb.cloudfront.net/m/2484565b655c/img/logo_new.png" type="image/png" />
  <link type="text/plain" rel="author" href="/humans.txt" />


  
    <script src="https://dwz7u9t8u8usb.cloudfront.net/m/2484565b655c/bun/js/bundle.js"></script>
  



</head>

<body id="" class="">
  <script>
    if (navigator.userAgent.indexOf(' AppleWebKit/') === -1) {
      $('body').addClass('non-webkit')
    }
    $('body')
      .addClass($.client.os.toLowerCase())
      .addClass($.client.browser.toLowerCase())
  </script>
  <!--[if IE 8]>
  <script>jQuery(document.body).addClass('ie8')</script>
  <![endif]-->
  <!--[if IE 9]>
  <script>jQuery(document.body).addClass('ie9')</script>
  <![endif]-->

  <div id="wrapper">



  <div id="header-wrap">
    <div id="header">
    <ul id="global-nav">
      <li><a class="home" href="http://www.atlassian.com">Atlassian Home</a></li>
      <li><a class="docs" href="http://confluence.atlassian.com/display/BITBUCKET">Documentation</a></li>
      <li><a class="support" href="/support">Support</a></li>
      <li><a class="blog" href="http://blog.bitbucket.org">Blog</a></li>
      <li><a class="forums" href="http://groups.google.com/group/bitbucket-users">Forums</a></li>
    </ul>
    <a href="/" id="logo">Bitbucket by Atlassian</a>

    <div id="main-nav">
    
      <ul class="clearfix">
        <li><a href="/plans">Pricing &amp; signup</a></li>
        <li><a id="explore-link" href="/explore">Explore Bitbucket</a></li>
        <li><a href="/account/signin/?next=/Mystica/coffeescript-compiler-for-windows/src/135099abce86/README.txt">Log in</a></li>
        

<li class="search-box">
  
    <form action="/repo/all">
      <input type="search" results="5" autosave="bitbucket-explore-search"
             name="name" id="searchbox"
             placeholder="owner/repo" />
  
  </form>
</li>

      </ul>
    
    </div>

  

    </div>
  </div>

    <div id="header-messages">
  
  
    
    
    
    
  

    
   </div>



    <div id="content">
      <div id="source">
      
  
  





  <script>
    jQuery(function ($) {
        var cookie = $.cookie,
            cookieOptions, date,
            $content = $('#content'),
            $pane = $('#what-is-bitbucket'),
            $hide = $pane.find('[href="#hide"]').css('display', 'block').hide();

        date = new Date();
        date.setTime(date.getTime() + 365 * 24 * 60 * 60 * 1000);
        cookieOptions = { path: '/', expires: date };

        if (cookie('toggle_status') == 'hide') $content.addClass('repo-desc-hidden');

        $('#toggle-repo-content').click(function (event) {
            event.preventDefault();
            $content.toggleClass('repo-desc-hidden');
            cookie('toggle_status', cookie('toggle_status') == 'show' ? 'hide' : 'show', cookieOptions);
        });

        if (!cookie('hide_intro_message')) $pane.show();

        $hide.click(function (event) {
            event.preventDefault();
            cookie('hide_intro_message', true, cookieOptions);
            $pane.slideUp('slow');
        });

        $pane.hover(
            function () { $hide.fadeIn('fast'); },
            function () { $hide.fadeOut('fast'); });

      (function () {
        // Update "recently-viewed-repos" cookie for
        // the "repositories" drop-down.
        var
          id = BB.repo.id,
          cookieName = 'recently-viewed-repos_' + BB.user.id,
          rvr = cookie(cookieName),
          ids = rvr? rvr.split(','): [],
          idx = _.indexOf(ids, '' + id);

        // Remove `id` from `ids` if present.
        if (~idx) ids.splice(idx, 1);

        cookie(
          cookieName,
          // Insert `id` as the first item, then call
          // `join` on the resulting array to produce
          // something like "114694,27542,89002,84570".
          [id].concat(ids.slice(0, 4)).join(),
          {path: '/', expires: 1e6} // "never" expires
        );
      }());
    });
  </script>



    <div id="what-is-bitbucket" class="new-to-bitbucket">
      <h2>Mystica <span id="slogan">is sharing code with you</span></h2>
      <img src="https://bitbucket-assetroot.s3.amazonaws.com/c/photos/2011/Apr/11/Mystica-avatar-1689471706-4_avatar.PNG" alt="" class="avatar" />
      <p>Bitbucket is a code hosting site. Unlimited public and private repositories. Free for small teams.</p>
      <div class="primary-action-link signup"><a href="/account/signup/?utm_source=internal&utm_medium=banner&utm_campaign=what_is_bitbucket">Try Bitbucket free</a></div>
      <a href="#hide" title="Don't show this again">Don't show this again</a>
    </div>


<div id="tabs" class="tabs">
  <ul>
    
      <li>
        <a href="/Mystica/coffeescript-compiler-for-windows/overview" id="repo-overview-link">Overview</a>
      </li>
    

    
      <li>
        <a href="/Mystica/coffeescript-compiler-for-windows/downloads" id="repo-downloads-link">Downloads (<span id="downloads-count">1</span>)</a>
      </li>
    

    
      
    

    
      <li>
        <a href="/Mystica/coffeescript-compiler-for-windows/pull-requests" id="repo-pr-link">Pull requests (0)</a>
      </li>
    

    
      <li class="selected">
        
          <a href="/Mystica/coffeescript-compiler-for-windows/src" id="repo-source-link">Source</a>
        
      </li>
    

    
      <li>
        <a href="/Mystica/coffeescript-compiler-for-windows/changesets" id="repo-commits-link">Commits</a>
      </li>
    

    
      <li id="wiki-tab" class="dropdown"
        style="display:
                          none  
          
        ">
        <a href="/Mystica/coffeescript-compiler-for-windows/wiki" id="repo-wiki-link">Wiki</a>
      </li>
    

    
      <li id="issues-tab" class="dropdown inertial-hover"
        style="display:
                        none  
          
        ">
        <a href="/Mystica/coffeescript-compiler-for-windows/issues?status=new&amp;status=open" id="repo-issues-link">Issues (0) &raquo;</a>
        <ul>
          <li><a href="/Mystica/coffeescript-compiler-for-windows/issues/new">Create new issue</a></li>
          <li><a href="/Mystica/coffeescript-compiler-for-windows/issues?status=new">New issues</a></li>
          <li><a href="/Mystica/coffeescript-compiler-for-windows/issues?status=new&amp;status=open">Open issues</a></li>
          <li><a href="/Mystica/coffeescript-compiler-for-windows/issues?status=duplicate&amp;status=invalid&amp;status=resolved&amp; status=wontfix">Closed issues</a></li>
          
          <li><a href="/Mystica/coffeescript-compiler-for-windows/issues">All issues</a></li>
          <li><a href="/Mystica/coffeescript-compiler-for-windows/issues/query">Advanced query</a></li>
        </ul>
      </li>
    

    
  </ul>

  <ul>
    
      <li>
        <a href="/Mystica/coffeescript-compiler-for-windows/descendants" id="repo-forks-link">Forks/queues (0)</a>
      </li>
    

    
      <li>
        <a href="/Mystica/coffeescript-compiler-for-windows/zealots">Followers (<span id="followers-count">1</span>)</a>
      </li>
    
  </ul>
</div>



 

  <div class="repo-menu" id="repo-menu">
    <ul id="repo-menu-links">
    
      <li>
        <a href="/Mystica/coffeescript-compiler-for-windows/rss" class="rss" title="RSS feed for CoffeeScript Compiler for Windows">RSS</a>
      </li>

      <li><a id="repo-fork-link" href="/Mystica/coffeescript-compiler-for-windows/fork" class="fork">fork</a></li>
      
        
          <li><a id="repo-patch-queue-link" href="/Mystica/coffeescript-compiler-for-windows/hack" class="patch-queue">patch queue</a></li>
        
      
      <li>
        <a id="repo-follow-link" rel="nofollow" href="/Mystica/coffeescript-compiler-for-windows/follow" class="follow">follow</a>
      </li>
      
          
      
      
        <li class="get-source inertial-hover">
          <a class="source">get source</a>
          <ul class="downloads">
            
              
              <li><a rel="nofollow" href="/Mystica/coffeescript-compiler-for-windows/get/135099abce86.zip">zip</a></li>
              <li><a rel="nofollow" href="/Mystica/coffeescript-compiler-for-windows/get/135099abce86.tar.gz">gz</a></li>
              <li><a rel="nofollow" href="/Mystica/coffeescript-compiler-for-windows/get/135099abce86.tar.bz2">bz2</a></li>
            
          </ul>
        </li>
      
    </ul>

  
    <ul class="metadata">
      
      
        <li class="branches inertial-hover">branches
          <ul>
            <li><a href="/Mystica/coffeescript-compiler-for-windows/src/135099abce86" title="default">default</a>
              
              
            </li>
          </ul>
        </li>
      
      
      <li class="tags inertial-hover">tags
        <ul>
          <li><a href="/Mystica/coffeescript-compiler-for-windows/src/135099abce86">tip</a>
            
            </li>
        </ul>
      </li>
     
     
    </ul>
  
</div>

<div class="repo-menu" id="repo-desc">
    <ul id="repo-menu-links-mini">
      

      
      <li>
        <a href="/Mystica/coffeescript-compiler-for-windows/rss" class="rss" title="RSS feed for CoffeeScript Compiler for Windows"></a>
      </li>

      <li><a href="/Mystica/coffeescript-compiler-for-windows/fork" class="fork" title="Fork"></a></li>
      
        
          <li><a href="/Mystica/coffeescript-compiler-for-windows/hack" class="patch-queue" title="Patch queue"></a></li>
        
      
      <li>
        <a rel="nofollow" href="/Mystica/coffeescript-compiler-for-windows/follow" class="follow">follow</a>
      </li>
      
          
      
      
        <li>
          <a class="source" title="Get source"></a>
          <ul class="downloads">
            
              
              <li><a rel="nofollow" href="/Mystica/coffeescript-compiler-for-windows/get/135099abce86.zip">zip</a></li>
              <li><a rel="nofollow" href="/Mystica/coffeescript-compiler-for-windows/get/135099abce86.tar.gz">gz</a></li>
              <li><a rel="nofollow" href="/Mystica/coffeescript-compiler-for-windows/get/135099abce86.tar.bz2">bz2</a></li>
            
          </ul>
        </li>
      
    </ul>

    <h3 id="repo-heading" class="public hg">
      <a class="owner-username" href="/Mystica">Mystica</a> /
      <a class="repo-name" href="/Mystica/coffeescript-compiler-for-windows">CoffeeScript Compiler for Windows</a>
    

    
    </h3>

    
      <p class="repo-desc-description">A simple compiler for CoffeeScript ( <a href="http://jashkenas.github.com/coffee-script/" rel="nofollow">http://jashkenas.github.com/coffee-script/</a> ) on Windows.
This can compile and continual-compilation.

&gt; cd &quot;project-home&quot;
&gt; cfsc -cc</p>
    

  <div id="repo-desc-cloneinfo">Clone this repository (size: 44.2 KB):
    <a href="https://bitbucket.org/Mystica/coffeescript-compiler-for-windows" class="https">HTTPS</a> /
    <a href="ssh://hg@bitbucket.org/Mystica/coffeescript-compiler-for-windows" class="ssh">SSH</a>
    
      <div id="sourcetree-clone-link" class="clone-in-client mac anonymous help-activated"
          data-desktop-clone-url-ssh="sourcetree://cloneRepo/ssh://hg@bitbucket.org/Mystica/coffeescript-compiler-for-windows"
          data-desktop-clone-url-https="sourcetree://cloneRepo/https://bitbucket.org/Mystica/coffeescript-compiler-for-windows">
         /
           <a class="desktop-ssh"
             href="sourcetree://cloneRepo/ssh://hg@bitbucket.org/Mystica/coffeescript-compiler-for-windows">SourceTree</a>
           <a class="desktop-https"
             href="sourcetree://cloneRepo/https://bitbucket.org/Mystica/coffeescript-compiler-for-windows">SourceTree</a>
      </div>
    
    <pre id="clone-url-https">hg clone https://bitbucket.org/Mystica/coffeescript-compiler-for-windows</pre>
    <pre id="clone-url-ssh">hg clone ssh://hg@bitbucket.org/Mystica/coffeescript-compiler-for-windows</pre>
    
  </div>

        <a href="#" id="toggle-repo-content"></a>

        

</div>




      
  <div id="source-container">
    

  <div id="source-path">
    <h1>
      <a href="/Mystica/coffeescript-compiler-for-windows/src" class="src-pjax">CoffeeScript Compiler for Windows</a> /

  
    
      <span>README.txt</span>
    
  

    </h1>
  </div>

  <div class="labels labels-csv">
  
    <dl>
  
    
  
  
    
  
  
    <dt>Branch</dt>
    
      
        <dd class="branch unabridged"><a href="/Mystica/coffeescript-compiler-for-windows/changesets/tip/branch(%22default%22)" title="default">default</a></dd>
      
    
  
</dl>

  
  </div>


  
  <div id="source-view">
    <div class="header">
      <ul class="metadata">
        <li><code>135099abce86</code></li>
        
          
            <li>39 loc</li>
          
        
        <li>1.0 KB</li>
      </ul>
      <ul class="source-view-links">
        
        <li><a id="embed-link" href="https://bitbucket.org/Mystica/coffeescript-compiler-for-windows/src/135099abce86/README.txt?embed=t">embed</a></li>
        
        <li><a href="/Mystica/coffeescript-compiler-for-windows/history/README.txt">history</a></li>
        
        <li><a href="/Mystica/coffeescript-compiler-for-windows/annotate/135099abce86/README.txt">annotate</a></li>
        
        <li><a href="/Mystica/coffeescript-compiler-for-windows/raw/135099abce86/README.txt">raw</a></li>
        <li>
          <form action="/Mystica/coffeescript-compiler-for-windows/diff/README.txt" class="source-view-form">
          
            <input type="hidden" name="diff2" value="905611f90c65" />
            <select name="diff1">
            
              
                <option value="905611f90c65">905611f90c65</option>
              
            
            </select>
            <input type="submit" value="diff" />
          
          </form>
        </li>
      </ul>
    </div>
  
    <div>
    <table class="highlighttable"><tr><td class="linenos"><div class="linenodiv"><pre><a href="#cl-1"> 1</a>
<a href="#cl-2"> 2</a>
<a href="#cl-3"> 3</a>
<a href="#cl-4"> 4</a>
<a href="#cl-5"> 5</a>
<a href="#cl-6"> 6</a>
<a href="#cl-7"> 7</a>
<a href="#cl-8"> 8</a>
<a href="#cl-9"> 9</a>
<a href="#cl-10">10</a>
<a href="#cl-11">11</a>
<a href="#cl-12">12</a>
<a href="#cl-13">13</a>
<a href="#cl-14">14</a>
<a href="#cl-15">15</a>
<a href="#cl-16">16</a>
<a href="#cl-17">17</a>
<a href="#cl-18">18</a>
<a href="#cl-19">19</a>
<a href="#cl-20">20</a>
<a href="#cl-21">21</a>
<a href="#cl-22">22</a>
<a href="#cl-23">23</a>
<a href="#cl-24">24</a>
<a href="#cl-25">25</a>
<a href="#cl-26">26</a>
<a href="#cl-27">27</a>
<a href="#cl-28">28</a>
<a href="#cl-29">29</a>
<a href="#cl-30">30</a>
<a href="#cl-31">31</a>
<a href="#cl-32">32</a>
<a href="#cl-33">33</a>
<a href="#cl-34">34</a>
<a href="#cl-35">35</a>
<a href="#cl-36">36</a>
<a href="#cl-37">37</a>
<a href="#cl-38">38</a>
<a href="#cl-39">39</a>
</pre></div></td><td class="code"><div class="highlight"><pre><a name="cl-1"></a> * * * * * * * * * * * * * * * * * *
<a name="cl-2"></a> * CoffeeScript Compiler v1.1.0    *
<a name="cl-3"></a> * http://coffeescript.org         *
<a name="cl-4"></a> *                                 *
<a name="cl-5"></a> * Copyright 2011, Jeremy Ashkenas *
<a name="cl-6"></a> * Released under the MIT License  *
<a name="cl-7"></a> * * * * * * * * * * * * * * * * * *
<a name="cl-8"></a> *                .bat for Windows *
<a name="cl-9"></a> *                            v0.1 *
<a name="cl-10"></a> *                 Tohru Nagashima *
<a name="cl-11"></a> * * * * * * * * * * * * * * * * * *
<a name="cl-12"></a>
<a name="cl-13"></a>This is All-in-one compiler for CoffeeScript on Windows.
<a name="cl-14"></a>necessary file is &quot;cfsc.bat&quot; only!
<a name="cl-15"></a>
<a name="cl-16"></a>** Features **
<a name="cl-17"></a>
<a name="cl-18"></a>1. Compilation
<a name="cl-19"></a>2. Continual Compilation
<a name="cl-20"></a>
<a name="cl-21"></a>
<a name="cl-22"></a>** Usage **
<a name="cl-23"></a>
<a name="cl-24"></a>&lt;compile command&gt;
<a name="cl-25"></a>$ cfsc
<a name="cl-26"></a>
<a name="cl-27"></a>You can compile all CoffeeScript files in the folder &quot;./coffee&quot;, simply!
<a name="cl-28"></a>and the compiler outputs JavaScript files into the folder &quot;./js&quot;.
<a name="cl-29"></a>
<a name="cl-30"></a>&lt;continual compile command&gt;
<a name="cl-31"></a>$ cfsc -cc
<a name="cl-32"></a>
<a name="cl-33"></a>executes with the option &quot;-cc&quot;.
<a name="cl-34"></a>and the compiler observe all CoffeeScript files in the folder &quot;./coffee&quot;.
<a name="cl-35"></a>and compiles these automatically when modified.
<a name="cl-36"></a>
<a name="cl-37"></a>please press Ctrl+C to terminate observing.
<a name="cl-38"></a>
<a name="cl-39"></a>thanks, enjoy!
</pre></div>
</td></tr></table>
    </div>
  
  </div>
  


  <div id="mask"><div></div></div>

  </div>

      </div>
    </div>

  </div>

  <div id="footer">
    <ul id="footer-nav">
      <li>Copyright © 2012 <a href="http://atlassian.com">Atlassian</a></li>
      <li><a href="http://www.atlassian.com/hosted/terms.jsp">Terms of Service</a></li>
      <li><a href="http://www.atlassian.com/about/privacy.jsp">Privacy</a></li>
      <li><a href="//bitbucket.org/site/master/issues/new">Report a Bug to Bitbucket</a></li>
      <li><a href="http://confluence.atlassian.com/x/IYBGDQ">API</a></li>
      <li><a href="http://status.bitbucket.org/">Server Status</a></li>
    </ul>
    <ul id="social-nav">
      <li class="blog"><a href="http://blog.bitbucket.org">Bitbucket Blog</a></li>
      <li class="twitter"><a href="http://www.twitter.com/bitbucket">Twitter</a></li>
    </ul>
    <h5>We run</h5>
    <ul id="technologies">
      <li><a href="http://www.djangoproject.com/">Django 1.3.1</a></li>
      <li><a href="//bitbucket.org/jespern/django-piston/">Piston 0.3dev</a></li>
      <li><a href="http://git-scm.com/">Git 1.7.6</a></li>
      <li><a href="http://www.selenic.com/mercurial/">Hg 1.9.1</a></li>
      <li><a href="http://www.python.org">Python 2.7.2</a></li>
      <li>aa5fb7834caa | bitbucket15</li>
    </ul>
  </div>

  <script src="https://dwz7u9t8u8usb.cloudfront.net/m/2484565b655c/js/lib/global.js"></script>






  <script>
    BB.gaqPush(['_trackPageview']);
  
    /* User specified tracking. */
    BB.gaqPush(
        ['repo._setAccount', 'UA-12936571-3'],
        ['repo._trackPageview']
    );
  
    BB.gaqPush(['atl._trackPageview']);

    

    

    (function () {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
    }());
  </script>

</body>
</html>
