//<?php
/**
 * Emmet for MODX Evolution
 *
 * Set of plugins for HTML and CSS hi-speed coding
 *
 * @category 	plugin
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal	@properties 
 *
 * @internal	@events OnTempFormPrerender
 * @internal	@modx_category Manager and Admin
 *
 */

// global $modx_lang_attribute;

$emmet_path = MODX_SITE_URL . 'assets/plugins/emmet/emmet.min.js';
$inc_emmet = sprintf('<script type="text/javascript" src="%s"></script>',$emmet_path);
$require = "emmet.require('textarea.phptextarea').setup({pretty_break: true,use_tab:true});";
$require = sprintf('<script type="text/javascript">%s</script>',$require);
$modx->event->output("{$inc_emmet}\n{$require}\n");
