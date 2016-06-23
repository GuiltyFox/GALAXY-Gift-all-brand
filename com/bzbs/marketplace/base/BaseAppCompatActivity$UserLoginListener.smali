.class Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "BaseAppCompatActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserLoginListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;


# direct methods
.method private constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V
    .registers 2

    .prologue
    .line 399
    iput-object p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Lcom/bzbs/marketplace/base/BaseAppCompatActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
    .param p2, "x1"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity$1;

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public onAuthenOTPSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    # getter for: Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->access$100(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$3;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$3;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public onLoginDeviceSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    # getter for: Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->access$100(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$2;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$2;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    return-void
.end method

.method public onLoginFacebookSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;->this$0:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    # getter for: Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->access$100(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener$1;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method
