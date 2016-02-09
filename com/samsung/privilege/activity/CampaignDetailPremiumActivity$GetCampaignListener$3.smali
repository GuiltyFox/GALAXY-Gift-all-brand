.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;

.field private final synthetic val$response_code:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;->val$response_code:I

    .line 2798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$28(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2802
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->gNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->gNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    if-eqz v0, :cond_31

    .line 2803
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;->val$response_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_31

    .line 2804
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->doRedeem(Landroid/view/View;)V

    .line 2807
    :cond_31
    return-void
.end method
