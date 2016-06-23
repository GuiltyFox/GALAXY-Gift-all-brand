.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 666
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 669
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "tokenBzBs":Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 675
    :goto_15
    return-void

    .line 673
    :cond_16
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->callbackManager:Lcom/facebook/CallbackManager;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/facebook/CallbackManager;

    move-result-object v3

    const-string/jumbo v4, "Gift Campaign Details"

    const-string/jumbo v5, "points"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method
