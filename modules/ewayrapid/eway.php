<?php
/**
 * eWAY Prestashop Payment Module - Payment response page
 *
 * @version   3.1.4
 * @author    eWAY www.eway.com.au
 * @copyright (c) 2014, Web Active Corporation Pty Ltd
 * @license   http://opensource.org/licenses/MIT MIT
 */

include(dirname(__FILE__).'/../../config/config.inc.php');
include(dirname(__FILE__).'/../../init.php');
include(dirname(__FILE__).'/ewayrapid.php');

$eway_rapid = new Ewayrapid();
$response = $eway_rapid->getAccessCodeResult();