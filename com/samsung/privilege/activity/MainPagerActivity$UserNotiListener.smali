.class Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Lcom/bzbs/event/NotiEvents$NotiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserNotiListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p2, "x1"    # Lcom/samsung/privilege/activity/MainPagerActivity$1;

    .prologue
    .line 1389
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-void
.end method


# virtual methods
.method public onNotiCleared()V
    .registers 3

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$900(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1408
    return-void
.end method

.method public onNotiReceived(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$900(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1398
    return-void
.end method
