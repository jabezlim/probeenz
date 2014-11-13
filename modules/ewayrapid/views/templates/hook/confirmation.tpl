{*
*
*  @author     eWAY www.eway.com.au
*  @copyright  2014, Web Active Corporation Pty Ltd
*  @license    http://opensource.org/licenses/MIT MIT
*}
<p>{l s='Your order on' mod='ewayrapid'} <span class="bold">{$shop_name|escape:'htmlall'}</span> {l s='is complete.' mod='ewayrapid'}
	<br /><br /><span class="bold">{l s='Your order will be sent as soon as possible.' mod='ewayrapid'}</span>
	<br /><br />{l s='For any questions or for further information, please contact our' mod='ewayrapid'}
	<a href="{$base_dir_ssl|escape:'htmlall'}contact-form.php">{l s='customer support' mod='ewayrapid'}</a>.
</p>
