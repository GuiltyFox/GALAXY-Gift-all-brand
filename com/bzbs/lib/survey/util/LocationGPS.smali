.class public Lcom/bzbs/lib/survey/util/LocationGPS;
.super Ljava/lang/Object;
.source "LocationGPS.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabledGPS(Landroid/app/Activity;)Z
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 18
    const-string/jumbo v2, "location"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 19
    .local v1, "manager":Landroid/location/LocationManager;
    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 20
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/bzbs/lib/survey/R$string;->alert_dialog_gps_message:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 23
    const-string/jumbo v2, "Yes"

    new-instance v3, Lcom/bzbs/lib/survey/util/LocationGPS$1;

    invoke-direct {v3, p0}, Lcom/bzbs/lib/survey/util/LocationGPS$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    const-string/jumbo v2, "No"

    new-instance v3, Lcom/bzbs/lib/survey/util/LocationGPS$2;

    invoke-direct {v3}, Lcom/bzbs/lib/survey/util/LocationGPS$2;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 41
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3d
    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method
