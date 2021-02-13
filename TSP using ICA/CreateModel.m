function model=CreateModel()

    x=[25 76 91 86 47 66 87 50 22 19 3 67 86 52 10 56 21 65 14 88];
    
    y=[28 1 37 100 57 10 32 56 97 32 27 43 39 89 12 34 79 56 6 21];
    
    n=numel(x);
    
    d=zeros(n,n);
    
    for i=1:n-1
        for j=i+1:n
            
            d(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
            
            d(j,i)=d(i,j);
            
        end
    end
    
    model.n=n;
    model.x=x;
    model.y=y;
    model.d=d;

end