.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2

    .prologue
    .line 675
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6

    .prologue
    .line 677
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->d:D

    .line 678
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;->a:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->e:D

    .line 679
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 688
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 685
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 682
    return-void
.end method
