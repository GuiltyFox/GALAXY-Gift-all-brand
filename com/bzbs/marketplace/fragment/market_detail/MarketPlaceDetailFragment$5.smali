.class Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;
.super Ljava/lang/Object;
.source "MarketPlaceDetailFragment.java"

# interfaces
.implements Lcom/bzbs/event/CallbackOTPDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->doSubmit(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)V
    .registers 2

    .prologue
    .line 557
    iput-object p1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 565
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v0, v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-static {v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;)Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "CampaignDetailGiftActivity"

    const-string/jumbo v4, "redeem"

    iget-object v5, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment$5;->a:Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    iget-object v5, v5, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v5, v5, Lcom/bzbs/bean/CampaignView;->Name:Ljava/lang/String;

    const/4 v8, 0x0

    move v7, v6

    invoke-static/range {v0 .. v8}, Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)V

    .line 566
    return-void
.end method
