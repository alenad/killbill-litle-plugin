require 'spec_helper'

describe Killbill::Litle::PaymentPlugin do

  include ::Killbill::Plugin::ActiveMerchant::RSpec

  it 'should start and stop correctly' do
    @plugin.stop_plugin
  end

  # No offsite payments integration

  #xit 'should generate forms correctly' do
  #  kb_account_id = SecureRandom.uuid
  #  kb_tenant_id  = SecureRandom.uuid
  #  context       = @plugin.kb_apis.create_context(kb_tenant_id)
  #  fields        = @plugin.hash_to_properties({
  #                                                 :order_id => '1234',
  #                                                 :amount   => 10
  #                                             })
  #  form          = @plugin.build_form_descriptor kb_account_id, fields, [], context
  #
  #  form.kb_account_id.should == kb_account_id
  #  form.form_method.should == 'POST'
  #  form.form_url.should == 'https://litle.com'
  #
  #  form_fields = @plugin.properties_to_hash(form.form_fields)
  #end

  #xit 'should receive notifications correctly' do
  #  description    = 'description'
  #
  #  kb_tenant_id = SecureRandom.uuid
  #  context      = @plugin.kb_apis.create_context(kb_tenant_id)
  #  properties   = @plugin.hash_to_properties({ :description => description })
  #
  #  notification    = ""
  #  gw_notification = @plugin.process_notification notification, properties, context
  #end
end
