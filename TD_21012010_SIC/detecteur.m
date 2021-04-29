% etat du detecteur
d = zeros(size(x));
%initialisation
m=[x(1) zeros(1, N-1)];
for n=1:L-1
    m(n+1) = (x(n+1)+n*m(n))/(n+1);
end
c= L;
%calcul du seuil de détection
lambda = (prob/100)^(-5);
seuil = lambda*sigma;

%boucle de traitement
for n = L:N-1
    if (abs(x(n+1)-m(n)))>seuil
        d(n)=1;
        c=1;
        m(n+1) = sum(x(n+1)-del:n+1)/(del+1);
    else
        m(n+1) = sum(x(n+1)-c:n+1)/(c+1);
        if c<L
            c=c+1;
        end
    end
end
plot([x' m']).pause