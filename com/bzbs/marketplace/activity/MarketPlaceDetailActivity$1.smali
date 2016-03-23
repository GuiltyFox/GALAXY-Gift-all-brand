.class Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity$1;->this$0:Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity$1;->this$0:Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    # getter for: Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->isAds:Z
    invoke-static {v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->access$000(Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 70
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity$1;->this$0:Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->callCountCart(Z)V

    .line 71
    :cond_e
    return-void
.end method
