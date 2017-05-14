.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$ProfileListener;
.super Ljava/lang/Object;
.source "MarketPlaceDetailFragment.java"

# interfaces
.implements Lcom/bzbs/event/ProfileEvents$ProfileListener;


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$ProfileListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$1;)V
    .registers 3

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$ProfileListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$ProfileListener;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->doSubmit(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method
