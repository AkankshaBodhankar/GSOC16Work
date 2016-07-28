<?php
   
   session_start();
   if(!isset($_SESSION['email']))
   {  
      header("location: login.php"); 
   }
   
?>
<!DOCTYPE html>
<html>
<head>
  <title>FirstAide</title>
  <link rel="stylesheet" type="text/css" href="css files/safety-tools.css"/>
 
  <script type="text/javascript" src="javascripts/jquery-1.12.4.min.js"></script>
  <script type="text/javascript" src="javascripts/dragscroll.js"></script>
</head>
<body>
<?php
     include('menu.php');
?>
<center>
<div class="window">
  <div>
    <h1 class="text">Bystander Intervention</h1>
    <hr class="line">
  </div>

  <div class="dragscroll">
  <table class="threeorfour-blocks-content">
    <tr>
      <td class="block">
          Bystander Intervention is a process of safely interrupting a situation in which others may be at risk for becoming the victim of harassment, or sexual or physical violence.
          <br><br>
          In Peace Corps history, other Volunteers often witnessed the events leading up to Volunteer sexual and physical assaults.  There are ways to safely intervene when you see your fellow Trainee or Volunteer in a potentially dangerous situation.  
          <br><br>
          #1 Rule: Your safety is your FIRST priority. Bystander intervention is a tool to be used with Volunteers.  If you see a situation between locals that needs intervention, contact your SSM for guidance on how to proceed.
      </td>
      <td class="block">
        <h4>Verbal with Potential Victim:</h4>
        <ul class="ul-safetytools">
              <li>Diffuse the situation by starting a new conversation</li>
              <li>Say a friend is looking for the individual and leave together to find them</li> 
              <li>Tell the individual there is a previous engagement with others and they need to leave with you</li>
              <li>“I need your advice…” and pull them away from the immediate space</li>
              <li>“Do you need help?”</li>
              <li>“Let’s walk home together”</li>
              <li>“Do you want me to call someone for you?”</li>
              <li>“What can I do to help you?”</li>
              <li>“Do you want me to talk to so-and-so for you?”</li>
        </ul>
      </td>
      <td class="block">
        <h4>Verbal with Potential Offender</h4>
        <ul class="ul-safetytools">
              <li>Introduce yourself- let the predator know the individual isn’t alone</li>
              <li>Engage with the individual directly by starting a completely different conversation; example- sports, directions</li>
              <li>Use humor to diffuse the situation</li>
              <li>“How would you feel if someone did that/said that to your sister/mother?”</li>
              <li>“I don’t like what you just said.”</li> 
        </ul>
      </td>
      <td class="block">
        <h4>Non-Verbal Tactics for both</h4>
          <ul class="ul-safetytools">
              <li>Get in line of vision and catch their eye</li>
              <li>Take a group photo to document what the potential offender looks like</li>
              <li> Ask/Assess situation with a thumbs up/down</li>
              <li> Wave to your friend to indicate you are leaving to get them to come with you</li>
              <li> Text or call the Volunteer</li>
              <li> Use a distraction to get the predator’s attention</li>
              <li> Strike up a conversation with someone nearby to physically get closer</li>
              <li> Walk towards the two, alone or with others, and engage in conversation</li>
              <li> Make a show of picking up the phone to indicate you are alerting others</li>
              <li> Physically pull the individual away</li>
          </ul>
      </td>
    </tr>
  </table>
  </div><!--closing div of dragscroll-->

</div><!--closing div of window-->
</center>
</body>
</html>