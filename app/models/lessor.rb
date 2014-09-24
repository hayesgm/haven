# Represents a payee (the lessor) of a `Unit`
#
# Attributes
# name:: Name of lessor
# street_address:: Address to remit payment
# secondary_address::
# city::
# region::
# postal_code::
class Lessor < ActiveRecord::Base

  # Assocations
  has_many :units

end
