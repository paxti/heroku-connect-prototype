class Item < ActiveRecord::Base
    self.table_name = 'salesforce.i_m__item__c'
    has_one :category, :primary_key => "sfid", :foreign_key => "i_m__to_category__c"
end