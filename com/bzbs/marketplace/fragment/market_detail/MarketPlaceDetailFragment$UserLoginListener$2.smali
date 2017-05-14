.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;
.super Ljava/lang/Object;
.source "MarketPlaceDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 742
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_3d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 748
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_2a

    .line 749
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->l()V

    .line 751
    :cond_2a
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;->a:Ljava/lang/String;

    const-string/jumbo v1, "market_redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 752
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->onSubmit(Landroid/view/View;)V

    .line 755
    :cond_3d
    return-void
.end method
