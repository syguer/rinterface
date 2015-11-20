class Object
  def self.implements(interface)
    interface.abstract_methods.each do |method|
      unless self.instance_methods.include? method
        fail NotImplementedError, "class #{self.name} must implement #{method}"
      end
    end
  end
end
