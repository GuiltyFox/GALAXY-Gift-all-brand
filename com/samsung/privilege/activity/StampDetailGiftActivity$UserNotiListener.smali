.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/NotiEvents$NotiListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;)V
    .registers 3

    .prologue
    .line 1206
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 1223
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNotiCleared->"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1209
    invoke-static {}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotiReceived->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->b(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener$1;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1219
    return-void
.end method
