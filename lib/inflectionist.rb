#Copyright (c) 2009 Er Abhishek Parolkar, released under the MIT license
module ParolkarInnovationLab
  module Inflectionist
    
    def past_tensed(word)
          result = word.to_s.dup

          if word.empty? || inflections.uncountables.include?(result.downcase)
            result
          else
            inflections.past_tenses.each { |(rule, replacement)| break if result.gsub!(rule, replacement) }
            result
          end
    end
  end
end



 ActiveSupport::Inflector::Inflections.instance.instance_eval do # Keep in mind Inflections is a singleton, so what makes more sense is to inject our methods at run time to the instance
  
   def past_tenses # a attr_reader
     @past_tenses 
   end   
   def past_tense(rule, replacement)
     @past_tenses = [] if !@past_tenses
     @uncountables.delete(rule) if rule.is_a?(String)
     @uncountables.delete(replacement)
     @past_tenses.insert(0, [rule, replacement]) 
   end
   
 end


 




