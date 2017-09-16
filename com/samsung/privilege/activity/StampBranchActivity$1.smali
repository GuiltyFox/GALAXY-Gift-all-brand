.class Lcom/samsung/privilege/activity/StampBranchActivity$1;
.super Lcom/samsung/privilege/util/AddOnPermissions;
.source "StampBranchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampBranchActivity;->a(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampBranchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampBranchActivity;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/AddOnPermissions;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 8

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/samsung/privilege/util/AddOnPermissions;->a(Z)V

    .line 129
    if-eqz p1, :cond_7c

    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 132
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7b

    .line 135
    :cond_1b
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->b:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Lcom/samsung/privilege/activity/StampBranchActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->a(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_7b

    .line 139
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->b(Lcom/samsung/privilege/activity/StampBranchActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->c(Lcom/samsung/privilege/activity/StampBranchActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;I)V

    .line 152
    :cond_7b
    :goto_7b
    return-void

    .line 150
    :cond_7c
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$1;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    const v2, 0x7f0900e5

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7b
.end method
