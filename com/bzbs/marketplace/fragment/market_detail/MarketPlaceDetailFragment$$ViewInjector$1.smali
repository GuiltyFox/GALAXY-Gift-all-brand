.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MarketPlaceDetailFragment$$ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

.field final synthetic b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V
    .registers 3

    .prologue
    .line 41
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$1;->b:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector;

    iput-object p2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$$ViewInjector$1;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-virtual {v0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->onSubmit(Landroid/view/View;)V

    .line 46
    return-void
.end method
