.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;
.super Ljava/lang/Object;
.source "MarketPlaceDetailFragment.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V
    .registers 2

    .prologue
    .line 720
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$1;)V
    .registers 3

    .prologue
    .line 720
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 723
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 742
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 757
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 762
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 767
    return-void
.end method
