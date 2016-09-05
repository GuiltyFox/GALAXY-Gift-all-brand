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
    .line 48
    iput-object p1, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$1;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$1;->a:Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->a(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V

    .line 63
    return-void
.end method
