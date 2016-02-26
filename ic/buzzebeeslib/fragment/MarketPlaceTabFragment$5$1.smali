.class Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5$1;
.super Ljava/lang/Object;
.source "MarketPlaceTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$5;)Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    move-result-object v1

    # invokes: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gotoAllListView()V
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->access$9(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 327
    :goto_9
    return-void

    .line 324
    :catch_a
    move-exception v0

    .line 325
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

    goto :goto_9
.end method
