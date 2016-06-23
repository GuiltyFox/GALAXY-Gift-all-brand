.class Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "DashboardActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/DashboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserLoginListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/DashboardActivity;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;->this$0:Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/DashboardActivity;Lcom/samsung/privilege/activity/DashboardActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/privilege/activity/DashboardActivity;
    .param p2, "x1"    # Lcom/samsung/privilege/activity/DashboardActivity$1;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/DashboardActivity;)V

    return-void
.end method


# virtual methods
.method public onAuthenOTPSuccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 108
    return-void
.end method

.method public onLoginDeviceSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;->this$0:Lcom/samsung/privilege/activity/DashboardActivity;

    # getter for: Lcom/samsung/privilege/activity/DashboardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardActivity;->access$200(Lcom/samsung/privilege/activity/DashboardActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener$2;-><init>(Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public onLoginFacebookSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;->this$0:Lcom/samsung/privilege/activity/DashboardActivity;

    # getter for: Lcom/samsung/privilege/activity/DashboardActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/DashboardActivity;->access$200(Lcom/samsung/privilege/activity/DashboardActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener$1;-><init>(Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method
