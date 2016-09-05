.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$3;
.super Ljava/lang/Object;
.source "MarketPlaceDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->onSubmit(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V
    .registers 2

    .prologue
    .line 401
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$3;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Z)Z

    .line 405
    return-void
.end method
