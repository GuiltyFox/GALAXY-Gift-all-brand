.class Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1045
    :try_start_0
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;)Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener$1;->this$1:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
    invoke-static {v2}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->access$1(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;)Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    move-result-object v2

    invoke-virtual {v2}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->setPointUI(J)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1049
    :goto_1b
    return-void

    .line 1046
    :catch_1c
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "buzzebees.markets"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "POINT(Exception)="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
