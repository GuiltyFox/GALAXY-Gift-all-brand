.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 822
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 825
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_3c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 828
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_2a

    .line 829
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->l()V

    .line 831
    :cond_2a
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "market_redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 835
    :cond_35
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->d(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    .line 837
    :cond_3c
    return-void
.end method
