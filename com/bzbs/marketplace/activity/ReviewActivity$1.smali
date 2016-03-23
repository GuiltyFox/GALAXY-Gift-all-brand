.class Lcom/bzbs/marketplace/activity/ReviewActivity$1;
.super Ljava/lang/Object;
.source "ReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/ReviewActivity;->createLayout(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/ReviewActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/marketplace/activity/ReviewActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_42

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 90
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    # getter for: Lcom/bzbs/marketplace/activity/ReviewActivity;->hasClick:Z
    invoke-static {v1}, Lcom/bzbs/marketplace/activity/ReviewActivity;->access$100(Lcom/bzbs/marketplace/activity/ReviewActivity;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 91
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v3, v3, Lcom/bzbs/marketplace/activity/ReviewActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-static {v1, v2, v3}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogReviewGift(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V

    .line 93
    :cond_2c
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    const/4 v2, 0x0

    # setter for: Lcom/bzbs/marketplace/activity/ReviewActivity;->hasClick:Z
    invoke-static {v1, v2}, Lcom/bzbs/marketplace/activity/ReviewActivity;->access$102(Lcom/bzbs/marketplace/activity/ReviewActivity;Z)Z

    .line 94
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/bzbs/marketplace/activity/ReviewActivity$1$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/activity/ReviewActivity$1$1;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity$1;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    :goto_41
    return-void

    .line 101
    :cond_42
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/activity/ReviewActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v3, v3, Lcom/bzbs/marketplace/activity/ReviewActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v4, "BZB Campaign Review"

    const-string/jumbo v5, "review"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method
