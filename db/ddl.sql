CREATE TABLE `litle_payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kb_account_id` varchar(255) NOT NULL,
  `kb_payment_method_id` varchar(255) DEFAULT NULL,
  `litle_token` varchar(255) NOT NULL,
  `cc_first_name` varchar(255) DEFAULT NULL,
  `cc_last_name` varchar(255) DEFAULT NULL,
  `cc_type` varchar(255) DEFAULT NULL,
  `cc_exp_month` int(11) DEFAULT NULL,
  `cc_exp_year` int(11) DEFAULT NULL,
  `cc_last_4` int(11) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_litle_payment_methods_on_kb_account_id` (`kb_account_id`),
  KEY `index_litle_payment_methods_on_kb_payment_method_id` (`kb_payment_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `litle_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `litle_response_id` int(11) NOT NULL,
  `api_call` varchar(255) NOT NULL,
  `kb_payment_id` varchar(255) NOT NULL,
  `litle_txn_id` varchar(255) NOT NULL,
  `amount_in_cents` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_litle_transactions_on_kb_payment_id` (`kb_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `litle_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_call` varchar(255) NOT NULL,
  `kb_payment_id` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `authorization` varchar(255) DEFAULT NULL,
  `fraud_review` tinyint(1) DEFAULT NULL,
  `test` tinyint(1) DEFAULT NULL,
  `params_litleonelineresponse_message` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_response` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_version` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_xmlns` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_saleresponse_customer_id` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_saleresponse_id` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_saleresponse_report_group` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_saleresponse_litle_txn_id` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_saleresponse_order_id` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_saleresponse_response` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_saleresponse_response_time` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_saleresponse_message` varchar(255) DEFAULT NULL,
  `params_litleonelineresponse_saleresponse_auth_code` varchar(255) DEFAULT NULL,
  `avs_result_code` varchar(255) DEFAULT NULL,
  `avs_result_message` varchar(255) DEFAULT NULL,
  `avs_result_street_match` varchar(255) DEFAULT NULL,
  `avs_result_postal_match` varchar(255) DEFAULT NULL,
  `cvv_result_code` varchar(255) DEFAULT NULL,
  `cvv_result_message` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
