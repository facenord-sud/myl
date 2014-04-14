module MylReferenceParser
    
    class Block < Treetop::Runtime::SyntaxNode
    end
    
    class Statement < Treetop::Runtime::SyntaxNode
    end
    
    class Assignment < Treetop::Runtime::SyntaxNode
    end
    
    class If < Treetop::Runtime::SyntaxNode
    end
    
    class Unless < Treetop::Runtime::SyntaxNode
    end
    
    class FunctionCall < Treetop::Runtime::SyntaxNode
    end
    
    class NilLiteral < Treetop::Runtime::SyntaxNode
    end
    
    class TrueLiteral < Treetop::Runtime::SyntaxNode
    end
    
    class FalseLiteral < Treetop::Runtime::SyntaxNode
    end
    
    class IntegerLiteral < Treetop::Runtime::SyntaxNode
    end
    
    class FloatLiteral < Treetop::Runtime::SyntaxNode
    end
    
    class StringLiteral < Treetop::Runtime::SyntaxNode
    end
    
    class Identifier < Treetop::Runtime::SyntaxNode
    end
    
    class AssignmentOperator < Treetop::Runtime::SyntaxNode
    end
    
    class EqualityOperator < Treetop::Runtime::SyntaxNode
    end
    
    class InEqualityOperator < Treetop::Runtime::SyntaxNode
    end
    
    class GreaterThanOperator < Treetop::Runtime::SyntaxNode
    end
    
    class LessThanOperator < Treetop::Runtime::SyntaxNode
    end
    
    class AdditionOperator < Treetop::Runtime::SyntaxNode
    end
    
    class SubtractionOperator < Treetop::Runtime::SyntaxNode
    end
    
    class MultiplicationOperator < Treetop::Runtime::SyntaxNode
    end
    
    class DivisionOperator < Treetop::Runtime::SyntaxNode
    end
    
    class Expression < Treetop::Runtime::SyntaxNode
    end

    class ComparativeExpression < Treetop::Runtime::SyntaxNode
    end
    
    class AdditiveExpression < Treetop::Runtime::SyntaxNode
    end
    
    class MultitiveExpression < Treetop::Runtime::SyntaxNode
    end
end
