.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->networkAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 502
    const/4 v0, 0x0

    .line 503
    .local v0, "need_to_refresh":Z
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v3, 0x7f1000c6

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 504
    .local v1, "scrollRoot":Landroid/widget/ScrollView;
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_15

    .line 505
    const/4 v0, 0x1

    .line 508
    :cond_15
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    .line 509
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$600(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$700(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 514
    .end local v1    # "scrollRoot":Landroid/widget/ScrollView;
    :cond_2b
    :goto_2b
    return-void

    .line 511
    :catch_2c
    move-exception v2

    goto :goto_2b
.end method
