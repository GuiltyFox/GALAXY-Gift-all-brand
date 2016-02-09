.class Lic/buzzebeeslib/activity/Place2Activity$9;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity;->getLocationByGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/Place2Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$9;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$9;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$5(Lic/buzzebeeslib/activity/Place2Activity;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 660
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$9;->this$0:Lic/buzzebeeslib/activity/Place2Activity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 662
    :cond_f
    return-void
.end method
