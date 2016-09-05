.class public Lcom/samsung/privilege/service/GCMStarterService;
.super Landroid/app/Service;
.source "GCMStarterService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 39
    const-string/jumbo v0, "GCMStarterService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "GCM Service stopped"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5

    .prologue
    .line 20
    const-string/jumbo v0, "GCMStarterService"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/samsung/privilege/service/GCMStarterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/GCMUtil;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method
