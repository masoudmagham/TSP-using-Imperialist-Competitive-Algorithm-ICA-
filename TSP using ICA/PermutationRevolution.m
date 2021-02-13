function xnew=PermutationRevolution(xold)

    [~, tourold]=sort(xold);
    
    q=randi([1 3]);
    
    switch q
        case 1
            % Swap
            tournew=DoSwap(tourold);
            
        case 2
            % Reversion
            tournew=DoReversion(tourold);
            
        case 3
            % Insertion
            tournew=DoInsertion(tourold);
            
    end
    
    xnew=zeros(size(xold));
    
    xnew(tournew)=xold(tourold);

end

function tournew=DoSwap(tourold)

    n=numel(tourold);
    
    ii=randsample(n,2);
    
    i1=ii(1);
    i2=ii(2);
    
    tournew=tourold;
    tournew([i1 i2])=tourold([i2 i1]);
    
end

function tournew=DoReversion(tourold)

    n=numel(tourold);
    
    ii=randsample(n,2);
    
    i1=min(ii(1),ii(2));
    i2=max(ii(1),ii(2));
    
    tournew=tourold;
    tournew(i1:i2)=tourold(i2:-1:i1);
    
end

function tournew=DoInsertion(tourold)

    n=numel(tourold);
    
    ii=randsample(n,2);
    
    i1=ii(1);
    i2=ii(2);
    
    if i1<i2
        tournew=[tourold(1:i1-1) tourold(i1+1:i2) tourold(i1) tourold(i2+1:end)];
    else
        tournew=[tourold(1:i2) tourold(i1) tourold(i2+1:i1-1) tourold(i1+1:end)];
    end
    
end
