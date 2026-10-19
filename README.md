
<div align="center">
  <img width="470" height="174" alt="GDLogger Logo" src="https://github.com/user-attachments/assets/0638adb1-2c08-4089-8b08-af956794fda7" />

  <br />

  <a href="https://godotengine.org/download/windows/">
    <img alt="Not affiliated with the Godot Engine/Foundation" src="https://img.shields.io/badge/Not%20affiliated%20with%20the-Godot%20Engine%2FFoundation-478CBF?style=flat&logo=godotengine&logoColor=white" />
  </a>
  
  <p>    </p>
  </a>
  
  <img alt="Asset Library coming soon" src="https://img.shields.io/badge/Asset%20Library-coming%20soon-478CBF?style=flat&logo=godotengine&logoColor=white" />
  
  <a href="https://github.com/Burloe/GDLogger/raw/refs/heads/downloads/GDLogger.zip">
    <img alt="Download GDLogger" src="https://img.shields.io/badge/Download-GDLogger-brightgreen?style=flat&logo=github&logoColor=white" />
  </a>

</div><br>
<p><strong>GDLogger</strong> is a simple and flexible logging plugin for <em>Godot 4.7+</em>, which captures and stores game events (and data) into external <code>.log</code> files accessible by both developers and players to aid in development and maintaining of your projects. With minimal setup, GDLogger can be quickly integrated into any project to run in the background at all times or log specific events during testing. With plenty of customization options available, log entries can be tailored to fit your project's needs and make debugging and investigating issues easier.</p>

<p>Defining log entries is as easy as writing a `print()` statement, only requiring a simple string, which can include any data (that can be converted into a string) and an integer to determine which category/file to log the entry in. Formatting strings to include data can be done in multiple ways and is no different than normal. Here are 3 examples that result in the same log entry:</p>


https://github.com/user-attachments/assets/d4d3f91f-bb29-4b53-a3d9-73050c534335


<pre><code>
  func _on_take_damage(amount: float, src: Characterbody2D) -> void:
    current_hp -= amount
    Log.msg(str("Took " + amount + " damage from <" + src.get_name() + "> - current health: " + current_health + " / " + max_health), "player")
# Resulting entry: [19:17:27] Took 26.0 damage from <Hob Goblin> - current health: 74 / 100
</code></pre>

<p><em>GDLogger allows you to have categories so you can sort your entries inte separate .log files. Using <code>Log.msg(log_msg: String, category: String)</code>) you define a category name after the string. You are able to mark one of your categories as the default category, which designates it as the category .</em></p>

<img width="1426" height="394" alt="image" src="https://github.com/user-attachments/assets/976860d6-a957-4ab7-ae1e-d310b7466f4d" />

<h2>integrated Log File Viewer
<p>within the editor, you are able to view the log files in the Log Viewer tab. You can list the different log files of each category, as well as view the contents of each file. 


<h2>Documentation / Wiki</h2>
<p>See the <a href="https://github.com/Burloe/GDLogger/wiki/">Wiki</a> for more information: </p>
<p></p><a href="https://github.com/Burloe/GDLogger/wiki/Installation-&-Setup">Installation &amp; Setup</a></p>
<p><a href="https://github.com/Burloe/GDLogger/wiki/Getting-Started">How to use GDLogger</a> </p>
<p><a href="https://github.com/Burloe/GDLogger/wiki#how-gdlogger-works">How it works</a></p>

<p>If you haven't touched the settings in a while or just need a refresher. The dock panel contains a TL;DR version of the wiki in the Help section with vital information so you never have to leave the editor to lookup a website.</p>

<h2>Latest Patch Notes - 2.0.0:</h2>
<p>See the <a href="https://github.com/Burloe/GDLogger/releases/tag/1.3.1">release page</a> for more info</p>
<h2> Changelog:</h2>
<ul>
  <li>Changes to <code>Log.entry()</code> -> <code>Log.msg(log_entry: String, category_name: String = "", print_entry: bool = false)</code></li>
    <ul>
    <li> Specifying the category by <code>category_index</code> has been replaced with <code>category_name</code> string.</li>
    <li> <code>print_entry</code> allows you to optionally print individual entries.</li>
    </ul>
<li> Default category is a checkbox you can mark a category as. When a <code>category_name</code> isn't passed in when calling <code>Log.entry()</code>. The default category is then used.</li>
<li> #25 Instance ID system implemented to support for multiple instances running simultaneously. </li>
    <ul>
    <li> Use <code>Ctrl + Shift + I</code>code> to display the ID of an instance(you can optionally print the ID to output with the hotkey as well).</li>
    <li> ID Overlay settings allows you to customize the look of the overlay text.</li>
    </ul>
<li> New settings to allow you to customize the format of <code>Log Header`</code> and <code>Entry Format</code>. Allowing you to set custom strings and format date- and timestamps to your preference/region.</li>
<li> Sleeker, cleaner and more uniform look across the board. </li>
<li> Hotkey resources has been consolidates into one and can be opened in the Inspector from the Settings dock.</li>
<li> In-dock help section has been improved and rewritten to be more concise and neutral.</li>
<li> Removed superfluous features:</li>
    <ul>
    <li> Signals <code>session_timer_started/ended</code> - The <code>session_started/ended</code> signals already serves the same purpose. </li>
    <li> 'Save Copy' feature.</li>
    <li> Settings.</li>
    </ul>
