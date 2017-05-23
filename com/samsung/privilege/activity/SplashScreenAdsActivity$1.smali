.class Lcom/samsung/privilege/activity/SplashScreenAdsActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenAdsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$1;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$1;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->a(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    :goto_5
    return-void

    .line 76
    :catch_6
    move-exception v0

    goto :goto_5
.end method
