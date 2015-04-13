struct CalculatorWorld : World {
    
    int result;
    
}

struct BeforeAll : Before {
  
    void visit() {
        
        setWorld(std::make_shared<CalculatorWorld>());
        
    }  
    
};

struct AStringContaining : Step {
    
    void visit(Value &value) {
        
        world().result = StringCalculator().add(std::to_string(value));
        
    }
    
    CalculatorWorld &world() {
        
        return dynamic_cast<CalculatorWorld &>(world());
        
    }
  
};

struct TheResultIs : Step {
  
    void visit(Value &value) {
    
        world().result.should == value;    
        
    }

    CalculatorWorld &world() {
        
        return dynamic_cast<CalculatorWorld &>(world());
        
    }
  
};
