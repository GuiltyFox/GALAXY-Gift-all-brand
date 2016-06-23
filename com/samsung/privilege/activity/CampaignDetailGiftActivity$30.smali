.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;
.super Ljava/lang/Thread;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 2998
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const v4, 0x7f090198

    .line 3001
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3003
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30$1;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3012
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->lm:Landroid/location/LocationManager;

    if-nez v0, :cond_29

    .line 3013
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->lm:Landroid/location/LocationManager;

    .line 3016
    :cond_29
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->locationListener:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;

    if-nez v0, :cond_3a

    .line 3017
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    iput-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->locationListener:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;

    .line 3020
    :cond_3a
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 3021
    .local v7, "criteria":Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 3023
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->lm:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v7, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 3024
    .local v1, "provider":Ljava/lang/String;
    if-eqz v1, :cond_96

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 3025
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3026
    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_92

    .line 3028
    :cond_6e
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->lm:Landroid/location/LocationManager;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v5, v5, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->locationListener:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 3029
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30$2;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;)V

    .line 3063
    .local v8, "runnable":Ljava/lang/Runnable;
    new-instance v9, Ljava/lang/Thread;

    const/4 v0, 0x0

    const-string/jumbo v2, "MagentoBackground"

    invoke-direct {v9, v0, v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3064
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 3089
    .end local v8    # "runnable":Ljava/lang/Runnable;
    .end local v9    # "thread":Ljava/lang/Thread;
    :cond_92
    :goto_92
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3090
    return-void

    .line 3075
    :cond_96
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2300(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    .line 3076
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090199

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0901a0

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30$4;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0900f2

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30$3;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;)V

    .line 3081
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 3087
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_92
.end method
