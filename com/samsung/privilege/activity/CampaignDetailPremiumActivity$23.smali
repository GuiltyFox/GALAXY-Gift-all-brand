.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$23;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    .line 2723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2725
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const v2, 0x7f0c00e6

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$39(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/widget/ProgressBar;)V

    .line 2726
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$23;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$28(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2727
    return-void
.end method
