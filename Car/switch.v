module switch(EN_BIZHANG1,EN_YAOKONG,EN_CYCLE,EN_XUNJI,EN_BIZHANG,ENA,ENB,ENC,EN_D,ENE,DIG,SEG);

input  EN_YAOKONG,EN_CYCLE,EN_XUNJI,EN_BIZHANG,EN_BIZHANG1;
output ENA,ENB,ENC,EN_D,ENE,DIG;
output [7:0] SEG; 
reg [7:0] SEG;
reg ENA,ENB,ENC,EN_D,ENE;
  
assign DIG=0;
always @(EN_YAOKONG or EN_CYCLE or EN_XUNJI or EN_BIZHANG or EN_BIZHANG1)  
  begin
  /**/if (!EN_BIZHANG1) 
  /**/begin
  /**/      if (!EN_YAOKONG) 
  /**/	    begin 
  /**/            if(!EN_CYCLE) 
  /**/				/**/begin
  /**/            /**/       if(!EN_XUNJI) 
  /**/				/**/           begin
  /**/            /**/           /**/     if(!EN_BIZHANG) 
  /**/				/**/		   	/**/						   begin 
  /**/				/**/				/**/							ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/				/**/						   end
  /**/            /**/           /**/     else 
  /**/				/**/		   	/**/						   begin  
  /**/				/**/				/**/							ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/				/**/						   end
  /**/            /**/           end
  /**/            /**/        else 
  /**/				/**/		       begin
  /**/				/**/		       /**/     if(!EN_BIZHANG) 
  /**/				/**/			 	 /**/						   begin 
  /**/				/**/				 /**/							ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			 	 /**/						   end
  /**/				/**/		       /**/     else 
  /**/				/**/		    	 /**/						   begin  
  /**/				/**/			    /**/							ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/			 	 /**/						   end   
  /**/            /**/             end
  /**/            /**/end
  /**/            else  
  /**/				/**/begin 
  /**/            /**/        if(!EN_XUNJI) 
  /**/				/**/		       begin
  /**/            /**/            /**/    if(!EN_BIZHANG) 
  /**/				/**/		    	 /**/						   begin 
  /**/				/**/				 /**/							ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			 	 /**/						   end
  /**/				/**/		       /**/     else 
  /**/				/**/		    	 /**/						   begin  
  /**/				/**/			    /**/							ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/			 	 /**/						   end
  /**/            /**/             end
  /**/            /**/        else 
  /**/				/**/	          begin
  /**/            /**/            /**/    if(!EN_BIZHANG) 
  /**/				/**/		    	 /**/						   begin 
  /**/				/**/			    /**/							ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			 	 /**/						   end
  /**/            /**/            /**/     else 
  /**/				/**/		    	 /**/						   begin  
  /**/				/**/			    /**/							ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/			 	 /**/						   end   
  /**/            /**/             end
  /**/				/**/end
  /**/          end
  /**/	else//------------------------------------------------------------a quarter 
  /**/		   begin
  /**/           if(!EN_CYCLE) 
  /**/			   /**/begin
  /**/            /**/       if(!EN_XUNJI) 
  /**/				/**/	         begin
  /**/            /**/           /**/    if(!EN_BIZHANG) 
  /**/				/**/		   	/**/						   begin 
  /**/				/**/			  	/**/						   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/				/**/						   end
  /**/				/**/		      /**/    else 
  /**/				/**/		   	/**/						   begin  
  /**/				/**/			  	/**/						   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/				/**/						   end
  /**/            /**/            end
  /**/            /**/        else 
  /**/				/**/	         begin
  /**/            /**/            /**/    if(!EN_BIZHANG) 
  /**/				/**/		   	/**/						   begin 
  /**/				/**/			  	/**/						   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/				/**/						   end
  /**/				/**/		      /**/    else 
  /**/				/**/		   	/**/						   begin  
  /**/				/**/			  	/**/						   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/				/**/						   end   
  /**/				/**/	         end
  /**/            /**/end
  /**/           else  
  /**/				/**/begin 
  /**/				/**/	     if(!EN_XUNJI) 
  /**/				/**/	         begin
  /**/            /**/           /**/    if(!EN_BIZHANG) 
  /**/				/**/		   	/**/						   begin 
  /**/				/**/			  	/**/						   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/				/**/						   end
  /**/            /**/           /**/    else 
  /**/				/**/		   	/**/						   begin  
  /**/				/**/			  	/**/						   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/				/**/						   end
  /**/            /**/            end
  /**/				/**/	      else 
  /**/				/**/	         begin
  /**/				/**/		      /**/    if(!EN_BIZHANG) 
  /**/				/**/		   	/**/						   begin 
  /**/				/**/			  	/**/						   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/				/**/						   end
  /**/				/**/		      /**/    else 
  /**/				/**/				/**/						   begin  
  /**/				/**/			  	/**/						   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=0;SEG=8'H92; 
  /**/				/**/				/**/						   end   
  /**/				/**/	         end
  /**/				/**/end 
  /**/        end
  /**/end
  /**/else//bizhang1------------------------------------------------------------half 
  /**/begin 
  /**/		  if (!EN_YAOKONG) 
  /**/		    begin 
  /**/				if(!EN_CYCLE) 
  /**/				/**/begin
  /**/            /**/       if(!EN_XUNJI) 
  /**/				/**/	         begin
  /**/            /**/           /**/    if(!EN_BIZHANG) 
  /**/				/**/		    	/**/						   begin 
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			 	/**/						   end
  /**/            /**/           /**/     else 
  /**/				/**/		    	/**/						   begin  
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/			 	/**/						   end
  /**/            /**/            end
  /**/				/**/    	  else 
  /**/				/**/		      begin
  /**/				/**/		      /**/     if(!EN_BIZHANG) 
  /**/				/**/		    	/**/						   begin 
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			 	/**/						   end
  /**/				/**/		      /**/     else 
  /**/				/**/		    	/**/						   begin  
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/			 	/**/						   end   
  /**/            /**/           end
  /**/            /**/end
  /**/            else  
  /**/				/**/begin 
  /**/            /**/       if(!EN_XUNJI) 
  /**/				/**/	         begin
  /**/            /**/           /**/     if(!EN_BIZHANG) 
  /**/				/**/		    	/**/						   begin 
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			 	/**/						   end
  /**/            /**/           /**/     else 
  /**/				/**/		    	/**/						   begin  
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/			 	/**/						   end
  /**/            /**/            end
  /**/            /**/        else 
  /**/				/**/	         begin
  /**/				/**/		      /**/     if(!EN_BIZHANG) 
  /**/				/**/		    	/**/						   begin 
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			 	/**/						   end
  /**/				/**/			   /**/      else 
  /**/				/**/			  	/**/						   begin  
  /**/				/**/			   /**/ 							   ENA<=0;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HF9; 
  /**/				/**/			  	/**/						   end   
  /**/            /**/            end
  /**/            /**/end
  /**/			  end
  /**/      else//--------------------------------------------------------three quarters  
  /**/			 begin
  /**/            if(!EN_CYCLE) 
  /**/				/**/begin
  /**/            /**/       if(!EN_XUNJI) 
  /**/				/**/	         begin
  /**/            /**/           /**/    if(!EN_BIZHANG) 
  /**/				/**/			  	/**/					   begin 
  /**/				/**/			   /**/ 							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			  	/**/						   end
  /**/            /**/           /**/      else 
  /**/				/**/			  	/**/						   begin  
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/			  	/**/						   end
  /**/            /**/            end
  /**/            /**/        else 
  /**/				/**/	         begin
  /**/            /**/           /**/      if(!EN_BIZHANG) 
  /**/				/**/			  	/**/						   begin 
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			  	/**/						   end
  /**/            /**/           /**/      else 
  /**/				/**/			  	/**/						   begin  
  /**/				/**/			   /**/							   ENA<=1;ENB<=0;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HA4; 
  /**/				/**/			  	/**/						   end//   
  /**/            /**/            end
  /**/            /**/end
  /**/            else  
  /**/				/**/begin 
  /**/            /**/     if(!EN_XUNJI) 
  /**/				/**/	         begin
  /**/            /**/           /**/      if(!EN_BIZHANG) 
  /**/				/**/			  	/**/						   begin 
  /**/				/**/			   /**/ 							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0;
  /**/				/**/			  	/**/						   end
  /**/				/**/			   /**/      else 
  /**/				/**/			  	/**/						   begin  
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=0;EN_D<=1;ENE<=1;SEG=8'HB0; 
  /**/				/**/			  	/**/						   end
  /**/            /**/            end
  /**/				/**/	  else 
  /**/				/**/	         begin
  /**/            /**/           /**/      if(!EN_BIZHANG) 
  /**/				/**/			  	/**/						   begin 
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=0;ENE<=1;SEG=8'H99;
  /**/				/**/			  	/**/						   end
  /**/				/**/			   /**/      else 
  /**/				/**/			  	/**/						   begin  
  /**/				/**/			   /**/							   ENA<=1;ENB<=1;ENC<=1;EN_D<=1;ENE<=1;SEG=8'HC0; 
  /**/				/**/			  	/**/						   end   
  /**/            /**/            end
  /**/				/**/end 
  /**/           end
  /**/end
  end
endmodule  
