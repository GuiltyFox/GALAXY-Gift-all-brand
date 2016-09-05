.class Lcom/samsung/privilege/activity/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/SplashActivity;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->a:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->a:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/SplashActivity;->a(Lcom/samsung/privilege/activity/SplashActivity;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 41
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->a:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/SplashActivity;->b(Lcom/samsung/privilege/activity/SplashActivity;)V

    .line 43
    :cond_d
    return-void
.end method
