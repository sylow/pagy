class Pagy

  class VariableError < ArgumentError
    attr_reader :pagy

    def initialize(pagy)
      super
      @pagy = pagy
    end

    def variable
      message =~ /expected :([\w]+)/
      $1.to_sym if $1
    end

    def value = pagy.vars[variable]
  end

  class OverflowError < VariableError; end

end
