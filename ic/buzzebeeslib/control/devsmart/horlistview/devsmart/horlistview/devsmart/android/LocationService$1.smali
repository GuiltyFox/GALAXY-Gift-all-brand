.class Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService$1;
.super Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ILocationService$Stub;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;

    .line 19
    invoke-direct {p0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ILocationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestLocation()Landroid/location/Location;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService$1;->this$0:Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;

    # getter for: Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->mBestLocation:Landroid/location/Location;
    invoke-static {v0}, Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;->access$0(Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/LocationService;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
