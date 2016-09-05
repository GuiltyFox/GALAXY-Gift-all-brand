.class public Lcom/bzbs/lib/survey/util/LocationGPS;
.super Ljava/lang/Object;
.source "LocationGPS.java"


# direct methods
.method public static a(Landroid/app/Activity;)Z
    .registers 5

    .prologue
    .line 18
    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 19
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 20
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    sget v2, Lcom/bzbs/lib/survey/R$string;->alert_dialog_gps_message:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 23
    const-string/jumbo v2, "Yes"

    new-instance v3, Lcom/bzbs/lib/survey/util/LocationGPS$1;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/util/LocationGPS$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    const-string/jumbo v2, "No"

    new-instance v3, Lcom/bzbs/lib/survey/util/LocationGPS$2;

    invoke-direct {v3}, Lcom/bzbs/lib/survey/util/LocationGPS$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 41
    :cond_3d
    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
