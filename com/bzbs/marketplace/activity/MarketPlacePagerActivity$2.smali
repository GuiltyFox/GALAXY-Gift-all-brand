.class Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;
.super Ljava/lang/Object;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 128
    const/4 v1, 0x0

    .line 129
    :try_start_2
    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-static {v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 130
    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-static {v2}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->b(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->b()I

    move-result v2

    if-nez v2, :cond_20

    .line 137
    :cond_16
    :goto_16
    if-eqz v0, :cond_1d

    .line 138
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;->a:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-static {v0}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->c(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 143
    :cond_1d
    :goto_1d
    return-void

    .line 140
    :catch_1e
    move-exception v0

    goto :goto_1d

    :cond_20
    move v0, v1

    goto :goto_16
.end method
