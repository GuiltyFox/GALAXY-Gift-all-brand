.class Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$1;
.super Ljava/lang/Object;
.source "ReviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 505
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_28

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 511
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "send_review"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 512
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/ReviewFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/ReviewFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/fragment/ReviewFragment;->onClickPost(Landroid/view/View;)V

    .line 515
    :cond_28
    return-void
.end method
