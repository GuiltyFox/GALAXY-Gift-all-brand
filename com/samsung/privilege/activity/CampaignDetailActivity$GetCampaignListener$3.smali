.class Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

.field private final synthetic val$response_code:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;I)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;->val$response_code:I

    .line 3719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3721
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$30(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3723
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->gNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->gNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_Auto:Z

    if-eqz v0, :cond_31

    .line 3724
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;->val$response_code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_31

    .line 3725
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener$3;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeem(Landroid/view/View;)V

    .line 3728
    :cond_31
    return-void
.end method
