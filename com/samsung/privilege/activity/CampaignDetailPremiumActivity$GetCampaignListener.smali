.class public Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignDetailPremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field private gID:I

.field private gNFCTag:Lcom/samsung/privilege/bean/NFCTag;

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 4
    .param p2, "id"    # I
    .param p3, "pNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 2743
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 2744
    iput p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->gID:I

    .line 2745
    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->gNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 2746
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;)Lcom/samsung/privilege/bean/NFCTag;
    .registers 2

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->gNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    .registers 2

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 2750
    const-string v3, "campaign.detail"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response_code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",response_text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    const/4 v1, 0x0

    .line 2753
    .local v1, "isSameWithCache":Z
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCacheCampaign:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$25(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCacheCampaign:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$25(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 2754
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gCacheCampaign:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$25(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2755
    const/4 v1, 0x1

    .line 2759
    :cond_42
    if-nez v1, :cond_a9

    .line 2760
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_b4

    .line 2762
    :try_start_48
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2763
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v0, v2}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 2765
    .local v0, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-static {v3, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$26(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Lcom/samsung/privilege/bean/CampaignView;)V

    .line 2774
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$1;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;)V

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2780
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v3

    if-eqz v3, :cond_a9

    .line 2781
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "campaign_detail-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/helper/LocalFileHelper;->clearCatchInSD(Ljava/lang/String;Landroid/content/Context;)V

    .line 2782
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "campaign_detail-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, p2, v4}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_a9} :catch_bf

    .line 2798
    .end local v0    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :cond_a9
    :goto_a9
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;

    invoke-direct {v4, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;I)V

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2809
    return-void

    .line 2789
    :cond_b4
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$2;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$GetCampaignListener;)V

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a9

    .line 2784
    :catch_bf
    move-exception v3

    goto :goto_a9
.end method
