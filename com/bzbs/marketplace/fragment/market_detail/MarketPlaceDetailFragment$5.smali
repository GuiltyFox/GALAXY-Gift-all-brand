.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;
.super Ljava/lang/Object;
.source "MarketPlaceDetailFragment.java"

# interfaces
.implements Lcom/bzbs/marketplace/listener/OnShareSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->onShare(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V
    .registers 2

    .prologue
    .line 673
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 676
    const-string/jumbo v0, "share"

    .line 677
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v2, v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    invoke-static {p1, v0, v1, v2}, Lcom/bzbs/lib/survey/util/AnimationPoint;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 678
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->l()V

    .line 679
    return-void
.end method
