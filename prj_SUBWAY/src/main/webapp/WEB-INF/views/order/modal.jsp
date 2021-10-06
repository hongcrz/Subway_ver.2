	<!-- Modal -->
		<div class="modal fade" id = "MyModal" tabindex = "-1" role = "dialog" aria-labelledby = "myModalLabel" aria-hidden = "true">
		   <div class = "modal-dialog">
		      <div class = "modal-content">
		         <div class = "modal-header">
			            <h4 class = "modal-title" id = "myModalLabel">Custom Order Page</h4>
		         </div>
		         
		         <div class = "modal-body">
		         	<form action="/cart/cartlist" method="POST" name="customMenu" id="customMenu">
		         	
		         		<div class="process step1">
				            <div class = "form-group modal-center">
					            <h5 class="step-title">STEP 1. Size</h5>
					            <h6 class="selected-pr">selected item</h6>
							</div>       
				            <div class = "form-group modal-center">
				               <input type="radio" name = "size" id="short" value = "short" checked="checked">
				               <label for="short">Short size(15cm)</label><br/>
				               <input type="radio" name = "size"  id="long" value = "long">
				               <label for="long">Long size(30cm)</label><br/>
				            </div>
		         		</div> <!--.step1 End  -->
			            
			            <div class="process step2">
				            <div class = "form-group modal-center">
					            <h5 class="step-title">STEP 2. Bread</h5>
					            <h6 class="selected-pr">selected item</h6>
							</div>       
							
				            <div class = "form-group">
				               <ul>
								<c:forEach var="bread" items="${brlist }">
					    		 	<li class="bread-li pr-li">
						    			<div class="bread-wrapper">
									   		<div class="menu-img" style="height: 60%;">
									   			<img src="${bread.purl }">
									   		</div>
									   		<div class="menu-txt">
									    		<strong class="tit">${bread.pname }</strong>
									   		</div>
						    			</div>		
					    			</li>
			    				</c:forEach>
			    				</ul>
				            </div>
			            </div><!--.step2 End  -->
			            
			            <div class="process step3">
				            <div class = "form-group modal-center">
					            <h5 class="step-title">STEP 3. Toasting</h5>
					            <h6 class="selected-pr">selected item</h6>
							</div>       
				            <div class = "form-group modal-center">
				               <input type="radio" name = "toasting" id="toasting" value = "toasting">
				               <label for="toasting">Toasting</label><br/>
				               <input type="radio" name = "toasting" id="no_toasting" value = "no-toasting">
				               <label for="no_toasting">No-toasting</label><br/>
				            </div>
		         		</div> <!--.step3 End  -->
			            
			            <div class="process step4">
				            <div class = "form-group modal-center">
					            <h5 class="step-title">STEP 4. Cheese</h5>
					            <h6 class="selected-pr">selected item</h6>
							</div>       
							
				            <div class = "form-group">
				            	<ul>
								<c:forEach var="cheese" items="${chlist }">
					    		 	<li class="cheese-li pr-li">
					    				<div class="cheese-wrapper" style="height: 100%;">
									    	<div class="menu-img" style="height: 60%;">
									    	<c:if test="${cheese.purl eq '/resources/image/ETC_icon/btn_close.png' }">
										    	<div id="btn-close"></div>
									    	</c:if>
									    	<c:if test="${cheese.purl ne '/resources/image/ETC_icon/btn_close.png' }">
										    	<img src="${cheese.purl }">
									    	</c:if>
									    	</div>
									    	
								    		<div class="menu-txt">
									    		<strong class="tit">${cheese.pname }</strong><br/>
									    	<c:if test="${cheese.pprice ne 0 }">
												<span class="cal not-emph">+${cheese.pprice} won</span>
									    	</c:if>
								    		</div>
					    				</div>	<!--.cheese-wrapper End  -->	
					    			</li>
			    				</c:forEach>
			    				
				    				<li>
				    					<br/><br/>
				    					<div class = "form-group modal-center">
						            		<h5>Option Cheese</h5>
										</div>     
				    				</li>
			    				
			    				<c:forEach var="option" items="${choplist }">
			    					<li class="choption-li pr-li">
					    				<div class="cheese-wrapper" style="height: 100%;">
									    	<div class="menu-img" style="height: 60%;">
									    	<c:if test="${option.purl eq '/resources/image/ETC_icon/btn_close.png' }">
										    	<div id="btn-close"></div>
									    	</c:if>
									    	<c:if test="${option.purl ne '/resources/image/ETC_icon/btn_close.png' }">
										    	<img src="${option.purl }">
									    	</c:if>
									    	</div>
									    	
								    		<div class="menu-txt">
									    		<strong class="tit">${option.pname }</strong><br/>
									    	<c:if test="${option.pprice ne 0 }">
												<span class="cal not-emph">+${option.pprice} won</span>
									    	</c:if>
								    		</div>
					    				</div>	<!--.cheese-wrapper End  -->	
					    			</li>
			    				</c:forEach>
			    				</ul>
				            </div>
			            </div> <!--.step4 End  -->
			            
			            <div class="process step5">
				            <div class = "form-group modal-center">
					            <h5 class="step-title">STEP 5. Vegetable</h5>
					            <h6 class="selected-pr">selected item</h6>
							</div>       
							
				            <div class = "form-group">
				            	<ul>
								<c:forEach var="vege" items="${vegelist }">
					    		 	<li class="vege-li pr-li">
					    				<div class="vege-wrapper" style="height: 100%;">
									    	<div class="menu-img" style="height: 60%;">
									    	<c:if test="${vege.purl eq null }">
										    	<div id="btn-close"></div>
									    	</c:if>
									    	<c:if test="${vege.purl ne null }">
										    	<img src="${vege.purl }">
									    	</c:if>
									    	</div>
									    	
								    		<div class="menu-txt">
									    		<strong class="tit">${vege.pname }</strong><br/>
								    		</div>
					    				</div>	<!--.vege-wrapper End  -->	
					    			</li>
			    				</c:forEach>
			    				</ul>
				            </div>
			            </div> <!--.step5 End  -->
			            
			            <div class="process step6">
				            <div class = "form-group modal-center">
					            <h5 class="step-title">STEP 6. Sauce&Seasoning</h5>
					            <h6 class="selected-pr">selected item</h6>
							</div>       
							
				            <div class = "form-group">
				            	<ul>
								<c:forEach var="ss" items="${sslist }">
					    		 	<li class="ss-li pr-li">
					    				<div class="ss-wrapper" style="height: 100%;">
									    	<div class="menu-img" style="height: 60%;">
									    	<c:if test="${ss.purl eq null }">
										    	<div id="btn-close"></div>
									    	</c:if>
									    	<c:if test="${ss.purl ne null }">
										    	<img src="${ss.purl }">
									    	</c:if>
									    	</div>
									    	
								    		<div class="menu-txt">
       								    		<strong class="tit">${ss.pname }</strong><br/>
								    		</div>
					    				</div>	<!--.vege-wrapper End  -->	
					    			</li>
			    				</c:forEach>
			    				</ul>
				            </div>
			            </div> <!--.step6 End  -->
			            
			             <div class="process step7">
				            <div class = "form-group modal-center">
					            <h5 class="step-title">STEP 7. Option - General</h5>
					            <h6 class="selected-pr">selected item</h6>
							</div>       
							
				            <div class = "form-group">
				            	<ul>
								<c:forEach var="option" items="${goplist }">
					    		 	<li class="option-li pr-li">
					    				<div class="option-wrapper" style="height: 100%;">
									    	<div class="menu-img" style="height: 60%;">
									    	<c:if test="${option.purl eq '/resources/image/ETC_icon/btn_close.png' }">
										    	<div id="btn-close"></div>
									    	</c:if>
									    	<c:if test="${option.purl ne '/resources/image/ETC_icon/btn_close.png' }">
										    	<img src="${option.purl }">
									    	</c:if>
									    	</div>
									    	
								    		<div class="menu-txt">
									    		<strong class="tit">${option.pname }</strong><br/>
									    	<c:if test="${option.pprice ne 0 }">
												<span class="cal not-emph">+${option.pprice} won</span>
									    	</c:if>
								    		</div>
					    				</div>	<!--.option-wrapper End  -->	
					    			</li>
			    				</c:forEach>
			    				</ul>
				            </div>
			            </div> <!--.step7 End  -->
			            
						<div class="process step8">
				            <div class = "form-group modal-center">
					            <h5 class="step-title">STEP 8. Option - Meat</h5>
					            <h6 class="selected-pr">selected item</h6>
							</div>       
							
				            <div class = "form-group">
								<div style="overflow: auto; height: 300px;">
					            	<ul>
									<c:forEach var="option" items="${moplist }">
						    		 	<li class="moption-li">
						    				<div class="option-wrapper" style="width: 60%; height: 100%; text-align: center; margin: 0 auto;">
										    	<div class="menu-name" style="box-sizing: border-box; width: 50%; float: left;">
											    	<strong class="tit" style="line-height: 50px;">${option.pname }</strong>
										    	</div>
										    	
									    		<div class="menu-txt" style="box-sizing: border-box; width: 50%; float: left; padding: 0;">
										    	<c:if test="${option.pprice ne 0 }">
													<span class="cal not-emph" style="line-height: 50px;">+${option.pprice} won</span>
										    	</c:if>
									    		</div>
						    				</div>	<!--.option-wrapper End  -->	
						    			</li>
				    				</c:forEach>
				    				</ul>
			    				</div>
				            </div>
			            </div> <!--.step8 End  -->
			            
			             <div class="process step9">
				            <div class = "form-group modal-center">
					            <h5 class="step-title">STEP 9. Set</h5>
					            <h6 class="selected-pr">selected item</h6>
							</div>       
							
				            <div class = "form-group">
								<div class="form-group modal-center">
									<label for="set-type">Set choice</label>
									<select name="set_type" id="set-type">
									<c:forEach var="option" items="${setTypelist }">
										<option value="${option.pno }">${option.pname }</option>
									</c:forEach>
									</select>
								</div>
								
								<div id="set-wrapper" style="overflow: auto; height: 300px;">
									<div id="bev-wrapper">
										<div class = "form-group modal-center">
						            		<h5>Beverage</h5>
										</div>
										
						            	<ul>
										<c:forEach var="option" items="${setBevlist }">
							    		 	<li class="set-li bev-li" style="display: inline-block; width: 100%; height: 50px; text-align: center;">
							    				<div class="option-wrapper" style="width: 100%; height: 100%; text-align: center; margin: 0 auto;">
											    	<div class="menu-name" style="box-sizing: border-box; width: 100%; text-align: center;">
												    	<strong class="tit" style="line-height: 50px;">${option.pname }</strong>
											    	</div>
							    				</div>	<!--.option-wrapper End  -->	
							    			</li>
					    				</c:forEach>
					    				</ul>
				    				</div>
				    				
				    				
				    				<div id="coo-wrapper">
				    				
					    				<br/>
					    				<br/>
					    				<br/>
					    				
				    					<div class = "form-group modal-center">
						            		<h5>Cookies</h5>
										</div>     
										
						            	<ul>
										<c:forEach var="option" items="${setCoolist }">
							    		 	<li class="set-li coo-li" style="display: inline-block; width: 100%; height: 50px; text-align: center;">
							    				<div class="option-wrapper" style="width: 100%; height: 100%; text-align: center; margin: 0 auto;">
											    	<div class="menu-name" style="box-sizing: border-box; width: 100%; text-align: center;">
												    	<strong class="tit" style="line-height: 50px;">${option.pname }</strong>
											    	</div>
							    				</div>	<!--.option-wrapper End  -->	
							    			</li>
					    				</c:forEach>
					    				</ul>
				    				</div>
			    				</div>
				            </div>
			            </div> <!--.step9 End  -->
		         	</form>
		         </div> <!-- .modal-body End -->
		         
		         <div class = "modal-footer">
		            <button id = 'modalPrevBtn' type = "button" class = "btn btn-warning">Prev</button>
		            <button id = 'modalNextBtn' type = "button" class = "btn-1 btn btn-info">Next</button>
		            <button id = 'modalOrderBtn' type = "button" class = "btn btn-success">Order</button>
		            <button id = 'modalCloseBtn' type = "button" class = "btn btn-default">Cancel</button>
		         </div>
		         
		      </div> <!-- .modal-content End -->
		   </div> <!-- modal-dialog End -->
		</div> <!-- .modal End -->		