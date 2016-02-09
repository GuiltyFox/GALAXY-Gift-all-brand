.class public interface abstract Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ILocationService;
.super Ljava/lang/Object;
.source "ILocationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/ILocationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getBestLocation()Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
