.class Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;
.super Ljava/lang/Object;
.source "BaseMarketDetail.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V
    .registers 2

    .prologue
    .line 379
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$1;)V
    .registers 3

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 427
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 382
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->b(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 401
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;

    invoke-static {v0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->c(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$2;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 422
    return-void
.end method
