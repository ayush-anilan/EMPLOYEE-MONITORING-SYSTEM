<?php
session_start();
require_once('class.phpmailer.php');
require("class.smtp.php");

?>

    <?php




$to="egopi2007@gmail.com";

$message="You have been shortlisted for the interview you have applied.<br> For more details contact Administrator";


$subject='Interview Call Letter';

$mail = new PHPMailer(true); // create a new object
$mail->IsSMTP(); // enable SMTP
$mail->SMTPAuth = true; // authentication enabled

$mail->Host = "smtp.gmail.com";
$mail->Port = 587; // or 587
 $mail->SMTPSecure = 'tls';
//$mail->IsHTML(true);
$mail->Username = "nefsal003@gmail.com";
$mail->Password = "testingpass3";
$mail->SetFrom("nefsal003@gmail.com");
$mail->Subject = $subject;
$mail->Body = $message;
$mail->AddAddress($to);

 if(!$mail->Send())
    {
    echo "Mailer Error: " . $mail->ErrorInfo;
    }
    else
    {
    echo "<h3>Call Letter Sent To</h3>".$to;
    }
	
?>
       
</body>
</html>
