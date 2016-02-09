.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$2;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;

    .line 2448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 2451
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gTvLoadingMap:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$17(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2452
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$22(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2453
    return-void
.end method
