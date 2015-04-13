struct CalculatorWorld : World {
    
    int result;
    
    void IPassAStringContaining(Value &value) {
        
        result = StringCalculator().add(std::to_string(value));
        
    }
    
}

struct BeforeAll : Before {
  
    void visit() {
        
        setWorld(std::make_shared<CalculatorWorld>());
        
    }  
    
};

struct IPassAStringContaining : Step {
    
    void visit(Value &value);
    
    CalculatorWorld &world() {
        
        return dynamic_cast<CalculatorWorld &>(world());
        
    }
  
};

struct TheResultIs : Step {
  
    void visit(Value &value);

    CalculatorWorld &world() {
        
        return dynamic_cast<CalculatorWorld &>(world());
        
    }
  
};
