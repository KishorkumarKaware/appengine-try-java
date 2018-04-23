package com.mail;


import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage; 
import javax.mail.internet.MimeMultipart;

public class SendMail
{
	static String from="kishorkaware.vyomlabs@gmail.com";//change accordingly  
	static String password="Vyomlabs@123";//change accordingly  
	public SendMail(){
		
	}
	
	public String sendMail(String name,String userEmail_id,String subject,String msg)
	{
		
		//request.setAttribute("imageUrlList", imageUrlList);
		String email_id = "kishorkumarkaware20@gmail.com";
		System.out.println("Sending mail to "+email_id);
		Properties props = new Properties();    
		props.put("mail.smtp.host", "smtp.gmail.com");    
		props.put("mail.smtp.socketFactory.port", "465");    
		props.put("mail.smtp.socketFactory.class",    
				"javax.net.ssl.SSLSocketFactory");    
		props.put("mail.smtp.auth", "true");    
		props.put("mail.smtp.port", "587");    
		Session session = Session.getDefaultInstance(props,new javax.mail.Authenticator()
		{  protected PasswordAuthentication getPasswordAuthentication()
		{ return new PasswordAuthentication(from,password); } } );


		try{  
			MimeMessage message = new MimeMessage(session);  
			message.setFrom(new InternetAddress(from));  
			message.addRecipient(Message.RecipientType.TO,new InternetAddress(email_id));  
			message.setSubject(subject); 
			BodyPart messageBodyPart1 = new MimeBodyPart();
			System.out.println(msg);
			messageBodyPart1.setText(msg);  
			Multipart multipart = new MimeMultipart();  
			multipart.addBodyPart(messageBodyPart1);  
			messageBodyPart1 = new MimeBodyPart();
			message.setContent(multipart );    
			Transport.send(message);
			sendMailToUser(name, userEmail_id, subject, msg);
			System.out.println("The Mail is successfully sent to the admin");
			return "The Mail is successfully sent to the admin.";

		}catch (MessagingException ex) {ex.printStackTrace();}  

		return "Sorry! Something is going wrong, please try again.";
	}
	public static String sendMailToUser(String name,String userEmail_id,String subject,String msg)
	{
		String email_id = userEmail_id;
		System.out.println("Sending mail to "+email_id);
		Properties props = new Properties();    
		props.put("mail.smtp.host", "smtp.gmail.com");    
		props.put("mail.smtp.socketFactory.port", "465");    
		props.put("mail.smtp.socketFactory.class",    
				"javax.net.ssl.SSLSocketFactory");    
		props.put("mail.smtp.auth", "true");    
		props.put("mail.smtp.port", "587");    
		Session session = Session.getDefaultInstance(props,new javax.mail.Authenticator()
		{  protected PasswordAuthentication getPasswordAuthentication()
		{ return new PasswordAuthentication(from,password); } } );
       
		String mgs = "Dear "+name
				     +",\nThank for contacting us!"
				     +"\nWe will contact you soon.";

		try{  
			MimeMessage message = new MimeMessage(session);  
			message.setFrom(new InternetAddress(from));  
			message.addRecipient(Message.RecipientType.TO,new InternetAddress(email_id));  
			message.addRecipient(Message.RecipientType.CC,new InternetAddress(userEmail_id));  
			message.setSubject(subject); 
			BodyPart messageBodyPart1 = new MimeBodyPart();
			System.out.println(mgs);
			messageBodyPart1.setText(mgs);  
			Multipart multipart = new MimeMultipart();  
			multipart.addBodyPart(messageBodyPart1);  
			messageBodyPart1 = new MimeBodyPart();
			message.setContent(multipart );    
			Transport.send(message);
			System.out.println("The Mail is successfully sent to "+name);
			return "The Mail is successfully sent to the admin.";

		}catch (MessagingException ex) {ex.printStackTrace();}  

		return "Sorry! Something is going wrong, please try again.";
	}

	public static void main(String[] args) {
		new SendMail().sendMail( "Kishorkumar Kaware","kishorkumar.kaware@automationedge.com","Test Mail Subject","massage");
	}
}
