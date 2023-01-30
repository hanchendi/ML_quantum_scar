clear
clc

load('probability_sweep_050.mat')

index_begin=4001;
index_end=4050;
N=index_end-index_begin+1;

A=ones(N,6);
for i=1:10
    for j=index_begin:index_end
        
        p=probability_sweep(i,j,:);
        p=reshape(p,[1,6]);
        norm=0;
        for k=1:6
            norm=norm+exp(p(k));
        end
        p_norm=zeros(1,6);
        for k=1:6
            p_norm(k)=exp(p(k))/norm;
        end
        for k=1:6
            A(j-index_begin+1,k)=A(j-index_begin+1,k)*p_norm(k);
        end
    end
end

for i=1:N
    
    index=find(A(i,:)==max(A(i,:)));
    if index==1
        h1=semilogy(i+index_begin-1,max(A(i,:)),'.','markersize',30,'linewidth',2.5,'color',[153 51 255]/255);hold on
    elseif index==2
        h2=semilogy(i+index_begin-1,max(A(i,:)),'V','markersize',10,'MarkerFaceColor',[51 51 255]/255,'MarkerEdgeColor',[51 51 255]/255);hold on
    elseif index==3
        h3=semilogy(i+index_begin-1,max(A(i,:)),'s','markersize',12,'MarkerFaceColor',[51 153 255]/255,'MarkerEdgeColor',[51 153 255]/255);hold on
    elseif index==4
        h4=semilogy(i+index_begin-1,max(A(i,:)),'s','markersize',12,'MarkerFaceColor',[51 255 51]/255,'MarkerEdgeColor',[51 255 51]/255);hold on
    elseif index==5
        h5=semilogy(i+index_begin-1,max(A(i,:)),'p','markersize',12,'MarkerFaceColor',[255 153 51]/255,'MarkerEdgeColor',[255 153 51]/255);hold on
    elseif index==6
        h6=semilogy(i+index_begin-1,max(A(i,:)),'p','markersize',12,'MarkerFaceColor',[255 51 51]/255,'MarkerEdgeColor',[255 51 51]/255);hold on
    end
end

h=legend([h1 h2 h3 h4 h5 h6],'P2','P3','P4-1','P4-2','P5-1','P5-2');
set(h,'interpreter','latex','location','southwest')
set(gca,'fontsize',15)