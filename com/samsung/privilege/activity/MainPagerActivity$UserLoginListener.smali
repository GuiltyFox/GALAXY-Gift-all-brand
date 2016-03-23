.class Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserLoginListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p2, "x1"    # Lcom/samsung/privilege/activity/MainPagerActivity$1;

    .prologue
    .line 1244
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-void
.end method


# virtual methods
.method public onLoginDeviceSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$900(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1281
    return-void
.end method

.method public onLoginFacebookSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$900(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1262
    return-void
.end method
