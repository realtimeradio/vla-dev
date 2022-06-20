
function uram_dp_64kx64_latency3_core_config(this_block)


  this_block.setTopLevelLanguage('VHDL');

  this_block.setEntityName('uram_dp_64kx64_latency3_core_ip_struct');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  %this_block.tagAsCombinational;

  this_block.addSimulinkInport('addra');
  this_block.addSimulinkInport('dina');
  this_block.addSimulinkInport('wea');
  this_block.addSimulinkInport('addrb');
  this_block.addSimulinkInport('dinb');
  this_block.addSimulinkInport('web');

  this_block.addSimulinkOutport('douta');
  douta_port = this_block.port('douta');
  douta_port.setType('UFix_64_0');

  this_block.addSimulinkOutport('doutb');
  doutb_port = this_block.port('doutb');
  doutb_port.setType('UFix_64_0');

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('dina').width ~= 64);
      this_block.setError('Input dina type for port "dina" must have width=64.');
    end
    if (this_block.port('dinb').width ~= 64);
      this_block.setError('Input dinb type for port "dinb" must have width=64.');
    end

    if (this_block.port('addra').width ~= 16);
      this_block.setError('Input data type for port "addra" must have width=15.');
    end
    if (this_block.port('addrb').width ~= 16);
      this_block.setError('Input data type for port "addrb" must have width=15.');
    end

    if (this_block.port('wea').width ~= 1);
      this_block.setError('Input data type for port "wea" must have width=1.');
    end
    if (this_block.port('web').width ~= 1);
      this_block.setError('Input data type for port "web" must have width=1.');
    end

    %this_block.port('sync').useHDLVector(false);

  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'clk_1','ce_1')
   end  % if(inputRatesKnown)
  % -----------------------------

    % (!) Set the inout port rate to be the same as the first input 
    %     rate. Change the following code if this is untrue.
    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('dsp/uram_dp_64kx64_latency3_core_ip_struct.vhd');

return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

