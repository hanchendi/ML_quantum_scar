clear
clc

subplot('Position',[0.13 0.59 0.35 0.35]);
load('data_scar_2-2.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'o','markersize',9,'MarkerFaceColor',[153 153 255]/255,'MarkerEdgeColor',[51 51 255]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('$n$','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
set(gca,'fontsize',14)
axis([0 M -0.1 1.1])
text(-0.28,1,'(a)','Units', 'Normalized','fontsize',17)

subplot('Position',[0.62 0.59 0.35 0.35]);

load('data_scar_2-3.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'o','markersize',9,'MarkerFaceColor',[153 204 255]/255,'MarkerEdgeColor',[51 153 255]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('$n$','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
set(gca,'fontsize',14)
axis([0 M -0.1 1.1])
text(-0.28,1,'(b)','Units', 'Normalized','fontsize',17)

subplot('Position',[0.13 0.1 0.35 0.35]);

load('data_scar_3-1.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'V','markersize',10,'MarkerFaceColor',[0 255 128]/255,'MarkerEdgeColor',[0 153 76]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('$n$','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
set(gca,'fontsize',14)
axis([0 M -0.1 1.1])
text(-0.28,1,'(c)','Units', 'Normalized','fontsize',17)

subplot('Position',[0.62 0.1 0.35 0.35]);

load('data_scar_4-2.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'s','markersize',12,'MarkerFaceColor',[255 204 153]/255,'MarkerEdgeColor',[255 153 51]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0.5 0.5],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('$n$','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
set(gca,'fontsize',14)
axis([0 M -0.1 1.1])
text(-0.28,1,'(d)','Units', 'Normalized','fontsize',17)

set(gcf,'position',[100 100 500 500])