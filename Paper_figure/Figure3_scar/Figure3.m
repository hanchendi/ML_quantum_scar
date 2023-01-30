clear
clc


L=[102 178 255;
    153 204 255;
    204 229 255;
255 229 204;
255 204 153;
255 178 102;
255 153 51
255 128 0]./255;

interval=[30 15 5 15 30 30 50];
mycolor=[];
for i=1:7
    temp=[];
    for j=1:3
        temp(:,j)=linspace(L(i,j),L(i+1,j),interval(i));
    end
    mycolor=[mycolor;temp];
end

%%

subplot('Position',[0.15 0.89 0.13 0.11]);
load('psi_0.5_4022.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.29 0.89 0.13 0.11]);
load('psi_0.5_4029.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.43 0.89 0.13 0.11]);
load('psi_0.5_4031.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.57 0.89 0.13 0.11]);
load('psi_0.5_4054.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.71 0.89 0.13 0.11]);
load('psi_0.5_4059.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.85 0.89 0.13 0.11]);
load('psi_0.5_4083.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

%%
subplot('Position',[0.15 0.58 0.8 0.3]);
load('probability_sweep_050.mat')

index_begin=4001;
index_end=4100;
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
        h1=semilogy(i+index_begin-1,max(A(i,:)),'o','markersize',9,'MarkerFaceColor',[204 153 255]/255,'MarkerEdgeColor',[153 51 255]/255);hold on
    elseif index==2
        h2=semilogy(i+index_begin-1,max(A(i,:)),'V','markersize',10,'MarkerFaceColor',[153 153 255]/255,'MarkerEdgeColor',[51 51 255]/255);hold on
    elseif index==3
        h3=semilogy(i+index_begin-1,max(A(i,:)),'s','markersize',12,'MarkerFaceColor',[153 204 255]/255,'MarkerEdgeColor',[51 153 255]/255);hold on
    elseif index==4
        h4=semilogy(i+index_begin-1,max(A(i,:)),'s','markersize',12,'MarkerFaceColor',[152 223 138]/255,'MarkerEdgeColor',[44 160 44]/255);hold on
    elseif index==5
        h5=semilogy(i+index_begin-1,max(A(i,:)),'p','markersize',12,'MarkerFaceColor',[255 204 153]/255,'MarkerEdgeColor',[255 153 51]/255);hold on
    elseif index==6
        h6=semilogy(i+index_begin-1,max(A(i,:)),'p','markersize',12,'MarkerFaceColor',[255 153 153]/255,'MarkerEdgeColor',[255 51 51]/255);hold on
    end
end
plot([index_begin-1 index_end],[5*10^(-3) 5*10^(-3)],'k--');
h=legend([h1 h2 h3 h4 h5 h6],'II','III','IV-1','IV-2','V-1','V-2');
axis([4000 4100 10^(-7) 1])
text(-0.18,1,'(a)','Units', 'Normalized','fontsize',17)
set(h,'interpreter','latex','location','southwest')
set(gca,'fontsize',14)
xlabel('$n$','interpreter','latex')
ylabel('$\xi$','interpreter','latex')

%%
subplot('Position',[0.15 0.39 0.13 0.11]);
load('psi_0.5_14030.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.29 0.39 0.13 0.11]);
load('psi_0.5_14038.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.43 0.39 0.13 0.11]);
load('psi_0.5_14046.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.57 0.39 0.13 0.11]);
load('psi_0.5_14062.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.71 0.39 0.13 0.11]);
load('psi_0.5_14091.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

subplot('Position',[0.85 0.39 0.13 0.11]);
load('psi_0.5_14094.mat')
psi1(psi1==psi1(1,1))=NaN;
psi2(psi2==psi2(1,1))=NaN;
psi=abs(psi1).^2+abs(psi2).^2;
pcolor(psi);shading flat;
colormap(mycolor);
view([90 -90])
axis off

%%
subplot('Position',[0.15 0.08 0.8 0.3]);
load('probability_sweep_050.mat')

index_begin=14001;
index_end=14100;
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
        h1=semilogy(i+index_begin-1,max(A(i,:)),'o','markersize',9,'MarkerFaceColor',[204 153 255]/255,'MarkerEdgeColor',[153 51 255]/255);hold on
    elseif index==2
        h2=semilogy(i+index_begin-1,max(A(i,:)),'V','markersize',10,'MarkerFaceColor',[153 153 255]/255,'MarkerEdgeColor',[51 51 255]/255);hold on
    elseif index==3
        h3=semilogy(i+index_begin-1,max(A(i,:)),'s','markersize',12,'MarkerFaceColor',[153 204 255]/255,'MarkerEdgeColor',[51 153 255]/255);hold on
    elseif index==4
        h4=semilogy(i+index_begin-1,max(A(i,:)),'s','markersize',12,'MarkerFaceColor',[152 223 138]/255,'MarkerEdgeColor',[44 160 44]/255);hold on
    elseif index==5
        h5=semilogy(i+index_begin-1,max(A(i,:)),'p','markersize',12,'MarkerFaceColor',[255 204 153]/255,'MarkerEdgeColor',[255 153 51]/255);hold on
    elseif index==6
        h6=semilogy(i+index_begin-1,max(A(i,:)),'p','markersize',12,'MarkerFaceColor',[255 153 153]/255,'MarkerEdgeColor',[255 51 51]/255);hold on
    end
end
plot([index_begin-1 index_end],[5*10^(-3) 5*10^(-3)],'k--');
axis([14000 14100 10^(-7) 1])
h=legend([h1 h2 h3 h4 h5 h6],'II','III','IV-1','IV-2','V-1','V-2');
set(h,'interpreter','latex','location','southwest')
set(gca,'fontsize',14)
text(-0.18,1,'(b)','Units', 'Normalized','fontsize',17)
xlabel('$n$','interpreter','latex')
ylabel('$\xi$','interpreter','latex')

annotation('textarrow',[0.1 0.5],[0.1 0.5],'color',[0 0 0]./255,'HeadStyle','none','linestyle','--');
set(gcf,'position',[100 100 500 700])