# Represents a Unit which can be Leased by a Tenant
#
# Attributes
# lessor_id:: Associated `Lessor`
# address:: Address of unit
# unit_number:: Unit number (e.g. Apt 2)
# city::
# state::
# postal_code::
# total_rent:: Total rent for unit
# payment_day:: Day of month to expect payment
class Unit < ActiveRecord::Base

  # Associations
  belongs_to :lessor
  has_many :leases
  has_many :tenants, through: :leases # TODO: Scope active

  
  
end
