{*
*
*  @author     eWAY www.eway.com.au
*  @copyright  2014, Web Active Corporation Pty Ltd
*  @license    http://opensource.org/licenses/MIT MIT
*}
<div class="eway-wrapper bootstrap">
	<div class="eway-header">
		<img src="{$module_dir|escape:'htmlall'}img/eway.gif" alt="eWAY" boder="0" />
	</div>
	<p class="eway-intro">
		Payments made easy!
	</p>

	<div class="eway-content">
		<p><b>{l s='This module allows you to accept payments by eWAY.' mod='ewayrapid'}</b></p>
		<p>{l s='Sign up to eWAY to accept payments quickly and easily' mod='ewayrapid'}!</p>
		<ul>
			<li>{l s='Australia' mod='ewayrapid'}: <a href='https://www.eway.com.au' target='_blank'>https://www.eway.com.au/</a></li>
			<li>{l s='United Kingdom' mod='ewayrapid'}: <a href='https://www.eway.co.uk/' target='_blank'>https://www.eway.co.uk/</a></li>
			<li>{l s='New Zealand' mod='ewayrapid'}: <a href='https://www.eway.co.nz/' target='_blank'>https://www.eway.co.nz/</a></li>
		</ul>
	</div>

	{if isset($eWAY_save_success)}
	<div class="conf confirm alert alert-success">
		{l s='Settings updated' mod='ewayrapid'}
	</div>
	{/if}
	{if isset($eWAY_save_fail)}
	<div class="alert error alert-danger">
		<ul>
		{foreach from=$eWAY_errors item=err}
		<li>{$err|escape:'htmlall'}</li>
		{/foreach}
		</ul>
	</div>
	{/if}

	<form method="post" action="{$smarty.server.REQUEST_URI|escape:'htmlall'}" id="eway_configuration">
		<fieldset>
			<legend><img src="../img/admin/contact.gif" />{l s='Settings' mod='ewayrapid'}</legend>

			<label for="sandbox">{l s='API Sandbox' mod='ewayrapid'}</label>
			<div class="margin-form">
				<input type="radio" name="sandbox" value="1" {if $sandbox} checked="checked"{/if} /> {l s='Yes' mod='ewayrapid'}
				<input type="radio" name="sandbox" value="0" {if ! $sandbox} checked="checked"{/if} /> {l s='No' mod='ewayrapid'}
			</div>

			<label for="username">{l s='API Key' mod='ewayrapid'}</label>
			<div class="margin-form">
				<input type="text" size="50" name="username" id="username" value="{$username|escape:'quotes'}" />
			</div>

			<label for="password">{l s='API Password' mod='ewayrapid'}</label>
			<div class="margin-form">
				<input type="password" size="50" name="password" id="password" value="{$password|escape:'quotes'}" />
				<span class="description"><a href='https://eway.zendesk.com/entries/22370567-How-to-generate-your-Live-Rapid-3-0-API-Key-and-Password' target='_blank'>{l s='Click here for instructions to find your eWAY API Key & Password' mod='ewayrapid'}</a></span>
			</div>

			<label for="paymenttype">{l s='Payment Types' mod='ewayrapid'}</label>
			<div class="margin-form">
                <input type='checkbox' name='paymenttype[]' value='visa' {if in_array('visa', $paymenttype)} checked='checked'{/if} /> Visa<br>
				<input type='checkbox' name='paymenttype[]' value='mastercard' {if in_array('mastercard', $paymenttype)} checked='checked'{/if} /> MasterCard<br>
				<input type='checkbox' name='paymenttype[]' value='amex' {if in_array('amex', $paymenttype)} checked='checked'{/if} /> Amex<br>
				<input type='checkbox' name='paymenttype[]' value='jcb' {if in_array('jcb', $paymenttype)} checked='checked'{/if} /> JCB<br>
				<input type='checkbox' name='paymenttype[]' value='diners' {if in_array('diners', $paymenttype)} checked='checked'{/if} /> Diners Club<br>
				<input type='checkbox' name='paymenttype[]' value='paypal' {if in_array('paypal', $paymenttype)} checked='checked'{/if} /> PayPal<br>
				<input type='checkbox' name='paymenttype[]' value='masterpass' {if in_array('masterpass', $paymenttype)} checked='checked'{/if} /> MasterPass<br>
				<!-- <input type='checkbox' name='paymenttype[]' value='vme' {if in_array('vme', $paymenttype)} checked='checked'{/if}/> V.me By Visa -->
            </div>

			<br />
			<center>
				<input type="submit" name="submitRapideWAY" value="{l s='Update settings' mod='ewayrapid'}" class="button" />
			</center>
		</fieldset>
	</form>
</div>
