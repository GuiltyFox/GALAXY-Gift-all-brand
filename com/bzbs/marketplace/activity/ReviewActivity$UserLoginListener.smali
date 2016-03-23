.class Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "ReviewActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/activity/ReviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserLoginListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/activity/ReviewActivity;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/activity/ReviewActivity;Lcom/bzbs/marketplace/activity/ReviewActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/bzbs/marketplace/activity/ReviewActivity;
    .param p2, "x1"    # Lcom/bzbs/marketplace/activity/ReviewActivity$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity;)V

    return-void
.end method


# virtual methods
.method public onLoginDeviceSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$2;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method

.method public onLoginFacebookSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;->this$0:Lcom/bzbs/marketplace/activity/ReviewActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/activity/ReviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$1;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener$1;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method
