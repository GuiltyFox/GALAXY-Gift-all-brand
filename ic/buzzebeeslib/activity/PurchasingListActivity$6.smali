.class Lic/buzzebeeslib/activity/PurchasingListActivity$6;
.super Ljava/lang/Thread;
.source "PurchasingListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PurchasingListActivity;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PurchasingListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    .line 1243
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/PurchasingListActivity$6;)Lic/buzzebeeslib/activity/PurchasingListActivity;
    .registers 2

    .prologue
    .line 1243
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 1246
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1247
    iget-object v6, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const-string v1, ""

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v3, Lic/buzzebeeslib/R$string;->fetching_location:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Lic/buzzebeeslib/activity/PurchasingListActivity$6$1;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$6$1;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$6;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v6, v0}, Lic/buzzebeeslib/activity/PurchasingListActivity;->access$45(Lic/buzzebeeslib/activity/PurchasingListActivity;Landroid/app/ProgressDialog;)V

    .line 1254
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/PurchasingListActivity;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_33

    .line 1255
    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const-string v3, "location"

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v2, Lic/buzzebeeslib/activity/PurchasingListActivity;->lm:Landroid/location/LocationManager;

    .line 1258
    :cond_33
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/PurchasingListActivity;->locationListener:Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;

    if-nez v0, :cond_45

    .line 1259
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    new-instance v2, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;

    iget-object v3, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity;Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;)V

    iput-object v2, v0, Lic/buzzebeeslib/activity/PurchasingListActivity;->locationListener:Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;

    .line 1262
    :cond_45
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 1263
    .local v7, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1264
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/PurchasingListActivity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, v7, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 1265
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_78

    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/PurchasingListActivity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 1266
    iget-object v0, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v0, v0, Lic/buzzebeeslib/activity/PurchasingListActivity;->lm:Landroid/location/LocationManager;

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    iget-object v5, v5, Lic/buzzebeeslib/activity/PurchasingListActivity;->locationListener:Lic/buzzebeeslib/activity/PurchasingListActivity$MyLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1284
    :goto_74
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1285
    return-void

    .line 1271
    :cond_78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lic/buzzebeeslib/R$string;->enable_gps_title:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lic/buzzebeeslib/activity/PurchasingListActivity$6;->this$0:Lic/buzzebeeslib/activity/PurchasingListActivity;

    sget v3, Lic/buzzebeeslib/R$string;->enable_gps:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/PurchasingListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lic/buzzebeeslib/R$string;->gps_settings:I

    new-instance v3, Lic/buzzebeeslib/activity/PurchasingListActivity$6$2;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$6$2;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$6;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1276
    sget v2, Lic/buzzebeeslib/R$string;->cancel:I

    new-instance v3, Lic/buzzebeeslib/activity/PurchasingListActivity$6$3;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/PurchasingListActivity$6$3;-><init>(Lic/buzzebeeslib/activity/PurchasingListActivity$6;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_74
.end method
