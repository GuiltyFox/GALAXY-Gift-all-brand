.class Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;
.super Ljava/lang/Object;
.source "MarketPlacePagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "need_to_refresh":Z
    :try_start_1
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    # getter for: Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;
    invoke-static {v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->access$100(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 130
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    # getter for: Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->adapter:Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;
    invoke-static {v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->access$100(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bzbs/marketplace/adapter/pager/MarketPlaceMenuAdapterPager;->getCount()I

    move-result v1

    if-nez v1, :cond_16

    .line 131
    const/4 v0, 0x1

    .line 137
    :cond_16
    :goto_16
    if-eqz v0, :cond_1d

    .line 138
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity$2;->this$0:Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    # invokes: Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->loadData()V
    invoke-static {v1}, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;->access$200(Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_20

    .line 143
    :cond_1d
    :goto_1d
    return-void

    .line 134
    :cond_1e
    const/4 v0, 0x1

    goto :goto_16

    .line 140
    :catch_20
    move-exception v1

    goto :goto_1d
.end method
