.class Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$2;
.super Ljava/lang/Object;
.source "Place2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 894
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->access$1(Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/Place2Activity;->booleanCancelRunnable:Z
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity;->access$5(Lic/buzzebeeslib/activity/Place2Activity;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 895
    iget-object v0, p0, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener$2;->this$1:Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;

    # getter for: Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->this$0:Lic/buzzebeeslib/activity/Place2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;->access$1(Lic/buzzebeeslib/activity/Place2Activity$MyLocationListener;)Lic/buzzebeeslib/activity/Place2Activity;

    move-result-object v0

    iget-object v0, v0, Lic/buzzebeeslib/activity/Place2Activity;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->onRefreshComplete()V

    .line 897
    :cond_17
    return-void
.end method
