require 'treetop'
module MylReferenceParser
  class Treetop::Runtime::SyntaxNode
  
    def to_hash()
      hash = {}
      hash[:offset] = self.interval.first
      hash[:text_value] = self.text_value
      hash[:name] = self.class.name.split("::").last
      unless( self.elements.nil? )
        hash[:elements] = self.elements.map {|element| element.to_hash() }
      else
        hash[:elements] = nil
      end
      return hash
    end

    def get_element(nth, params = {})
      demand_elem = get_element_rec(nth, 0, self.elements)
      return demand_elem.elements[params[:child]] if params[:child]
      return demand_elem
    end

    private

    def get_element_rec(nth, level, rec_elements)
      return rec_elements.last if level == nth
      get_element_rec(nth, level+1, rec_elements.last.elements)
    end
  end

end
