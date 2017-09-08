.class Lcom/bzbs/marketplace/activity/ReviewActivity$1;
.super Ljava/lang/Object;
.source "ReviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/ReviewActivity;->a(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/activity/ReviewActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/ReviewActivity;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_42

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 92
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->a(Lcom/bzbs/marketplace/activity/ReviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 93
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/activity/ReviewActivity;->b:Lcom/bzbs/bean/Campaign;

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V

    .line 95
    :cond_2c
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/activity/ReviewActivity;->a(Lcom/bzbs/marketplace/activity/ReviewActivity;Z)Z

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bzbs/marketplace/activity/ReviewActivity$1$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/activity/ReviewActivity$1$1;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity$1;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 106
    :goto_41
    return-void

    .line 103
    :cond_42
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v1, v1, Lcom/bzbs/marketplace/activity/ReviewActivity;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$1;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/activity/ReviewActivity;->F:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Review"

    const-string/jumbo v4, "review"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41
.end method
