<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="UTF-8"/> 
	<xsl:template match="/" >
		

<html>
<body>
  <h2>Twitter</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Dialog</th>
      <th>Emotion</th>
    </tr>
    <xsl:for-each select="statuses/status">
    <tr>
      <td><xsl:value-of select="text"/></td>
      <xsl:choose>
       
	     <!-- complex emotions -->
	   
	   
		 <xsl:when test="text[contains(.,'happy')and contains(.,'sad')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
		 <xsl:when test="text[contains(.,'happy')and contains(.,'groomy')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
		 <xsl:when test="text[contains(.,'stress')and contains(.,'sad')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
		 <xsl:when test="text[contains(.,'stress')and contains(.,'groomy')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
		 <xsl:when test="text[contains(.,'happy')and contains(.,'sad')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
		 <xsl:when test="text[contains(.,'happy')and contains(.,'sad')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
		 <xsl:when test="text[contains(.,'fear')and contains(.,'sad')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
		 <xsl:when test="text[contains(.,'happy')and contains(.,'hot')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
		 <xsl:when test="text[contains(.,'shock')and contains(.,'sad')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
		 <xsl:when test="text[contains(.,'regretful')and contains(.,'sad')]"> 
		<td bgcolor="662200">
	<xsl:value-of select="geo"/>delicate
	</td>
		 </xsl:when>   
	   
	   
	   
	   <!-- angry -->
	   
	   
	  <xsl:when test="text[contains(.,'annoyance')]" >      	
         <td bgcolor="#32cd32"> 
		    <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'stress')]" >      	
         <td bgcolor="#32cd32">  
		    <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>

	    <xsl:when test="text[contains(.,'impatience')]">      	
         <td bgcolor="#32cd32">  
		    <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
		   <xsl:when test="text[contains(.,'aberration')]">      	
         <td bgcolor="#32cd32">  
		    <xsl:value-of select="geo"/>anger
         </td>
		 
      </xsl:when>
	     <xsl:when test="text[contains(.,'hot anger')]">      	
         <td bgcolor="#32cd32">  
		    <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'anger')]">      	
         <td bgcolor="#32cd32">  
		    <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	  	   <xsl:when test="text[contains(.,'cold anger')]">      	
         <td bgcolor="#32cd32">  
		    <xsl:value-of select="geo"/>super anger
         </td>
      </xsl:when>
	  
	   <xsl:when test="text[contains(.,'nervousness')]">      	
         <td bgcolor="#32cd32">  
		    <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	  
         	<xsl:when test="text[contains(.,'pride')]">      	
         <td bgcolor="#32cd32">
         	   <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
         	<xsl:when test="text[contains(.,'resentment')]">      	
         <td bgcolor="#32cd32">
         	   <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	  	<xsl:when test="text[contains(.,'jealousy')]">      	
         <td bgcolor="#32cd32">
         	   <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	   	<xsl:when test="text[contains(.,'determination')]">      	
         <td bgcolor="#32cd32">
         	   <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	   	<xsl:when test="text[contains(.,'greed')]">      	
         <td bgcolor="#32cd32">
         	   <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'insult')]">
         <td bgcolor="#32cd32">
         	   <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'affirmative')]">  	      	
		<td bgcolor="#32cd32">
			   <xsl:value-of select="geo"/>anger
			   
         </td>
      </xsl:when>
		    <xsl:when test="text[contains(.,'drastic')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'decisive')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'determined')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	        <xsl:when test="text[contains(.,'energetic')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'enthusiastic')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'excited')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>	 
	    <xsl:when test="text[contains(.,'offensive')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'offended')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'obstinate')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'peaceful')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'passionate')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'persuasive')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'resentful')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'subjective')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'upset')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'friction')]"> 
			  <td bgcolor="#32cd32">   	
		         <xsl:value-of select="geo"/>anger
         </td>
      </xsl:when>
	  
	  
	  
	  
	    <!-- fear -->
	  
	  
	  
	  
	  
	   <xsl:when test="text[contains(.,'panic')]">      	
         <td bgcolor="#008080">  
		    <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'fear')]">      	
         <td bgcolor="#008080">  
		    <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'anxiety')]">      	
         <td bgcolor="#008080">  
		    <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  	<xsl:when test="text[contains(.,'calm')]">      	
         <td bgcolor="#008080">
         	   <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'smother')]">      	
         <td bgcolor="#008080">
         	   <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  
         	<xsl:when test="text[contains(.,'cruelty')]">      	
         <td bgcolor="#008080">
         	   <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   
		      <xsl:when test="text[contains(.,'frustration')]">
         <td bgcolor="#008080">   
		    <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>        
	  	      <xsl:when test="text[contains(.,'misery ')]">  	 
         <td bgcolor="#008080">
         	   <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>	
	   <xsl:when test="text[contains(.,'tension')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'anguished ')]">  	      	
		<td bgcolor="#008080">
			   <xsl:value-of select="geo"/>fear
			   
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'apologetic ')]">  	      	
		<td bgcolor="#008080">
			   <xsl:value-of select="geo"/>fear
			   
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'appalling')]">  	      	
		<td bgcolor="#008080">
			   <xsl:value-of select="geo"/>fear
			   
         </td>
		  </xsl:when>
         <xsl:when test="text[contains(.,'anxious')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'awful')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'concerned')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'confused')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'complicated')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'dejected')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'discouraged')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	      <xsl:when test="text[contains(.,'tension')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  
	    <xsl:when test="text[contains(.,'fearful')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  
	    <xsl:when test="text[contains(.,'frightening')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'generous')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'grave')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'horrified')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'horrible')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'mysterious')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'miserable')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'neutral')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	
	    <xsl:when test="text[contains(.,'objective')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'panic')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'painful')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'passive')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'pessimistic')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'perplexed')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'patient')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'pressing')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'quiet')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'remote')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'risky')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'rational')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'sacred')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'serious')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'shocking')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'static')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'scared')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'tense')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  
	    <xsl:when test="text[contains(.,'timid')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  
	    <xsl:when test="text[contains(.,'thoughtful')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'tragic')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	   
	   
	    <xsl:when test="text[contains(.,'tranquil')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'urgent')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'uneasy')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'violent')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'wicked')]"> 
			  <td bgcolor="#008080">   	
		         <xsl:value-of select="geo"/>fear
         </td>
       </xsl:when>
	   
	   
	   
	   
	     <!-- sadness -->
		  
		  
		   <xsl:when test="text[contains(.,'sadness')]">      	
         <td bgcolor="#ffc0cb">  
		    <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
	 	<xsl:when test="text[contains(.,'despair')]">      	
         <td bgcolor="#ffc0cb">
         	   <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'gloomy')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
	  	  <xsl:when test="text[contains(.,'lamentable')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
   <xsl:when test="text[contains(.,'lonely')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'melancholy')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'monotonous')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
          <xsl:when test="text[contains(.,'sorrowful')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
          <xsl:when test="text[contains(.,'sympathetic')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'sentimental')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
           <xsl:when test="text[contains(.,'worried')]" > 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
	 
           <xsl:when test="text[contains(.,'poor')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'sad')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
      </xsl:when>
            <xsl:when test="text[contains(.,'groomy')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
         </xsl:when>
		 <xsl:when test="text[contains(.,'tears')]"> 
			  <td bgcolor="#ffc0cb">   	
		         <xsl:value-of select="geo"/>sadness
         </td>
         </xsl:when>
	  
	  
	  	   <!-- happiness -->
	  
	  
	     <xsl:when test="text[contains(.,'satisfaction')]">      	
         <td bgcolor="#ff69b4">  
		  <xsl:value-of select="geo"/>happiness
		    </td>
      </xsl:when>
		    <xsl:when test="text[contains(.,'effervescent')]">      	
         <td bgcolor="#ff69b4">  
		    <xsl:value-of select="geo"/>super happiness
         </td>
      </xsl:when>
		   <xsl:when test="text[contains(.,'happiness')]">      	
         <td bgcolor="#ff69b4">  
		    <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
		  
		    <xsl:when test="text[contains(.,'approval')]">      	
         <td bgcolor="#ff69b4"> 
		    <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	 <xsl:when test="text[contains(.,'embarrassment')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>super happiness
         </td>
      </xsl:when>
         	<xsl:when test="text[contains(.,'disagreeableness')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>super happiness
         </td>
      </xsl:when>
		  	<xsl:when test="text[contains(.,'relief')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
         	<xsl:when test="text[contains(.,'confidence')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
         	<xsl:when test="text[contains(.,'contentment')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
         	<xsl:when test="text[contains(.,'affection')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
         	<xsl:when test="text[contains(.,'sympathy')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
         	<xsl:when test="text[contains(.,'relaxation')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   	<xsl:when test="text[contains(.,'friendliness')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'assured')]">  	      	
		<td bgcolor="#ff69b4">
			   <xsl:value-of select="geo"/>happiness
			   
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'agreeable')]">  	      	
		<td bgcolor="#ff69b4">
			   <xsl:value-of select="geo"/>happiness
		 </td>
      </xsl:when>
	  	<xsl:when test="text[contains(.,'serenity')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  	<xsl:when test="text[contains(.,'hopeful')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'candid')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'charming')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'cheerful')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  	<xsl:when test="text[contains(.,'love')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>super happiness
         </td>
      </xsl:when>
	  	<xsl:when test="text[contains(.,'trust')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   	<xsl:when test="text[contains(.,'co-operativeness')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
		  	<xsl:when test="text[contains(.,'unco-operativeness')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>super happiness
         </td>
      </xsl:when>
	  	<xsl:when test="text[contains(.,'delight')]">      	
         <td bgcolor="#ff69b4">
         	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
		   <xsl:when test="text[contains(.,'empathy')]">
        <td bgcolor="#ff69b4">
        	   <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
		   <xsl:when test="text[contains(.,'active')]">  	      	
		<td bgcolor="#ff69b4">
			   <xsl:value-of select="geo"/>happiness
			   
         </td>
      </xsl:when>
		  <xsl:when test="text[contains(.,'politeness')]">
         <td bgcolor="#ff69b4">    
		    <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>	
		   <xsl:when test="text[contains(.,'amiable')]">  	      	
		<td bgcolor="#ff69b4">
			   <xsl:value-of select="geo"/>happiness
			   
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'amicable')]">  	      	
		<td bgcolor="#ff69b4">
			   <xsl:value-of select="geo"/>happiness
			   
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'affectionate')]">  	      	
		<td bgcolor="#ff69b4">
			   <xsl:value-of select="geo"/>happiness
			   
         </td>
      </xsl:when>
		   <xsl:when test="text[contains(.,'contented')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'confident')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
		    <xsl:when test="text[contains(.,'aggressive')]">  	      	
		<td bgcolor="#ff69b4">
			   <xsl:value-of select="geo"/>happiness
			   
         </td>
      </xsl:when>
		    <xsl:when test="text[contains(.,'emotional')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
		     <xsl:when test="text[contains(.,'disinterested')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'appreciative')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'confessional')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'delighted')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'dynamic')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'earnest')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'easygoing')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'envious')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'frank')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	
	    <xsl:when test="text[contains(.,'funny')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'friendly')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'gentle')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'emotional')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'fortunate')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'harmonious')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'hopeful')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'honest')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'impartial')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'impatient')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'independent')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'joyous')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'laborous')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
		   <xsl:when test="text[contains(.,'leisurely')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  
	    <xsl:when test="text[contains(.,'lively')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'logical')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'lucky')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'moving')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'optimistic')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'pleased')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	 <xsl:when test="text[contains(.,'proud')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'positive')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'reliable')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'respectful')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'romantic')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'reasonable')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'relaxed')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'relieved')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'scornful')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'sociable')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'touching')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'trustful')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'wise')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  
	  <xsl:when test="text[contains(.,'happy')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'assured')]"> 
			  <td bgcolor="#ff69b4">   	
		         <xsl:value-of select="geo"/>happiness
         </td>
      </xsl:when>
	  
	  
	  
	  
	   <!-- disgust -->
	  
	  
	  
	     <xsl:when test="text[contains(.,'boredom')]">      	
         <td bgcolor="#ffd700"> 
		    <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when> 
	   <xsl:when test="text[contains(.,'disapproval')]">      	
         <td bgcolor="#ffd700">  
		    <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'cold')]">      	
         <td bgcolor="#ffd700">  
		    <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'indifference')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
		  </xsl:when>
		 <xsl:when test="text[contains(.,'neutrality')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'hurt')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	 	<xsl:when test="text[contains(.,'disgust')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
		<xsl:when test="text[contains(.,'weariness')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
         
         	<xsl:when test="text[contains(.,'mockery')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  	<xsl:when test="text[contains(.,'guilt')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   	<xsl:when test="text[contains(.,'coldness')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   	   	<xsl:when test="text[contains(.,'Asphyxiated')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    	<xsl:when test="text[contains(.,'hate')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>super disgust
         </td>
      </xsl:when>
         	<xsl:when test="text[contains(.,'irony')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
         
         	<xsl:when test="text[contains(.,'arrogance')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
      	<xsl:when test="text[contains(.,'cynicism')]">      	
         <td bgcolor="#ffd700">
         	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
            <xsl:when test="text[contains(.,'despair')]">      	
         <td bgcolor="#ffd700">   
		    <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>   
      <xsl:when test="text[contains(.,'discouragement')]">
        <td bgcolor="#ffd700">
        	   <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  	  <xsl:when test="text[contains(.,'schadenfreude')]">  	      	
		<td bgcolor="#ffd700">
			   <xsl:value-of select="geo"/>disgust
		 </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'annoying')]">  	      	
		<td bgcolor="#ffd700">
			   <xsl:value-of select="geo"/>disgust
			   
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'arrogant')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   
	    <xsl:when test="text[contains(.,'avaricious')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'bored')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   
	    <xsl:when test="text[contains(.,'contemptuous')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'cruel')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'cowardly')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'chronic')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'critical')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   
	    <xsl:when test="text[contains(.,'cunning')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'cynical')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'dangerous')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'defensive')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'dependent')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
        </xsl:when>
	    <xsl:when test="text[contains(.,'dissatisfied')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'dull')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>  
	      <xsl:when test="text[contains(.,'egoistic')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  
	    <xsl:when test="text[contains(.,'eccentric')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'exaggerative')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>

	    <xsl:when test="text[contains(.,'explanatory')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'greedy')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'hateful')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'hostile')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'idle')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'indecisive')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	     <xsl:when test="text[contains(.,'impatient')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	 
		    <xsl:when test="text[contains(.,'impolite')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'indifferent')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	
	    <xsl:when test="text[contains(.,'irritated')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'lazy')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'negligent')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'negative')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'nervous')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	
	    <xsl:when test="text[contains(.,'noisy')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'prejudiced')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'partial')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'paradoxical')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	
	   
	    <xsl:when test="text[contains(.,'practical')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    
	    <xsl:when test="text[contains(.,'reckless')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'reluctant')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  
	   <xsl:when test="text[contains(.,'rude')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  
	    <xsl:when test="text[contains(.,'ridiculous')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   
	    <xsl:when test="text[contains(.,'regretful')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	      <xsl:when test="text[contains(.,'skeptical')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	       <xsl:when test="text[contains(.,'suspicious')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	       <xsl:when test="text[contains(.,'sarcastic')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    
	    <xsl:when test="text[contains(.,'satirical')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    
	    <xsl:when test="text[contains(.,'stern')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'stupid')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	 
	    <xsl:when test="text[contains(.,'silly')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  
	    <xsl:when test="text[contains(.,'selfish')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'tiresome')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'murder')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'shit')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'depress')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'Damned')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  
	   <xsl:when test="text[contains(.,'damned')]"> 
			  <td bgcolor="#ffd700">   	
		         <xsl:value-of select="geo"/>disgust
         </td>
      </xsl:when>
	  
	  
	  
	  
	  
	   
	   
	   
	   
	   
	   
	   
	     <!-- surprise -->
	   
	  
		   <xsl:when test="text[contains(.,'hot')]">      	
         <td bgcolor="#ff0000">  
		    <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
		<xsl:when test="text[contains(.,'surprise')]">      	
         <td bgcolor="#ff0000">  
		    <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
		   <xsl:when test="text[contains(.,'shock')]">      	
         <td bgcolor="#ff0000">  
		    <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	        	<xsl:when test="text[contains(.,'admiration')]">      	
         <td bgcolor="#ff0000">
         	   <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
         	  <xsl:when test="text[contains(.,'powerlessness')]">  	      	
		<td bgcolor="#ff0000">
			   <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
		   <xsl:when test="text[contains(.,'admiring')]">  	      	
		<td bgcolor="#ff0000">
			   <xsl:value-of select="geo"/>surprise
			   
         </td>
      </xsl:when>
		 <xsl:when test="text[contains(.,'alarmed')]">  	      	
		<td bgcolor="#ff0000">
			   <xsl:value-of select="geo"/>surprise
			   
         </td>
      </xsl:when>
		 <xsl:when test="text[contains(.,'brave')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'creative')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
		   <xsl:when test="text[contains(.,'descriptive')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'dismayed')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'elegant')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'exotic')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	   <xsl:when test="text[contains(.,'encouraged')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'fantastic')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	
	    <xsl:when test="text[contains(.,'fascinating')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'incredible')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'ideal')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'ironic')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	
	    <xsl:when test="text[contains(.,'impressive')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	 <xsl:when test="text[contains(.,'picturesque')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'prophetic')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'resolute')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'shy')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	  <xsl:when test="text[contains(.,'striking')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	    <xsl:when test="text[contains(.,'scientific')]"> 
			  <td bgcolor="#ff0000">   	
		         <xsl:value-of select="geo"/>surprise
         </td>
      </xsl:when>
	  
	  
	  

		
	  
	  
	  
	  
	     
           	      
      <xsl:otherwise>
         <td><xsl:value-of select="geo"/>So-so~</td>
      </xsl:otherwise>
      </xsl:choose>
	  </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>

</xsl:stylesheet>

