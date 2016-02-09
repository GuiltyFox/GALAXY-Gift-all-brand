.class Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "MarketPlaceTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPointsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;


# direct methods
.method private constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V
    .registers 2

    .prologue
    .line 1030
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;)V
    .registers 3

    .prologue
    .line 1030
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;)Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;
    .registers 2

    .prologue
    .line 1030
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1034
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1036
    :try_start_14
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    invoke-virtual {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/LibUserLogin;->SetPoints(Landroid/content/Context;J)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_38

    .line 1041
    :goto_29
    iget-object v1, p0, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;

    # getter for: Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;->access$0(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener$1;-><init>(Lic/buzzebeeslib/fragment/MarketPlaceTabFragment$GetPointsListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1052
    :cond_37
    return-void

    .line 1037
    :catch_38
    move-exception v0

    .line 1038
    .local v0, "ex":Ljava/lang/Exception;
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

    goto :goto_29
.end method
