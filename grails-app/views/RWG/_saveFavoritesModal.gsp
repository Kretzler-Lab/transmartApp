		<!-- Save search modal content -->
		<div id="save-modal-content" style="display:none;">
			<h3>Save Faceted Search</h3><br/>
			<div id ="save-modal-content-main">
				Name: <input type="text" id="searchName" size="75" maxlength="100" />
				
				<br/><br/><br/>
				<div id ="save-modal-controls" class="modal-controls">
					<a href="#" onclick="saveSearch(); return false;">Save</a>&nbsp;   
					<a href="#" onclick="jQuery.modal.close();return false;">Cancel</a>   
				</div>
				<br />
				<br />
			</div>
			<div id="modal-status-message" style='display:none'></div>
		</div>