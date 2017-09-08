.class Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;
.super Ljava/lang/Object;
.source "ReviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->b(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 184
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;->b:Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;

    iput-object p2, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;->b:Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_3e

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 189
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;->b:Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->l()V

    .line 190
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "review"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 191
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;->b:Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;->b:Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;

    iget-object v1, v1, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;->b:Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;

    iget-object v2, v2, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->a:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/activity/ReviewActivity;->b:Lcom/bzbs/bean/Campaign;

    invoke-static {v0, v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V

    .line 196
    :cond_3e
    :goto_3e
    return-void

    .line 192
    :cond_3f
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "send_review"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_3e
.end method
