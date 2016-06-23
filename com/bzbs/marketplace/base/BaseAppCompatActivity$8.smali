.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 663
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->lat:D

    .line 664
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->lng:D

    .line 665
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 674
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 671
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 668
    return-void
.end method
