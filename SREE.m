classdef SREE < Simulink.IntEnumType
  enumeration
    Standby(0)
    Charging(1)
    Driving(2) 
  end
  methods (Static)
    function retVal = getDefaultValue()
      retVal = SREE.Standby;
    end
  end
end 