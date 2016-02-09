.class Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3$1;
.super Ljava/lang/Object;
.source "MarketPlaceTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 277
    :try_start_0
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;)Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoDrawListView()V
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->access$6(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V

    .line 279
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$3;)Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->access$4(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "MARKETPLACE_BZBS_TYPE_DRAW"

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 283
    :goto_18
    return-void

    .line 280
    :catch_19
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/lang/Exception;
    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error := "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method
