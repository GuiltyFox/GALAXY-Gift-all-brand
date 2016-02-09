.class Lcom/samsung/privilege/activity/CampaignDetailActivity$33;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$33;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 3580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3582
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$33;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$33;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const v2, 0x7f3c0026

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$56(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/ProgressBar;)V

    .line 3583
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$33;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$30(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3584
    return-void
.end method
