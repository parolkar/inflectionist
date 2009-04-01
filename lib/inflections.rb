# this is where we define all the inflections for functionalities added by inflectionist plugin

ActiveSupport::Inflector.inflections do |inflect|
  inflect.past_tense /^(.*)$/,'\1ed'
  inflect.past_tense /e$/,'ed'
  inflect.past_tense /t$/,'ted'
  inflect.past_tense /g$/,'gged'
  inflect.past_tense /ight$/,'aught'
  inflect.past_tense "buy",'baught'  
  inflect.past_tense "sell",'sold'
  inflect.past_tense "is",'was'
  inflect.past_tense "are",'were'
  inflect.past_tense "teach",'taught'
  inflect.past_tense "feel",'felt'  

 

  
   
end