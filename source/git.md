
<h1> Git </h1>

<a name="create"></a>
<h2>Before each exercise</h2>
<p>Decide who in your group will write code first. They will be the owner of this repository (but don&#39;t worry, you&#39;ll both have a copy of it at the end!).</p>
<p>We&#39;re going to set ourselves up to use git properly for the rest of this guide.</p>
<p>On GitHub <a href="https://help.github.com/articles/creating-a-new-repository">create a new repository</a> (git project names are usually writen like <code>your-project-name</code>).</p>
<p>On your computer open terminal or command line and move to your programming directory. (This is a great time to create one if you don&#39;t have it already! It helps keep all your programming bits and pieces together.) Here are some <a href="http://terokarvinen.com/command_line.html">handy hints</a> for working in the terminal or command line.</p>
<p>Once you&#39;ve navigated to your directory run the command <code>git clone git@github.com:[your-github-username-here]/[your-project-name-here].git</code></p>
<p>Move into your new <code>your-project-name</code> directory.</p>

<a name="share"></a>
<h2>Give the repository to someone else</h2>
<p>The repo owner needs to give the other group members <a href="https://help.github.com/articles/how-do-i-add-a-collaborator">access to the repo</a>.</p>
<ol> Each of the other group members needs to:
  <li>open terminal or command line</li>
  <li>move to your programming directory</li>
  <li>clone the repo</li>
  <li>move into your new <code>your-project-name</code> directory</li>
</ol>
<p>Now everyone can continue working on the exercise on their computer.</p>

<a name="commit"></a>
<h2>Commit during each exercise</h2>
<p>Once you feel like you've made progress on your code, you should commit your changes locally, then push them up to the repo on GitHub. In the terminal, from within your <code>your-project-name</code> directory, run the follow commands:</p>
<ol>
<li>Tell git about your changes: <code>git add -A</code></li>
<li>Commit those changes: <code>git commit -m &quot;write your message here&quot;</code></li>
<li>Push your code up to GitHub: <code>git push origin master</code></li>
</ol>
<p>Now you can see your code at <a href="#">https://github.com/[your-github-username-here]/[your-project-name-here]</a>.</p>

<a name="push"></a>
<h2>Push up updates</h2>
<p>After anyone has committed changes to their local repo you can <code>push</code> those changes up to GitHub. In the terminal, from within your <code>your-project-name</code> directory, run <code>$ git push origin master</code>. If you go to <a href="#">https://github.com/[your-github-username-here]/[your-project-name-here]</a> you should see your updated code.</p>

<a name="pull"></a>
<h2>Pull down updates</h2>
<p>After anyone has pushed to your shared repo you can <code>pull</code> down the changes to your computer. In the terminal, from within your <code>your-project-name</code> directory, run <code>$ git pull origin master</code> - you should now have the latest code on your computer</p>

<a name="fork"></a>
<h2>Fork the repository</h2>
<p> When you're all done with an exercise you can fork the repository. In usual programming groups you probably wouldn't do this. However since you likely want permanant access, even if your group members delete their repos, you should probably make a fork so you own a copy of the code yourself. Just do step 1 from <a href="https://help.github.com/articles/fork-a-repo">these directions</a>, and you&#39;ll have the repo listed under your name too.</p>