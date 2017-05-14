.class Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;
.super Lcom/koushikdutta/ion/ContextReference$NormalContextReference;
.source "ContextReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/ion/ContextReference$NormalContextReference",
        "<",
        "Landroid/app/Service;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/koushikdutta/ion/ContextReference$NormalContextReference;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static a(Landroid/app/Service;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 48
    if-nez p0, :cond_6

    .line 49
    const-string/jumbo v0, "Service reference null"

    .line 59
    :goto_5
    return-object v0

    .line 50
    :cond_6
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 51
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 52
    if-nez v0, :cond_1c

    .line 53
    const-string/jumbo v0, "Could not retrieve services from service manager"

    goto :goto_5

    .line 54
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 56
    const/4 v0, 0x0

    goto :goto_5

    .line 59
    :cond_42
    const-string/jumbo v0, "Service stopped"

    goto :goto_5
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-static {v0}, Lcom/koushikdutta/ion/ContextReference$ServiceContextReference;->a(Landroid/app/Service;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
