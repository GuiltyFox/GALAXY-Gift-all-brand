.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialLayout()V
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
    .line 679
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 683
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mCampaignRelatedAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1200(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;->getItem(I)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    .line 689
    .local v0, "campaign":Lcom/bzbs/bean/Campaign;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 690
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 691
    const-string/jumbo v2, "campaign_id"

    iget-object v3, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 692
    const-string/jumbo v2, "campaign_history"

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v4

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->appendCampaignHistory(I)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1300(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 693
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 702
    const-string/jumbo v2, "Gift Campaign Details"

    const-string/jumbo v3, "Click Relate Deal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    .line 706
    .end local v0    # "campaign":Lcom/bzbs/bean/Campaign;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_64
    return-void

    .line 703
    :catch_65
    move-exception v2

    goto :goto_64
.end method
