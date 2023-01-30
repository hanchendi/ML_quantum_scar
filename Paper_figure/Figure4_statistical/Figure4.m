clear
clc

subplot('Position',[0.13 0.73 0.35 0.23]);
load('data_alpha_025_scar1.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'o','markersize',6,'MarkerFaceColor',[204 153 255]/255,'MarkerEdgeColor',[153 51 255]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('Count number','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
xticks([0 100 200])
set(gca,'fontsize',14)
axis([0 M -0.1 1.1])
text(-0.28,1,'(a)','Units', 'Normalized','fontsize',17)

subplot('Position',[0.62 0.73 0.35 0.23]);

load('data_alpha_050_scar1.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'o','markersize',6,'MarkerFaceColor',[204 153 255]/255,'MarkerEdgeColor',[153 51 255]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('Count number','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
set(gca,'fontsize',14)
xticks([0 100 200 300])
axis([0 M -0.1 1.1])
text(-0.28,1,'(b)','Units', 'Normalized','fontsize',17)

subplot('Position',[0.13 0.4 0.35 0.23]);

load('data_alpha_025_scar2.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'V','markersize',8,'MarkerFaceColor',[153 153 255]/255,'MarkerEdgeColor',[51 51 255]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('Count number','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
set(gca,'fontsize',14)
axis([0 M -0.1 1.1])
text(-0.28,1,'(c)','Units', 'Normalized','fontsize',17)

subplot('Position',[0.62 0.4 0.35 0.23]);

load('data_alpha_050_scar2.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'V','markersize',8,'MarkerFaceColor',[153 153 255]/255,'MarkerEdgeColor',[51 51 255]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0.5 0.5],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('Count number','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
set(gca,'fontsize',14)
axis([0 M -0.1 1.1])
text(-0.28,1,'(d)','Units', 'Normalized','fontsize',17)


subplot('Position',[0.13 0.08 0.35 0.23]);
load('data_alpha_025_scar3.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'s','markersize',8,'MarkerFaceColor',[153 204 255]/255,'MarkerEdgeColor',[51 153 255]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0.5 0.5],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('Count number','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
set(gca,'fontsize',14)
axis([0 M -0.1 1.1])
text(-0.28,1,'(e)','Units', 'Normalized','fontsize',17)

subplot('Position',[0.62 0.08 0.35 0.23]);
load('data_alpha_050_scar3.mat')
M=length(kn);
for i=1:M
    temp=abs(kn(i,2)-k0)/delta_k(scar_choose);
    plot(i,temp-floor(temp),'s','markersize',8,'MarkerFaceColor',[153 204 255]/255,'MarkerEdgeColor',[51 153 255]/255);hold on
end
plot([0 M],[1 1],'k--','linewidth',1.5);hold on
plot([0 M],[0 0],'k--','linewidth',1.5);hold on
xlabel('Count number','interpreter','latex')
ylabel('$\eta$','interpreter','latex')
set(gca,'fontsize',14)
axis([0 M -0.1 1.1])
text(-0.28,1,'(f)','Units', 'Normalized','fontsize',17)

set(gcf,'position',[100 100 500 700])