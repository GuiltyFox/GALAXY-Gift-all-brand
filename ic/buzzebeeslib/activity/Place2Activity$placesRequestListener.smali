.class Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "Place2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/Place2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "placesRequestListener"
.end annotation


# instance fields
.field private gCacheName:Ljava/lang/String;

.field private gIsAll:Z

.field private gLoadMore:Z

.field final synthetic this$0:Lic/buzzebeeslib/activity/Place2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;ZZLjava/lang/String;)V
    .registers 6
    .param p2, "pLoadMore"    # Z
    .param p3, "pIsAll"    # Z
    .param p4, "pCacheName"    # Ljava/lang/String;

    .prologue
    .line 804
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->gCacheName:Ljava/lang/String;

    .line 805
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->gLoadMore:Z

    .line 806
    iput-boolean p3, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->gIsAll:Z

    .line 807
    iput-object p4, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->gCacheName:Ljava/lang/String;

    .line 808
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)Z
    .registers 2

    .prologue
    .line 800
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)Lic/buzzebeeslib/activity/Place2Activity;
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 812
    const-string v1, "buzzebees.placeslist.fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(placesRequestListener|onComplete)response={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_58

    .line 815
    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lic/buzzebeeslib/activity/Place2Activity;->access$0(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;

    invoke-direct {v2, p0, p2}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$1;-><init>(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 832
    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lic/buzzebeeslib/activity/Place2Activity;->access$0(Lic/buzzebeeslib/activity/Place2Activity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$2;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$2;-><init>(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 840
    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v1, v1, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    new-instance v3, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$3;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener$3;-><init>(Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;)V

    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/Place2Activity;->access$6(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/Runnable;)V

    .line 848
    const-wide/16 v4, 0x3e8

    .line 840
    invoke-virtual {v1, v3, v4, v5}, Lic/buzzebeeslib/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 850
    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/Place2Activity;->access$7(Lic/buzzebeeslib/activity/Place2Activity;Z)V

    .line 851
    :goto_57
    return-void

    .line 827
    :cond_58
    const-string v0, "Error: nearby places could not be fetched"

    .line 828
    .local v0, "err_message":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/Place2Activity$placesRequestListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # invokes: Lic/buzzebeeslib/activity/Place2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$2(Lic/buzzebeeslib/activity/Place2Activity;Ljava/lang/String;)V

    goto :goto_57
.end method
