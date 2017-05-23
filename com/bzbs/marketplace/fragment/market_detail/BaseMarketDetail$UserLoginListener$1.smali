.class Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$1;
.super Ljava/lang/Object;
.source "BaseMarketDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 382
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 387
    if-eqz v0, :cond_35

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 388
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_2a

    .line 389
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->l()V

    .line 391
    :cond_2a
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "market_like"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 395
    :cond_35
    return-void
.end method
