.class Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Lcom/bzbs/event/NotiEvents$NotiListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 1570
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V
    .registers 3

    .prologue
    .line 1570
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNotiCleared->"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->f(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1591
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotiReceived->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->f(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1580
    return-void
.end method
