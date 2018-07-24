<?php

/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

use Drupal\Core\Form\FormStateInterface;

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function hoppinger_drupal_profile_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {
  $form['admin_account']['account']['name']['#default_value'] = 'admin';
  $form['regional_settings']['site_default_country']['#default_value'] = 'NL';
  $form['regional_settings']['date_default_timezone']['#default_value'] = 'Europe/Amsterdam';

  $form['update_notifications']['enable_update_status_module']['#default_value'] = 0;
  $form['update_notifications']['enable_update_status_emails']['#default_value'] = 0;

  $form['#submit'][] = 'hoppinger_drupal_profile_form_install_configure_submit';
}

/**
 * Submission handler for the site configuration.
 */
function hoppinger_drupal_profile_form_install_configure_submit($form, FormStateInterface $form_state) {

}
